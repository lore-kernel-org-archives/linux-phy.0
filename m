Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DAE16606A882
	for <linux-phy@archiver.kernel.org>; Mon, 16 Nov 2026 21:27:17 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=wk7tQcVf;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=gmail.com header.i=@gmail.com header.a=rsa-sha256 header.s=20260707 header.b=Gv3AER+7
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Unsubscribe-Post:List-Owner;
	bh=H984lJzkeQ80Cd91GUSYq5Ai/jZyddh4codIxRzGGYw=; b=wk7tQcVfAeSjtQbNm7hu9ypsl4
	gifwIyk4CvlpQmhk7v2sOA3fRanhxJlavcoISFxVy/69znF843F+Auu1rF/Z1qkzf5pcEPJRm08cf
	5RUK+vPOJ2MK+VFnRlpTmqxRWGZh/6I3yxUDu0+9nWX85zxqSd2anOasCE9b+NeBb9af+mh7u36MH
	s3DPOuKy3FN0Sz+vMFDff1X1IOIP/jPYR60ln3vtchtFhrjuSs4nNOW7wa+PSn8aSGPE/JWLPclVP
	EHu9Q5SPXN+kR+5woCHTxc8ZGpT2/Y/lMh8IdTILPQ/slU2WHGyyFu8/0gXRpxG+Sf9HoY51HXGiR
	RpW2+Idg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xT4EP-00000003xX9-1WvX;
	Mon, 16 Nov 2026 21:27:17 +0000
Received: from mail-wr1-x430.google.com ([2a00:1450:4864:20::430])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xT4EN-00000003xTt-1bYD
	for linux-phy@lists.infradead.org;
	Mon, 16 Nov 2026 21:27:16 +0000
Received: by mail-wr1-x430.google.com with SMTP id ffacd0b85a97d-491f34b4e0fso1712260f8f.2
        for <linux-phy@lists.infradead.org>; Mon, 16 Nov 2026 13:27:14 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20260707; t=1794864433; x=1795469233; darn=lists.infradead.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :content-type:mime-version:subject:date:from:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=3GDSoMHQsxRWl9RceBND7eXD7fNs4JK2UCz+AN9Gniw=;
        b=Gv3AER+7ED4btkbRklWj8howqHLMbzalL5xQpH8PetNcloxqlEI/1pggqM3EPwP1RU
         Xo9mld6ag3X2pOFmmp2ltU0Lik2I12D2rm3neFPjZCgUb2JlUyyJ9pPkDuO8YJtTFTuS
         y6ERVslkFZYMXf+qLvmIQrA/1/TaEgpnKG7j3jnIP0BP4EBrNIlhy0So/Uuarn5FsrNn
         uH0vkxDbxXBi5z4BZ8sSFFVhPS1E5FmoV3Qf3sISD7yQ4I1dn3VF6nPxofnYZWztW6TV
         n9sKnGqBWwmGgYUkk9I85zpQIUEnB1CmwH/XbZj5j4IQ55N/pfKuK7ECxfsfXX1E9Y24
         vcEQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1794864433; x=1795469233;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :content-type:mime-version:subject:date:from:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=3GDSoMHQsxRWl9RceBND7eXD7fNs4JK2UCz+AN9Gniw=;
        b=KYz2L6ff6k50AYpmlo1BSz/ILwb3Jc3QLOAaPJrvupGYkeimmnjjFOY75nwuvSp2c3
         5feONIOTzcN7QrA0xc/sYXVltokj0x6J3KuL0nwPAjUGZJlEvLlw3/kzVsD/gbCOLsn2
         uv62JuNglGoDauMxs6QmAPbW1vXPxbS+SfuAEo/OvpTAMe1sDrE/4YeM64H9VjxVKEqx
         qnrTb728lE8QTNMuvrt2vSHKCTIByfnWOe8lHiUD+UAFxtH7k8W6khBZCmF7O4ivsfyA
         1/6oFLstZDjk7+BZoO7galcYM6+cEfmWVHxFK8lh0gdlo84M16Pu9DpshktRPdx6y4cN
         EajA==
X-Forwarded-Encrypted: i=1; AL+hErFIUvqWfr4/zn7TrGgbQ9ldB9YfNKoZSDqJN4gm3Yq3Kihr/iB46oWJ/TPCYuJlElpjsVYLT47fkpQ=@lists.infradead.org
X-Gm-Message-State: APuU4Z+qq6W2vmu9Mvu0NPf/lOwV0Qi+bZHouFz6jxTtxtLcuYkw3+Kh
	uRl6+QF55ca/cAHGxKwx4xfkJoV5D2caGyyevGohc3GR97C1BGxSa2Bp
X-Gm-Gg: AZFdTZfnacnuJdGlUc6MnBSB8vfXGts+mHxzXH/Xn0/itKE9QMot7vMDP2z8jxrHJNd
	MXcrJfO6VHCUyM1Gs0y0VjETjYgtjmLtfnJjkn50finzWs5Sq6hTo8U4OXnsb2Xkpg2qqN6Tw28
	OXMpkrIHmkXe9YU7TIixTxAxUV1ONT3zV4uL9BNf4ekV40j43AV9V9U4MybwyrrB6faFvlBM/1s
	RAhbLAaLZ+rtHDziY6PfEqWfb/V0O4Ebcl1qfR50eXO7/JlRMcR6Bg+v46KxNkp0PguJ/PZCnpA
	uU8+ny8H9VQu2j1ElAaCjvb3QgLI9sYbv9dZmUXu2c2l7r53Gta0as4XgDY4oBj1OjMV7HAN5Z9
	sThno7kNBqx22U9z0HBrSQ9kCERYwwr5RQ29KeR6moyFW/qw3S6zDHNwUAE1ed9RJHcQ3TSFVSi
	K/64HBV4M7v/lfhT6TpovmpFBqGGWeZCXA6IABt9YNYCPUFfm3febmS19DnzLKdBSogWoVW9RqB
	VOVOmIrM577pFHlKkX4Z5EH+YPW9jAdDs9fkmLpMAxmEjqlvAFcZGlC3e8wCbgrBU7Wz+Oxjyqp
	21m/Hw9Qp9ZWZ59HWmPI9j/cngbydf43YyIoCRIB
X-Received: by 2002:a05:6000:610:b0:495:5c83:51b9 with SMTP id ffacd0b85a97d-49c7467a893mr27328310f8f.50.1794864433590;
        Mon, 16 Nov 2026 13:27:13 -0800 (PST)
Received: from [192.168.10.105] ([212.58.121.92])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-4a378138cfdsm1260150f8f.58.2026.11.16.13.27.07
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 16 Nov 2026 13:27:13 -0800 (PST)
From: Stanislav Aleksandrov <lightofmysoul@gmail.com>
Date: Mon, 16 Nov 2026 21:26:22 +0000
Subject: [PATCH v2 06/16] dt-bindings: phy: qcom,usb-snps-femto-v2: Add
 Halliday HS PHY
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
Message-Id: <20261116-halliday-dts-v2-6-2c92438c6c46@gmail.com>
References: <20261116-halliday-dts-v2-0-2c92438c6c46@gmail.com>
In-Reply-To: <20261116-halliday-dts-v2-0-2c92438c6c46@gmail.com>
To: Bjorn Andersson <andersson@kernel.org>, 
 Konrad Dybcio <konradybcio@kernel.org>, Abel Vesa <abelvesa@kernel.org>, 
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Robert Marko <robimarko@gmail.com>, 
 Guru Das Srinagesh <linux@gurudas.dev>, Thomas Gleixner <tglx@kernel.org>, 
 Radu Rendec <radu@rendec.net>, Lee Jones <lee@kernel.org>, 
 Will Deacon <will@kernel.org>, Robin Murphy <robin.murphy@arm.com>, 
 "Joerg Roedel (AMD)" <joro@8bytes.org>, 
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>, 
 Wesley Cheng <wesley.cheng@oss.qualcomm.com>, Vinod Koul <vkoul@kernel.org>, 
 Neil Armstrong <neil.armstrong@linaro.org>, 
 Manivannan Sadhasivam <mani@kernel.org>, 
 Alim Akhtar <alim.akhtar@samsung.com>, Bart Van Assche <bvanassche@acm.org>, 
 Bean Huo <beanhuo@micron.com>, Stanley Jhu <stanleyjhu@google.com>, 
 Herbert Xu <herbert@gondor.apana.org.au>, 
 "David S. Miller" <davem@davemloft.net>, 
 "Rafael J. Wysocki" <rafael@kernel.org>, 
 Viresh Kumar <viresh.kumar@linaro.org>, Amit Kucheria <amitk@kernel.org>, 
 Thara Gopinath <thara.gopinath@gmail.com>, 
 Daniel Lezcano <daniel.lezcano@kernel.org>, Zhang Rui <rui.zhang@intel.com>, 
 Lukasz Luba <lukasz.luba@arm.com>, Georgi Djakov <djakov@kernel.org>, 
 Sibi Sankar <sibi.sankar@oss.qualcomm.com>, Ulf Hansson <ulfh@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org, 
 linux-kernel@vger.kernel.org, mfd@lists.linux.dev, 
 linux-arm-kernel@lists.infradead.org, iommu@lists.linux.dev, 
 linux-usb@vger.kernel.org, linux-phy@lists.infradead.org, 
 linux-scsi@vger.kernel.org, linux-crypto@vger.kernel.org, 
 linux-pm@vger.kernel.org, Stanislav Aleksandrov <lightofmysoul@gmail.com>
X-Mailer: b4 0.15.2
X-Developer-Signature: v=1; a=ed25519-sha256; t=1794864382; l=891;
 i=lightofmysoul@gmail.com; s=20261108; h=from:subject:message-id;
 bh=iomST/Qr961He4Ne7crBcxin7EtHuKLr8auNEsY1c6w=;
 b=XlBnHuuXKSsmwBoy79zd7CM/aQS0V4vz73O5I/ykrhOgY3nFJG4rnY0qnm4zfFTA5sK35VFT6
 GeLVT3WztE2DdDA/hh0iSPFr/rHt5tVJ5B9S1do1YbNU2FqHh/CJpdT
X-Developer-Key: i=lightofmysoul@gmail.com; a=ed25519;
 pk=jeRUlfmkhE53CJPoeIIXgu7rTE0ybDRH0HQrEwbydzg=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261116_132715_449484_05C56151 
X-CRM114-Status: UNSURE (   8.58  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.1 (--)
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

Document the Synopsys femto USB high-speed PHY on the Qualcomm Halliday
SoC.

Signed-off-by: Stanislav Aleksandrov <lightofmysoul@gmail.com>
---
 Documentation/devicetree/bindings/phy/qcom,usb-snps-femto-v2.yaml | 1 +
 1 file changed, 1 insertion(+)

diff --git a/Documentation/devicetree/bindings/phy/qcom,usb-snps-femto-v2.yaml b/Documentation/devicetree/bindings/phy/qcom,usb-snps-femto-v2.yaml
index 661759b25064..8ff1db4a1d79 100644
--- a/Documentation/devicetree/bindings/phy/qcom,usb-snps-femto-v2.yaml
+++ b/Documentation/devicetree/bindings/phy/qcom,usb-snps-femto-v2.yaml
@@ -22,6 +22,7 @@ properties:
           - const: qcom,usb-snps-hs-5nm-phy
       - items:
           - enum:
+              - qcom,halliday-usb-hs-phy
               - qcom,qcs8300-usb-hs-phy
               - qcom,qdu1000-usb-hs-phy
               - qcom,sc7280-usb-hs-phy

-- 
2.55.0


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
