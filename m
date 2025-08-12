Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 40447CA0EC4
	for <linux-phy@archiver.kernel.org>; Tue, 12 Aug 2025 19:24:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Date:Message-Id:Subject:
	References:In-Reply-To:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=fl9P96CIVqmzFnsNcf4mRjXVXwfxkewbvjR07Gd7J20=; b=NVwiL+kw0PPOOR
	C/NTBkE3SzbM8Z45/u1ndZZOkXWqdh+DydAmdvSN+zN3BTH0z/u5KvXo8nOwb8PVusbdpcsWpStUp
	x4d4AQJosWjdnOmdjigzz5+JEAquLlKxJft2uFnuXYN4ADvO9JzvrhyUm+Sr10ieu1k5JnSNHmPgz
	0S85NOfVeuONf36kc+Ld3z8+35O3k0nDBMXZ++soKBTrnrsT/sWWsI2ZngEH/znjgzmyUxqsI5O6Y
	qK/xSrmc5bcnxwFIBIGMQQdVTlWgz5y0JenZX1o4c5T/QypkwStrwZ5EZrAmmhcwp7WV45H5M95Dz
	ONpGbpB+fuYH3VF+G3iw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uluc9-0000000BpCg-00iB;
	Tue, 12 Aug 2025 19:24:53 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uls4Q-0000000BSD6-0euR
	for linux-phy@bombadil.infradead.org;
	Tue, 12 Aug 2025 16:41:54 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Content-Transfer-Encoding:Content-Type
	:MIME-Version:Date:Message-Id:Subject:References:In-Reply-To:Cc:To:From:
	Sender:Reply-To:Content-ID:Content-Description;
	bh=CTzI/MBpf1iwGM3rYp/q1YNiSmLoQIIMgDNX4zIJwEQ=; b=jMsFxmUnsAOJBjQqoJOQJ08C2M
	U8d3If8hpWUa96+5J2F7EQgsy2ViPN4tvdrv05P1q5tk4hEnW5mUqrOd+VTCjZEnPTOmWB5aGbbMN
	ewFCNRpZHhm840TVJRUDb6xYJ21DGv65ZX5c5rqYZ6s4CT6b1Ph0dxDyWxe1NTCV3RDLvfwvmpGO1
	McSXpVcjX/qsE9eywh8WK1enfKuWu7atKN8fVvBqfu3BVg/Cqrg/VelcoPDKG4Ty5dAWs8rS5c/kt
	RupJE3UaVBpUWmZ3QlQSwr1TUPLozjAsM0GNVmZF4p/MDa9+0bPH8uUZV6KXjYUsyzsekS+7gsbwa
	kIpPii/g==;
Received: from sea.source.kernel.org ([2600:3c0a:e001:78e:0:1991:8:25])
	by desiato.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uls4M-0000000FrJv-3WDE
	for linux-phy@lists.infradead.org;
	Tue, 12 Aug 2025 16:41:53 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by sea.source.kernel.org (Postfix) with ESMTP id 7C33045F86;
	Tue, 12 Aug 2025 16:41:48 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 37333C4CEF1;
	Tue, 12 Aug 2025 16:41:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1755016908;
	bh=hs1EeUJADn7q7ZOde0HvLyucF1ZRGoxSA8x+URMHgOI=;
	h=From:To:Cc:In-Reply-To:References:Subject:Date:From;
	b=R7Vf9Gs9kQtNWGFJA+PkvyG9xazwBDXkknHrhuHeZnwGDhJlT+G24QynElQny6HB6
	 P/hAwS95X9AA+7AGhgGGof8AioNlen0OLkK/1y0dwLo4x/Zz2vS+/FHtJAxpq81Lnk
	 0wWTIyF5HcSujyUuqJ4RSTKIylS7HLh7zzkjjVELjhLBy76z3fZG1olK0DJr4OTwqs
	 iztpnDTIl8qLg9A1LHWLEMCM276dpdNWQqfNT9omvaxm2+lmCoEjFSwyiC0OuX297a
	 7fWoFYgc5heZ43C9bKv3+7ZEybyIjcO7yJKQC2pc39HKGo7E+7HEU38qEm/R3dTr65
	 N5bshTLv2i7Eg==
From: Vinod Koul <vkoul@kernel.org>
To: Johan Hovold <johan@kernel.org>
Cc: Kishon Vijay Abraham I <kishon@kernel.org>, 
 Justin Chen <justin.chen@broadcom.com>, Al Cooper <alcooperx@gmail.com>, 
 Sylwester Nawrocki <s.nawrocki@samsung.com>, linux-phy@lists.infradead.org, 
 linux-kernel@vger.kernel.org
In-Reply-To: <20250724154823.15998-1-johan@kernel.org>
References: <20250724154823.15998-1-johan@kernel.org>
Subject: Re: [PATCH 00/11] phy: drop unused module aliases
Message-Id: <175501690578.633310.16974700832772559803.b4-ty@kernel.org>
Date: Tue, 12 Aug 2025 22:11:45 +0530
MIME-Version: 1.0
X-Mailer: b4 0.13.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250812_174151_242766_85EBE03B 
X-CRM114-Status: UNSURE (   6.67  )
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


On Thu, 24 Jul 2025 17:48:12 +0200, Johan Hovold wrote:
> When fixing up some device leaks in the TI drivers I noticed that the
> commits introducing the leaks had also converted the drivers to only
> support OF probe.
> 
> This series drops the unused platform module alias from the PHY drivers
> that never have supported or no longer supports anything but OF probing.
> 
> [...]

Applied, thanks!

[01/11] phy: broadcom: brcm-sata: drop unused module alias
        commit: b4e1e9108c948896661ecf5c61a29f6086e53f38
[02/11] phy: broadcom: brcm-usb: drop unused module alias
        commit: 33e64f6e38b2dccbaba8c3533cd0c45e1245c205
[03/11] phy: cadence: Sierra: drop unused module alias
        commit: d81e02d02b5f0c0f53e6cfb8982489fdacd546b6
[04/11] phy: hisilicon: hi6220-usb: drop unused module alias
        commit: b4d4af09092b50b940b37892445f0ae5a007e888
[05/11] phy: qualcomm: ipq806x-usb: drop unused module alias
        commit: 8cbb931b8ac285cd1ec46f8764a91a627704ccab
[06/11] phy: samsung: exynos5-usbdrd: drop unused module alias
        commit: a4c3d8015f4298d90d4d145101dd04de8854e6f9
[07/11] phy: samsung: usb2: drop unused module alias
        commit: 7ee2e0347cc781f0f87777558218961c51ec6aba
[08/11] phy: ti: omap-usb2: drop unused module alias
        commit: 36d20c023bfe98eb999ec5ba4f051460f6080564
[09/11] phy: ti: ti-pipe3: drop unused module alias
        commit: e709cc0741e8f155a39174d97eb9ae9c0cba2623
[10/11] phy: ti: dm816x-usb: drop unused module alias
        commit: 00837ae34f6321f9b6c290f92eb369e7f9259d41
[11/11] phy: ti: omap-control: drop unused module alias
        commit: e04f91e1d881120ff97389960cf7c765d510213e

Best regards,
-- 
~Vinod



-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
