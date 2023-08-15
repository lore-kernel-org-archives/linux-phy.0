Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 3809CC001B0
	for <linux-phy@archiver.kernel.org>; Tue, 15 Aug 2023 16:29:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=3WfqGglIL+vD9Q56y58mFNt9yYWuGbpX3xTJToTBEf0=; b=XxkoL9Lkl4WF0D
	2zmF0iG/hFW2aw1xWl0Y10H4vo3IqkailvYS+M3m3SZd+VQ9NejgIwrcXe4KFSHEQWPxet00+AlZJ
	hX76q3O5KhUGcqB8rFFubAl3ROItmYfuuEBUkV3G6xm+0xwveBM1C3zH0CCabCBsvSiWJeqMybgxw
	XssQbrQPrULmpMxUuV4bgg3OXgcneO84GakA0HOo82D997g8A7JBObpMszFiRltLYDOipl1tJBl3M
	GMvmDlxRRwY4sEhnqZjDSENVWqQeyKhgROtuqvqeESuntrXboH5V2Ae93PPv/vY6cgz16Hzvoy6MB
	d4kzuIBpBVUq6YLUx1AQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qVwvI-001yuo-2j;
	Tue, 15 Aug 2023 16:29:36 +0000
Received: from dfw.source.kernel.org ([2604:1380:4641:c500::1])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qVwvF-001yta-1n;
	Tue, 15 Aug 2023 16:29:34 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits))
	(No client certificate requested)
	by dfw.source.kernel.org (Postfix) with ESMTPS id D66D065D7B;
	Tue, 15 Aug 2023 16:29:32 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id C0AC7C433C7;
	Tue, 15 Aug 2023 16:29:30 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1692116972;
	bh=LKI52qu5YBizA18cb57HmGDQiAUsDp91kpcEQdHzraY=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=pV5EzQcDpmN2hdz2XjMFQMAphqVL2zzdv/qIL8DZYuPbtPTdPMc72F/gi7w86tv8Q
	 jf07zRDlDhkfbwoV21soHOLdzXzVYsSTFiLNXgLkDGTiVQFIIKDb5lD2OpeGZeBdzS
	 r2wfohf0Z7hyWmWVzsPsuYypPWkTbcA43UyrN6D36no99ytFld9qJ6q7OmOVPUe5uT
	 wVmEDC/xKRzg1xOQeGcZdi7E7c/POjRuBm3gWz8K0Z2/HvVumZZjbz9jgolLU5FzOk
	 foLSXuBN6mC7oaZ6Kqw1jpWwPqfcykE+S6Nuu5aFtIOKqbXHbkfHb6Z1foL2JJ8kKu
	 UR3tKD29USwsw==
Date: Tue, 15 Aug 2023 09:32:16 -0700
From: Bjorn Andersson <andersson@kernel.org>
To: Varadarajan Narayanan <quic_varada@quicinc.com>
Cc: agross@kernel.org, konrad.dybcio@linaro.org, vkoul@kernel.org, 
	kishon@kernel.org, robh+dt@kernel.org, krzysztof.kozlowski+dt@linaro.org, 
	conor+dt@kernel.org, catalin.marinas@arm.com, will@kernel.org, p.zabel@pengutronix.de, 
	arnd@arndb.de, geert+renesas@glider.be, nfraprado@collabora.com, 
	rafal@milecki.pl, peng.fan@nxp.com, quic_srichara@quicinc.com, 
	linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Subject: Re: [PATCH v8 2/5] phy: qcom: Introduce M31 USB PHY driver
Message-ID: <jkkamkixp7u2js7lvr3thfb4nbslevbymksvbfudblpci7wr32@jxmjl64y6yl7>
References: <cover.1691999761.git.quic_varada@quicinc.com>
 <c8821bb0124a54cc774a2ff7b9c40df28eb7711e.1691999761.git.quic_varada@quicinc.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <c8821bb0124a54cc774a2ff7b9c40df28eb7711e.1691999761.git.quic_varada@quicinc.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230815_092933_636247_D1AE05BF 
X-CRM114-Status: UNSURE (   8.77  )
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

On Mon, Aug 14, 2023 at 01:36:02PM +0530, Varadarajan Narayanan wrote:
> Add the M31 USB2 phy driver for the USB M31 PHY
> (https://www.m31tech.com) found in Qualcomm IPQ5018, IPQ5332
> SoCs.
> 

Thanks, this looks good to me now.

Reviewed-by: Bjorn Andersson <andersson@kernel.org>

Regards,
Bjorn

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
