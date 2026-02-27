Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 74C5FFEFB6E
	for <linux-phy@archiver.kernel.org>; Fri, 27 Feb 2026 17:26:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=57TlYEoNs0KSPFRjZoh1FyKMxs0KDy96fqYDbO+wpt0=; b=hHjhOM8jRaRnPU
	8yJNs2+CVX+KtvqaK7BJhJxgpkYq9kLyIpx1D+WIT0TEP2tPRnQAa3fwp65LBYZfh+/6B3Hi88esL
	Wz4iBW+eDtidEwo7cMNNb3c4TyCuQ1sqLyZYCcnEFI1makwbNFhPN1RAylsG25D62Km11kG5mKsld
	oFWiDJVWbRfaKKJNk+r4egd9lxizBV/mGsgGsNa2B73ASv5fiPHevk21vjtrv5Eu9kptE9mAIAJyU
	2eTN6wK1tnK+yPWr9s9gGVicW6j6CTTzC1mDQ6O3kRJqrCabjbRwJpA/NMmMfUrSsPnXAV6sv+mdZ
	52sdegswtO6DtNwRr4ew==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vw1bU-00000008o3E-0Hf4;
	Fri, 27 Feb 2026 17:26:16 +0000
Received: from mail-wr1-x435.google.com ([2a00:1450:4864:20::435])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vw1bQ-00000008o1n-3Bue
	for linux-phy@lists.infradead.org;
	Fri, 27 Feb 2026 17:26:14 +0000
Received: by mail-wr1-x435.google.com with SMTP id ffacd0b85a97d-4398c2131afso119470f8f.1
        for <linux-phy@lists.infradead.org>; Fri, 27 Feb 2026 09:26:12 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1772213171; x=1772817971; darn=lists.infradead.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=uIpo4Qj00b6qJvtZCixbXNb6vReXLlefaIzRQdEaQEs=;
        b=OMP1RDJpijou2yo9S3zIG8p1cx3Uibzk/LbN7H/VCLfx23GXcsegxqC/SEyqzQlJKZ
         TTq7WQljuKOacyrXdMgC2pBX/ZoH3HlVHn8irW1ON4HCj43Q7OmGDGo3XifPpVhILjZs
         lbeNQ9SYbMynIDG6rXgSB15vtNVz+ZIvpEmr7XRdbeA5Ll6TMktYy1RiNgDsAK7vZ2BP
         5ON7QWs0TqQiD6pN2zSVNmLWKwe02R4cqUVSZwgMSbEty1IbbmYs+3BynuG18YnAExGk
         zG61sIso5i8YV7dcni+AzlgkXklTD9vEPq/hGrcycZPE2AfCqASimlY8nKCYl+0Ar04p
         h7qw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1772213171; x=1772817971;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=uIpo4Qj00b6qJvtZCixbXNb6vReXLlefaIzRQdEaQEs=;
        b=RunuO7qelgarLTc04azmy1nc6hKImOPGag3GCf5QUenEpgVuM+OksDyOydfIrqsZZz
         6/3eARVa+5Jk1rW5GZcZzgFtaivaWRpx6IMnRqqigfB/RYLtTWlzW8kcM4BQEidhSXWa
         0zctU7cMHIl0np4u8gi5rsfehRyLhCN05mnx+zZb9oYHHRATV9cqGvgUYJkdvUCiR6zk
         uVu438739ty3Dxd+p+ytHyyMvYFgoRjQKCa/doZMi3q6ISduDjCnMBDcd8RRD7H/mRJU
         ZtHgM3hwhhFCcN1GPMb3vldeNMoUzSvgH1JmtYbm8mAiA3+mlJ2l+LRv+xsSfn3Gds8Z
         RySA==
X-Gm-Message-State: AOJu0YxQs1SSqbtMS3auno7h7cz+7SG0Tl3UcDhGBpXgx+jGix8BDfdO
	ViAf328kydq3SByPr9QFhaWPFWLMXzh41q6vgLQHmD2uz0qYQPnhoMS8
X-Gm-Gg: ATEYQzyIDpwR/qgyxSoVZz/YBZeh35GyUvXppjIuDbywk4vZGInci3ztI6MDxUCnLcI
	vy/TaBsNblbbGjX18Q0lKPDPzMKTr2HpdWEBxXKHRIBUupwS2lY5i4gL76+7TCZl10NeNG/MDEX
	hPxsfzM5jtbJObjOLPRx1TOJI6O+3EKWSnAYjzyYS3lVXlq0u03JAGOVnzPOGBo5CBC9lY++wOh
	jcYsAuDmoznlBxZEo71zht/dNLV+q07fcqFDAvGI/fsNRhXCelx2BZCt+YRV+pksJzoya264Ib5
	Zk9ph7+NZ9krBl9+xmDk4p/7+A7l3QtQ/vwSAi615hfCaX23ygb6cHpSOx0h5+Wt5mhOBXYSL9C
	18sVdIByWrVEDATnPK5T/Gsbk9zS+n8pODGoUQatUtBPMxkKDpdrj2wwrzVeGoNeYEv3Ylmi6lp
	GB6ICMnCLmaKpmeTYb2w==
X-Received: by 2002:a05:6000:186b:b0:439:8487:73c0 with SMTP id ffacd0b85a97d-4399de2c2eamr3410785f8f.4.1772213170472;
        Fri, 27 Feb 2026 09:26:10 -0800 (PST)
Received: from skbuf ([2a02:2f04:d608:3a00:ac95:d4c:390e:fb0a])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-4399c60e404sm9220541f8f.8.2026.02.27.09.26.08
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 27 Feb 2026 09:26:09 -0800 (PST)
Date: Fri, 27 Feb 2026 19:26:07 +0200
From: Vladimir Oltean <olteanv@gmail.com>
To: Shiji Yang <yangshiji66@outlook.com>,
	AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>
Cc: linux-phy@lists.infradead.org, Chunfeng Yun <chunfeng.yun@mediatek.com>,
	Vinod Koul <vkoul@kernel.org>,
	Neil Armstrong <neil.armstrong@linaro.org>,
	Matthias Brugger <matthias.bgg@gmail.com>,
	linux-arm-kernel@lists.infradead.org,
	linux-mediatek@lists.infradead.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH] phy: mediatek: allow building T-PHY driver for MT7621
 MIPS SoC
Message-ID: <20260227172607.e5x3izmhzwf6tfka@skbuf>
References: <OS7PR01MB136023DAF6E893E8110CEF777BC6BA@OS7PR01MB13602.jpnprd01.prod.outlook.com>
 <3c2dcbf4-7702-42ef-9e61-5f4091e9a85e@collabora.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <3c2dcbf4-7702-42ef-9e61-5f4091e9a85e@collabora.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260227_092612_812399_975339DC 
X-CRM114-Status: GOOD (  11.81  )
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

On Mon, Feb 23, 2026 at 02:47:09PM +0100, AngeloGioacchino Del Regno wrote:
> Il 19/02/26 13:53, Shiji Yang ha scritto:
> > MT7621 also has compatible T-PHY which attached to the XHCI interface.
> > 
> > Signed-off-by: Shiji Yang <yangshiji66@outlook.com>
> 
> MT7621 seems to be a bit special among the mips/ralink platforms, so I agree.
> 
> Reviewed-by: AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>

I wanted to see for myself, but I didn't find it.

arch/mips/boot/dts/ralink/mt7621.dtsi:

	usb: usb@1e1c0000 {
		compatible = "mediatek,mt8173-xhci", "mediatek,mtk-xhci";
		reg = <0x1e1c0000 0x1000
		       0x1e1d0700 0x0100>;
		reg-names = "mac", "ippc";

		#address-cells = <1>;
		#size-cells = <0>;

		clocks = <&sysc MT7621_CLK_XTAL>;
		clock-names = "sys_ck";

		interrupt-parent = <&gic>;
		interrupts = <GIC_SHARED 22 IRQ_TYPE_LEVEL_HIGH>;
	};

Shiji, did you also submit a device tree patch somewhere? Not that
you're required to, for this patch to be accepted. I'm just curious.

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
