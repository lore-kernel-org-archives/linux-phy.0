Return-Path: <SRS0=cVk+=K5=lists.infradead.org=linux-phy-bounces+linux-phy=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.4 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS autolearn=no
	autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 23E87C47096
	for <linux-phy@archiver.kernel.org>; Thu,  3 Jun 2021 05:48:41 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id CA785613E6
	for <linux-phy@archiver.kernel.org>; Thu,  3 Jun 2021 05:48:40 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org CA785613E6
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=kernel.org
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=jPLuQL2VctkMilQG3uRanu1XLhsODb+A36Fz3Rm2LxQ=; b=rI0ldAfoHMxFZM
	vUfnz+k23mKBewA5hnUCDCKIh74gaUt1g7ofGMo1z+mqpn5cNI5wrTCjzbnpU0EB98IQWx7wqC8W0
	VWt74WMOLsPoeyjDbsgavwh6yyT5joEfGx7HIJzvHimw2zBOmoTD1avyMOLttqmDMfONP/9gm2YpY
	+mpZIe2MiCi7BWyrvh7TKbJtGu72aaUm/xlspF3mol6uQtUpmwd5No7T7Z+U5/t/dx4RlWikO1aEi
	fejTF7y8nm/vy+eXjsDD9vQodE3OsvR2PcYNY7dXBCd26tJTC6H2/jStBoujBoV4uTnlER953c+Xf
	hVW7rbmw95ay0YZLgSkg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1logDg-007EJ3-9v; Thu, 03 Jun 2021 05:48:40 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1logDd-007EIT-JO
 for linux-phy@lists.infradead.org; Thu, 03 Jun 2021 05:48:38 +0000
Received: by mail.kernel.org (Postfix) with ESMTPSA id C4CD961369;
 Thu,  3 Jun 2021 05:48:35 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1622699316;
 bh=EX+xKk9EPM9iI3srMZjz+ml116tGL4M4cy2PUJqfhy8=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=OBUiecXnYKbPt0gP3vagyP8VfOxD/n1l0qNGSQuNXB4cNxHHFV6E6csHgF/xDnkr7
 Opc1TDQ6mq3yQffAfK+f33HdDXHWAqog6Tinbz2X++bKXCtlT3dqb+H38uoUtVMZU9
 7FALlSefr49JdlFv1LdJ09Xi3hov7kcNaSIdUQRDGc/ETWC19TbhBcC23S5WZMycJP
 +xaMZjxBS5CCO6EQulBSgZSrc4+0aKt8hbn+knyQR5JHEh1TZ/2pg4NribVw+hF4Gf
 QRkscjS6OOsBtWBHR0lbz0UHFMTnqSvt4IMT0x2P6jmKDgYbAyEhQSwy4dSzGAVzCK
 zAZldWdQc1VFg==
Date: Thu, 3 Jun 2021 11:18:32 +0530
From: Vinod Koul <vkoul@kernel.org>
To: Sergio Paracuellos <sergio.paracuellos@gmail.com>
Cc: lkp@intel.com, ndesaulniers@google.com, linux-phy@lists.infradead.org,
 neil@brown.name, ilya.lipnitskiy@gmail.com
Subject: Re: [PATCH] phy: ralink: phy-mt7621-pci: drop 'of_match_ptr' to fix
 -Wunused-const-variable
Message-ID: <YLhtMBcVk89HKstd@vkoul-mobl>
References: <20210603043219.32646-1-sergio.paracuellos@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20210603043219.32646-1-sergio.paracuellos@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210602_224837_670585_3D6DF476 
X-CRM114-Status: UNSURE (   5.65  )
X-CRM114-Notice: Please train this message.
X-BeenThere: linux-phy@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: Linux Phy Mailing list <linux-phy.lists.infradead.org>
List-Unsubscribe: <https://lists.infradead.org/mailman/options/linux-phy>,
 <mailto:linux-phy-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-phy/>
List-Post: <mailto:linux-phy@lists.infradead.org>
List-Help: <mailto:linux-phy-request@lists.infradead.org?subject=help>
List-Subscribe: <https://lists.infradead.org/mailman/listinfo/linux-phy>,
 <mailto:linux-phy-request@lists.infradead.org?subject=subscribe>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-phy" <linux-phy-bounces@lists.infradead.org>
Errors-To: linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org

On 03-06-21, 06:32, Sergio Paracuellos wrote:
> The of_device_id is included unconditionally by of.h header and used
> in the driver as well. Remove of_match_ptr to fix W=1 compile test
> warning with !CONFIG_OF:

Applied, thanks

-- 
~Vinod

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
