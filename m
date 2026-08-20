Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 8EBD8C5DF81
	for <linux-phy@archiver.kernel.org>; Thu, 20 Aug 2026 14:01:30 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Fz5nRrsYV0gIdvGTY2Rzzgi9m4jq6+4Dmyw7AlLSUK8=; b=0u6t8PebIE9yis
	dOAZ/PLHT8WBeTklWQwb6gpLw2eI5ROVWnoZMEhwwd0RCarp655Fb3nPHUdG63SvDCSwdtKIaePgg
	uFvUx+EkjG5l/gv2bwbAk1L+PDDJQBCPYD1uA+kRAU8Pkum1sv9P60wXdDOl/rr+wF/IxJys7zg7z
	fdY7ksZQF/rf2FASCVzjLEs3F+XayWBzSl5yr76aNhdZDUBLenSj2aElPVt+294ZQU4u/az37ZKZ4
	M0gtLterkb3qrMV2Bp9j11JVQut7i1KU/getyZ2k+N1QYEZPmPm4An4iTdnKYx3JBV7G0WCqAysez
	rZDPur+ulabD2xjABlzQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wx3Kk-0000000BeTj-05aL;
	Thu, 20 Aug 2026 14:01:30 +0000
Received: from mail-wm1-x32f.google.com ([2a00:1450:4864:20::32f])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wx3Kf-0000000BeNq-193J
	for linux-phy@lists.infradead.org;
	Thu, 20 Aug 2026 14:01:28 +0000
Received: by mail-wm1-x32f.google.com with SMTP id 5b1f17b1804b1-4998590d392so20254585e9.0
        for <linux-phy@lists.infradead.org>; Thu, 20 Aug 2026 07:01:24 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1787234483; x=1787839283; darn=lists.infradead.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :content-type:mime-version:subject:date:from:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=nO19FsrOkyTqyk5fmO2arL61kBUyFj/iNWEiNLbHn98=;
        b=pg1/5aZEw3CoClYlqjXNxZSx9JugJJJi2L523ym70YO/xnCo83HAk4BAEPRCYYlLfL
         gdGcUVptc2dvoY9/fnngrbXfVbysORf9GCnOfEF9Yo7WGumkZdrMfx6MZ13bIXVB/5JI
         hfVke6Ld81tKGKA+JK1k3f7BLpxAb3jZK0/tdwfOQwfvbwzY2y0PtKh6gZxmkJB5vExj
         jezVnbL5dtJmKk6wVxZQ+9yjoTDrGUo7y1Jq1OgPIWzDzJ+TqHbIMZxQ1v9pMYMz9n8s
         vwyKj7UitR4nHDTN7VRixPrTIm6lMqcShMl7p7wDxbfA98Yf48CRK1fFkyVvoR9fN+jF
         qN+g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1787234483; x=1787839283;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :content-type:mime-version:subject:date:from:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=nO19FsrOkyTqyk5fmO2arL61kBUyFj/iNWEiNLbHn98=;
        b=qj3ROrfe8xiX6PaEkJQx9wRiMbxQ/m/VUuKkSm8TQbpfMCdM7NS3xvUGrzoJ1rFlAH
         yKyMvW5pcpXO8zW/977nw5ZHrs+B3kaAa8LFxdbK+YMzbkyvu+db3U9sOZnllLiYfRIh
         5Qvfyt3N7pnhCK93NfivqiK6v933xKAnIU2pueewPIv67g2cvALx3sVR542MYpyJhAxA
         Wl5VWoccYWVERm8UgMx1tekdvYenzq9jx9gYDiJH39JlGeX6QXaXOMZUiBvQ380m/D4l
         wdRLcYzBWCz62BSFqUoAuGpiKej++FWrl+iOx4C5sO9ssxMiYvVhirirYhudXw8fopyE
         vqSw==
X-Forwarded-Encrypted: i=1; AHgh+Rq6E7x5n/kunv6x691TKWOcPck3Wl4w8Vu/bxwrXdjsxFD93sU7bJLvreR7yxZG470BxTasUHl9IlY=@lists.infradead.org
X-Gm-Message-State: AOJu0Yz33Bb2EYC/9pxCNPLGkMTT8aMKru8t2qzTE0fq7JVX+rZlAcgK
	6fYSSIYLsJX08ZoP4BcOWrkjRwP2WMrVABK7JFut/Wb3If+2F8knVMKc
X-Gm-Gg: AR+sD10Jb403oF+h9OscFPbFh2GdLWmw9UOqnj4/1dFxkXLZqfUucN+0h+QIyG8/Xik
	OaHjPES/Quqta6W82DJLNfwgnAXlueW0x6O/ZpTsoOtzMtY49vimcaWz7rrjW+MOwTwvCb5swTV
	hq1ZvJ2AP/W1ZpKI4nDRHO/+MU0ceFtHdeue06qrNbw+jPjSocmzMNew9PPhCjADnDt0a0VfLum
	30qF6MWRtZk7+umhBVmN3o5sWk5pOigJF45Nyp3Tkm9AJC63Xouy+zRNhORpmBxqD6pJq6CTDfh
	lyIJ9r/4TjKc/Vc+d4fzDUJ7RvR9Ny+GB3pEm/YXEuy1I/4yt/JTRQVUlxD1ah3BgwzMU/XiGOy
	dBMwWK+rFC6mN0WflNhyiRE0Q5xpBCFLgupHg3dR/6BwOdgmfsO0MpeBns6XqWw/X2a62C3BCId
	znspeHHILnXf8zw0R0PbFDHK99y3jfnuacmoHGR45Uk9A3+xAYaxY4znZGoP9rdRG/rb2UFomUz
	i/bxfuphsLfDBsrcvoj8uqjck/bc8rUdNoJ6Kh0qECaT40=
X-Received: by 2002:a05:600c:8b32:b0:496:c06b:9fb4 with SMTP id 5b1f17b1804b1-499aa200efcmr247008575e9.14.1787234483139;
        Thu, 20 Aug 2026 07:01:23 -0700 (PDT)
Received: from [127.0.1.1] (lmontsouris-656-1-83-121.w82-127.abo.wanadoo.fr. [82.127.110.121])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-499aa0e473dsm137978275e9.15.2026.08.20.07.01.22
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 20 Aug 2026 07:01:22 -0700 (PDT)
From: Amin Gattout <amin.gattout@gmail.com>
Date: Thu, 20 Aug 2026 16:01:08 +0200
Subject: [PATCH 1/4] dt-bindings: soc: rockchip: add rk3576 csidphy grf
 syscon
MIME-Version: 1.0
Message-Id: <20260820-rk3576-dphy-v1-1-70e25e8d5e78@gmail.com>
References: <20260820-rk3576-dphy-v1-0-70e25e8d5e78@gmail.com>
In-Reply-To: <20260820-rk3576-dphy-v1-0-70e25e8d5e78@gmail.com>
To: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Heiko Stuebner <heiko@sntech.de>, 
 Vinod Koul <vkoul@kernel.org>, Neil Armstrong <neil.armstrong@linaro.org>
Cc: Michael Riesch <michael.riesch@collabora.com>, 
 devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
 linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org, 
 linux-phy@lists.infradead.org, Amin Gattout <amin.gattout@gmail.com>
X-Mailer: b4 0.16.0
X-Developer-Signature: v=1; a=ed25519-sha256; t=1787234481; l=910;
 i=amin.gattout@gmail.com; s=20260818; h=from:subject:message-id;
 bh=1F1r7NotkpzJGaZPEdB9UeDk/iA0euzjHAVH6r9N3K0=;
 b=Np7eikFgXwccg4Ti8gJzd+xtDeEZPan62gfovBipj90sdPV2MtJiz/SXhtWw+8fOcZ8ds5+jG
 kJxuBnXeSeqAJT6L09jGvrAaMY7eANAsKn7TqrvSzAgZ4vRkDHTVPOI
X-Developer-Key: i=amin.gattout@gmail.com; a=ed25519;
 pk=MSIqDPkCOkwtyP8Fns1m+KFU9SgqoDl2mpLe18vL+hQ=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260820_070125_352708_A2EA4494 
X-CRM114-Status: UNSURE (   8.05  )
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

Document the syscon compatible for the General Register Files of the
RK3576 MIPI CSI-2 DPHYs.

Signed-off-by: Amin Gattout <amin.gattout@gmail.com>
---
 Documentation/devicetree/bindings/soc/rockchip/grf.yaml | 1 +
 1 file changed, 1 insertion(+)

diff --git a/Documentation/devicetree/bindings/soc/rockchip/grf.yaml b/Documentation/devicetree/bindings/soc/rockchip/grf.yaml
index 7bcb4e2f47ec..e94c83d7c138 100644
--- a/Documentation/devicetree/bindings/soc/rockchip/grf.yaml
+++ b/Documentation/devicetree/bindings/soc/rockchip/grf.yaml
@@ -32,6 +32,7 @@ properties:
               - rockchip,rk3568-usb2phy-grf
               - rockchip,rk3576-bigcore-grf
               - rockchip,rk3576-cci-grf
+              - rockchip,rk3576-csidphy-grf
               - rockchip,rk3576-dcphy-grf
               - rockchip,rk3576-gpu-grf
               - rockchip,rk3576-hdptxphy-grf

-- 
2.43.0


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
