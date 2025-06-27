Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id D693CC83000
	for <linux-phy@archiver.kernel.org>; Fri, 27 Jun 2025 00:55:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Date:Message-Id:Subject:
	References:In-Reply-To:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Esm5tuyrDB5tYKxpoN04g/awx6y2cKv+twrQGMT+YlA=; b=zyj/wkfgOC/k5M
	uWlHK+rkVc8iJl6vI7M9AJOez6J+OC0WFZXhCgxChOqKBN5PwlopwuuQr5E8b13KnZA/MNW4KUyeY
	Db+0+CY0fu5vMCqrguP+Q9KRhtRfA565i7Mk3jxxgYF6OL0Z/uHsP/Wdzhd5xQGHh7UCcOix4spcY
	SXqMQQRDbccXUbotyVl8Ve1lyHM5WqQfHVJjYELHmyVFuVzMtPIjmlUGHRJE8zQFsFJ3ranK42Zsm
	vML+dwg1MAdwDwJ2ywjVfkSMD9q0ix9I7ueli5f5vlgkbuo49aHV1SqrUOnBewe+7hoIXbdrY+uRB
	t1TWXAmMcMu9N2rj/OuA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uUxNj-0000000DGBK-27qq;
	Fri, 27 Jun 2025 00:55:55 +0000
Received: from tor.source.kernel.org ([172.105.4.254])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uUxFF-0000000DEYE-1Gwt
	for linux-phy@lists.infradead.org;
	Fri, 27 Jun 2025 00:47:09 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by tor.source.kernel.org (Postfix) with ESMTP id 6CBA96112E;
	Fri, 27 Jun 2025 00:47:08 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 08F63C4CEF2;
	Fri, 27 Jun 2025 00:47:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1750985228;
	bh=LJTr39Kx9TzcBouC4IUe/L5JK7gaijmdnU+4I29p2ow=;
	h=From:To:Cc:In-Reply-To:References:Subject:Date:From;
	b=bA4xoOX5nA8QfsxhPGXul7HIXU5a8zXGOH+1yv6cNDQ+ftwmAbQakn/JSlcqyK9n7
	 ouSDQZRIwx2JbaV3o0TSBc9f/fkwxkZ1knXAFo/8vjt1sm8D9n5HVcq6/eHh9P8Hxu
	 ckFB7Lpb62PWaHcM4HXP9x/THCBikF/qpbgKvJzUxmvsPJpR3KenrG1QQqtEwoe9TK
	 NfGTvCYre9/lFMwrSPP3XAq0ZVWkiYHVM6ENtTKXl1Vg/RH+t70pL5N1DmI2ejI1Lf
	 CgmI2QOlllxkMAqGpkyp0UOj57+5ceVE1YTTN0wb6TCf3Djfd8j9DAaB/3f8OaxkPy
	 vqmDbAtv6LXLg==
From: Vinod Koul <vkoul@kernel.org>
To: Johan Hovold <johan+linaro@kernel.org>
Cc: Kishon Vijay Abraham I <kishon@kernel.org>, 
 Wesley Cheng <quic_wcheng@quicinc.com>, 
 Melody Olvera <melody.olvera@oss.qualcomm.com>, 
 linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org, 
 linux-kernel@vger.kernel.org
In-Reply-To: <20250617080503.11262-1-johan+linaro@kernel.org>
References: <20250617080503.11262-1-johan+linaro@kernel.org>
Subject: Re: [PATCH] phy: qcom: m31-eusb2: fix match data santity check
Message-Id: <175098522793.106297.10666098884425088402.b4-ty@kernel.org>
Date: Thu, 26 Jun 2025 17:47:07 -0700
MIME-Version: 1.0
X-Mailer: b4 0.13.0
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


On Tue, 17 Jun 2025 10:05:03 +0200, Johan Hovold wrote:
> The device_get_match_data() helper returns NULL if a new entry is ever
> added without corresponding match data.
> 
> 

Applied, thanks!

[1/1] phy: qcom: m31-eusb2: fix match data santity check
      commit: 603bd9808f58009e1f230271f94e1b9e13d506ba

Best regards,
-- 
~Vinod



-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
