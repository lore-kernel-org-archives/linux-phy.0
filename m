Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 57DCD606A31C
	for <linux-phy@archiver.kernel.org>; Mon, 16 Nov 2026 10:56:19 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=0q/Ga1aE;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=infradead.org header.i=@infradead.org header.a=rsa-sha256 header.s=desiato.20200630 header.b=ddJw0hq0;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=gmail.com header.i=@gmail.com header.a=rsa-sha256 header.s=20260707 header.b=zL6mnPL8
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Unsubscribe-Post:List-Owner;
	bh=JvCJ3zESjx2LlCWox2Efgaio/yCuu+11FtUWprtGiaU=; b=0q/Ga1aE/XP0719/6yR/LGm7db
	h90PwHIUOViN5BZoug+zDveghXjH7wLOpLqeRqKO4Z6Mol/fBi/JxKvapvYATP8vfKMhKav79UJ7r
	Z6nRSMBayZSj54UXODDJ8W1G6Jv3YiyGX1IjhLTZutVbmOPajZZDwFeDEB27ooLq0UquT7gpfsnjd
	tTawrRcjfPszzsLcs7kEmOAqMrOBZyYWAJkz3C3ti8u8yF6mmoPjxeW/oh7nGcpAUhw5YpXlXcAs5
	Cz3JIIIax4fHGe5cxId/Sf1LrVor7XVXTB0fVaRoFwSS5lzJnEa4WRTFCSeG2N0LqO+3wbOlMf50z
	V6V+CNvQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xSuNm-000000022VB-3J0V;
	Mon, 16 Nov 2026 10:56:18 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xSuNl-000000022Sz-1pbo
	for linux-phy@bombadil.infradead.org;
	Mon, 16 Nov 2026 10:56:17 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Content-Transfer-Encoding:MIME-Version
	:References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:
	Content-Type:Content-ID:Content-Description;
	bh=Uuenm5c7uLenhEpnUWoxIYDWfrao2MY0rp9vEXUhv6c=; b=ddJw0hq0bRMbe8NNtljj7d91X6
	j51upKf6QgSrmcNx63CIME/+IiLkA0Ai5YAT8FUaQQRvU7h+yTXAbnCkUcE1/xtD/xl24qN6gNpJ8
	pCn6SpKXaA8kZ7uH51lN480sTZwe1zf2IJ6p/nXva1JeI8v+XhXkXfgrglYolpuHBFxSTM8LRvXI7
	YTRhDez6unIlA8oHzFwchbV+1kRf+k6FYB3m820JOYiBECoPmYgIxo8KKMsHJfgR/vfPxUIa3Qshk
	OEV3h/qz/96H6NIz3OCTtrsSIsfPY8efzUeqFtMQ3PXow92Nx1rNH/qQSRa8QokTjOsYFsYl7DUfq
	MfPWb4eA==;
Received: from mail-yw1-x112c.google.com ([2607:f8b0:4864:20::112c])
	by desiato.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xSuNh-0000000Deom-0GNO
	for linux-phy@lists.infradead.org;
	Mon, 16 Nov 2026 10:56:15 +0000
Received: by mail-yw1-x112c.google.com with SMTP id 00721157ae682-8b4c685c751so10978907b3.1
        for <linux-phy@lists.infradead.org>; Mon, 16 Nov 2026 02:56:11 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20260707; t=1794826570; x=1795431370; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=Uuenm5c7uLenhEpnUWoxIYDWfrao2MY0rp9vEXUhv6c=;
        b=zL6mnPL82KCgpwTw8QzAxAFtdo1npMWif5maLPEtdOd3DlWQS1nTzpwFF5YJO+D9BJ
         83wPFPC1QLycdHJ2Q47ruiejr3KZb0gQX48gHez65ILpMHvywFhX+n4w+8f4d3LOFwUB
         legIK4bShk/he5Qr6H5VgmpLweflLw6TDfsY7varifDUTETCrO/STLSnCyU7qtIKmwgO
         WJNv1oeQ4BlVm+w4qv8pPZrQszZFFTecgCup5ymIFkB1bRWdfJa3tEurmDJA9Ea6Y5wo
         HrpjQ3guPtC2QT3BfVd64vz95MicrQrSUSqvVxMFhW6MxBC0LJxJZqF1taFjMeCWiiqS
         A+Fg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1794826570; x=1795431370;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to:content-type;
        bh=Uuenm5c7uLenhEpnUWoxIYDWfrao2MY0rp9vEXUhv6c=;
        b=C/cffkueqpqsEkVyUuWR+0zoef9tlU6XdAuT9mMbft9+6uyPZDXTocY4quUfzrsn/U
         wdaWSp0Lrq/iPFoJgXA1YAI6VPeLb8o7nPGnGhNDCcsHpeeAqsHZ34AahgQC75dQRbxq
         BXAffEoWFo62INcqQ4F0xQ9p56NtDBWOi9M0UN3X8B5gKpOhhIOhrc7ZY5nl87cQPMjb
         LsMr7PlGzCkTk94PxURWWFxtmk5xTJA1gI+uHYvlZ/AA9oRFaEzPIZD6oCwU+tmPnyTz
         ul8xUll2T28l/giY+aEOfSPONDmiGUosCkSbLaRv+RHUnlkajaiuaJu6BGHITF2dRSu7
         w/BA==
X-Forwarded-Encrypted: i=1; AL+hErH2imxCL4kySdc3cN2lRJJlwThdSz74PomJZl0lHeA5trCdsobxnjJBHVKCAnS/ut2bZXZQcl0Av6Q=@lists.infradead.org
X-Gm-Message-State: APuU4Z/mxVkFg/QtnWsh0SprtSm+o9RcdJVnW/ZofwaInpgCng4RiqNx
	XCzSriYkxMsLRBDL7goClDDs5P1k1fMV06/glnB6EMxafVQK3JMKIraJ
X-Gm-Gg: AZFdTZdBKzPDi6Gwr0ANvTVgIKUT/lZWS2PoV0lri26DmFR2/HmAwSPfa0c5h4YlIU9
	/s01EX8KlL11JGWR03FcczisVn4R3My7OMIBciLm7luIPYeU4HBzGX63kP6u1sp/AOp22FZgAuF
	b2iLHWHd3HHz1K+WfDLrRtfwSye6wQSbjrs0evDzW1b+xokCzyo34pGEr9ihebCIl7gXHTeQPs9
	ogxjE2SvbIEpZUEaWkn+CmfbD63XR5hwY9dU+JCYobyI4oYVCSll4j71Eoy04w/snPFybkosCS1
	EaZG/FYQTGCFGwTbTgWpfTHn3mzsL6it1BKGdc+ybkw27V8rfT7tX+QqRyowY8yCWxEwN/Z0O4E
	ZLh6Dn381o5aLlBw3jPzNhkQz1d0KgStpBKGw2cEhMKTkzZKbWTeRFwtt+Sl4DJg1tsT2FgHQ1S
	v8uDdlRghYqCYJyMANi1v77YQiENsOy1q1c+tyLvCC5IWSAFNY7YixMLyCX0CC7PJVUcJUi+Bx8
	DrMJ85YsdYzGPVmYKsWM37CqD2FtQk1DSGMgm63hhr5JDeR199llUrERad97Nua102018dUVnk9
	AflwEF+nvLa2d3BHcTqcUjgWUy56ihbcb45kaIzMVkE67IYtUfvEAFF3Bw/AMWqcHpPljuXtqQx
	wOcguzYPavRqwVPsOAidqtDArLClkrRSZ/9/o
X-Received: by 2002:a05:690c:389:b0:8b3:2445:889b with SMTP id 00721157ae682-8b4aa2eb92bmr50305027b3.91.1794826570279;
        Mon, 16 Nov 2026 02:56:10 -0800 (PST)
Received: from MaquinaLab.. ([2804:1b2:aa41:8a69:2b8b:32cb:351d:f30d])
        by smtp.gmail.com with ESMTPSA id 00721157ae682-8b4aa7f1a0dsm82274987b3.1.2026.11.16.02.56.04
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 16 Nov 2026 02:56:09 -0800 (PST)
From: Vinicius Pedrosa <vinicius.eduardo.pedrosa@gmail.com>
To: Vinod Koul <vkoul@kernel.org>
Cc: Neil Armstrong <neil.armstrong@linaro.org>,
	Manivannan Sadhasivam <mani@kernel.org>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Chen-Yu Tsai <wens@kernel.org>,
	Jernej Skrabec <jernej.skrabec@gmail.com>,
	Samuel Holland <samuel@sholland.org>,
	Andre Przywara <andre.przywara@arm.com>,
	Xu Rao <raoxu@uniontech.com>,
	linux-phy@lists.infradead.org,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-sunxi@lists.linux.dev,
	linux-kernel@vger.kernel.org
Subject: [PATCH v2 1/2] dt-bindings: phy: document Allwinner A733 USB-2.0 PHY
Date: Mon, 16 Nov 2026 07:55:43 -0300
Message-ID: <20261116105544.669029-2-vinicius.eduardo.pedrosa@gmail.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20261116105544.669029-1-vinicius.eduardo.pedrosa@gmail.com>
References: <20261116105544.669029-1-vinicius.eduardo.pedrosa@gmail.com>
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261116_105613_117147_D368CE01 
X-CRM114-Status: UNSURE (   9.49  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-BeenThere: linux-phy@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: Linux Phy Mailing list <linux-phy.lists.infradead.org>
List-Archive: <http://lists.infradead.org/pipermail/linux-phy/>
List-Post: <mailto:linux-phy@lists.infradead.org>
List-Help: <mailto:linux-phy-request@lists.infradead.org?subject=help>
List-Subscribe: <https://lists.infradead.org/mailman/listinfo/linux-phy>,
 <mailto:linux-phy-request@lists.infradead.org?subject=subscribe>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-phy" <linux-phy-bounces@lists.infradead.org>
X-Spam-Status: No, score=-13.8 required=3.0 tests=BAYES_00,
	DKIM_ADSP_CUSTOM_MED,DKIM_SIGNED,DKIM_VALID,DKIM_VALID_EF,
	FREEMAIL_FORGED_FROMDOMAIN,FREEMAIL_FROM,HEADER_FROM_DIFFERENT_DOMAINS,
	INCLUDES_CR_TRAILER,INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,
	SPF_PASS,USER_AGENT_GIT autolearn=ham autolearn_force=no version=4.0.1
X-Spam-Checker-Version: SpamAssassin 4.0.1 (2024-03-26) on
	aws-us-west-2-korg-listserv-alma10-1

The Allwinner A733 USB 2.0 PHY uses the same configuration as the D1,
so add its compatible with the D1 fallback. The A733-specific
compatible lets the driver clear SIDDQ before releasing the PHY reset,
without changing the PHY configuration.

Signed-off-by: Vinicius Pedrosa <vinicius.eduardo.pedrosa@gmail.com>
---
 .../devicetree/bindings/phy/allwinner,sun50i-a64-usb-phy.yaml    | 1 +
 1 file changed, 1 insertion(+)

diff --git a/Documentation/devicetree/bindings/phy/allwinner,sun50i-a64-usb-phy.yaml b/Documentation/devicetree/bindings/phy/allwinner,sun50i-a64-usb-phy.yaml
index 580c3296a18d..da4ad6fb3531 100644
--- a/Documentation/devicetree/bindings/phy/allwinner,sun50i-a64-usb-phy.yaml
+++ b/Documentation/devicetree/bindings/phy/allwinner,sun50i-a64-usb-phy.yaml
@@ -23,6 +23,7 @@ properties:
           - enum:
               - allwinner,sun50i-a100-usb-phy
               - allwinner,sun55i-a523-usb-phy
+              - allwinner,sun60i-a733-usb-phy
           - const: allwinner,sun20i-d1-usb-phy
 
   reg:
-- 
2.43.0


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
