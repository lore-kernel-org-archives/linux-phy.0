Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 46CC6606A323
	for <linux-phy@archiver.kernel.org>; Wed, 25 Nov 2026 03:44:12 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=4z2YZ3L/;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=gmail.com header.i=@gmail.com header.a=rsa-sha256 header.s=20260707 header.b=pmS+RaIM
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Unsubscribe-Post:List-Owner;
	bh=fjMMV/V754nkDXuBMroaqxUfg9JeiQmOhykfmIE1NUk=; b=4z2YZ3L/6gtVehueZV9Kc5xWSX
	hRutl4zvud8uf33//BzmNlalI3en+pvuoJqtq6fQkK14z8SrV+myIrwydhW8We+oxWth+yxWNqi/n
	WCWC8SoX50gFZMXfMH55GtMx0Pt+RIO/TEuBeZA47DzY93flIQ8zbWLFbvAcB+OmodYTaMaz92jRs
	O4hyTKNLeHGTxoaV556lMFg045bvYOfS56q9a4R/dIFf/Zn9y5Flt5aXj3T0WK4orhlAZufliacXW
	dsdKUTfPpkhQ0hAaKooA1H3LW+tvaghS4Xe3FPsWvhn0NgpVCIKzt3EWSU+u5tcb6ghm9Y3CzHaeL
	CAoiPqag==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xW3vY-00000008JwD-02Dz;
	Wed, 25 Nov 2026 03:44:12 +0000
Received: from mail-wm1-x32a.google.com ([2a00:1450:4864:20::32a])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xW3vJ-00000008JkO-3xvn
	for linux-phy@lists.infradead.org;
	Wed, 25 Nov 2026 03:43:59 +0000
Received: by mail-wm1-x32a.google.com with SMTP id 5b1f17b1804b1-4bb85e07aadso64938415e9.1
        for <linux-phy@lists.infradead.org>; Tue, 24 Nov 2026 19:43:57 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20260707; t=1795578236; x=1796183036; darn=lists.infradead.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :content-type:mime-version:subject:date:from:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=oXtG7unj8KPVo5ZHcswWaKsEJQuS7Y5YiwYYtQMu/f4=;
        b=pmS+RaIMPVk0nggak5ytdm+20F5bsR9ii45dM+BSFp4boC3nVAR2MjGn1Vmj3MbW6A
         pvVqvutTmJ6njx+3MZC8S7lAs1c1H22sVBE3uPxx6k4hlbMStZxIi/wswo+7wA3cXePd
         CbweQqkHa6WzG+wBSAdzbdEiIQJdVFhpujlNsq+SE+aUQkBSEC94aB6Gqm5FfWkx/ann
         oC+F4HG0pqAfUtgafM9nOjSTCOUClvlKjg5fXTUgPspLRcbfDjDb7WI6NVOeIpXUP4Yj
         ureDDYx3F0pitPiX3gjajfIV4dLKz1zK47vokuq89swqEA7/4XF14Gkt8SuD8EnQq0JU
         q+Ug==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1795578236; x=1796183036;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :content-type:mime-version:subject:date:from:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=oXtG7unj8KPVo5ZHcswWaKsEJQuS7Y5YiwYYtQMu/f4=;
        b=q/TaZ2K9z+trcHcIJYiwfKB1A9S3OFKa0awJPpzvUMkLjFXWCU4yUmli/ZbxzwCVBt
         Ar57RHfNiaRIJ3Jrzk6IZwvQSYMz5LWGBiq1XP8TLWSNdjA0tlusSGExoef/GwF9hdwO
         JDmF/4OfLZhP2o9zfO3Fej74f0GRDWHYo95DqiUnyWAqr5G2JGDd3fYqu/DoalfJIcMJ
         H/RCcANrSuxGth61Yo7qJw4MNTjfy3w3WDZwjJZWZkT5fnEqcbKiozSzEGBhZptZdyk2
         5Id3o7at1zF2ayCzFRCqdA6dYVa11E96uXY5086ddSycUVB2gDqzGvv80HoFlU54oSTY
         f29w==
X-Forwarded-Encrypted: i=1; AL+hErHVRf7hcyFTtQX1GEXMjYEOOTlGlNoHpjYf8wTIjPp1SyBnH/WhRGpJgEx5xhWV0sS2Svvg0Zd9md4=@lists.infradead.org
X-Gm-Message-State: APuU4Z9DyRXP6f5X3wUfVjlZg9kquJ3/p9/JS7LrL6mrlns/eagJcdbB
	Zq1c8Nvubk5tvect0MDulJtgs6IkooolVKVFsPomujtsCSx9brKVOeCh
X-Gm-Gg: AZFdTZdFgWMFxb+he2xEhe60zh7+QrdfXxFkVSaeOgM8tyXInF8cghHStz79uByjZWV
	0bPqUpeGDzD6e1I9oEOsxnfQfJ56r9b+bRGBxGHCTT74ZZXnoNkH4QjS2ANhtmXj3ICS+rWSMRy
	/U/YWauhqNR2v9q6IuWYW/OP4v8qiaua666Z0SzSU9M8cAfo0EopnbRXLyurnfG20U4eQcqwWXd
	LT3u2QefQMNupJ5PmZbaIjsOiOF+L9s6EmCsAEGYFAY/nrnrBWCm70tWg5qljGnSUB3Zg65zDMw
	9KvHsv3GdUpqkIjgl8pL6+CMG0uDoe5WMtHOr+2+IMu1LvFQ1WvPugzzLIjZqgTIDepl0jKHM8G
	T2MMrOnu+F4El2s1dzsjpsMflmt71kqiQHyFLnUW2m4+MWAIdMmXIoGIWMFT364MZfi/f9rHr8K
	ZyooVV2a5Sk+eSS3StyGAW6vb7g8FHfdzRVj4PUqfgYuOLRgBY59hzodnCtszW+819u0QQZjRrm
	Hd6MgHu9Gxy/+7P19KH8rh3KZDyxti2wrDBrzueuZ8iZbQ/EHQ/clvlApWucZFRth4gkei9PnQL
	thY8W2JGf/Rwlz4hKaS89CT1Ua7YwwvAmfot0w==
X-Received: by 2002:a05:600c:848d:b0:4bb:6687:5386 with SMTP id 5b1f17b1804b1-4bb8880c7f1mr352610575e9.19.1795578236299;
        Tue, 24 Nov 2026 19:43:56 -0800 (PST)
Received: from [10.32.31.239] ([212.58.121.92])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-4bb88402ce9sm391107925e9.0.2026.11.24.19.43.51
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 24 Nov 2026 19:43:55 -0800 (PST)
From: Stanislav Aleksandrov <lightofmysoul@gmail.com>
Date: Wed, 25 Nov 2026 03:43:01 +0000
Subject: [PATCH v3 05/14] dt-bindings: phy: qcom,usb-snps-femto-v2: Add
 Halliday HS PHY
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
Message-Id: <20261125-halliday-dts-v3-5-5c8311c0b70b@gmail.com>
References: <20261125-halliday-dts-v3-0-5c8311c0b70b@gmail.com>
In-Reply-To: <20261125-halliday-dts-v3-0-5c8311c0b70b@gmail.com>
To: Bjorn Andersson <andersson@kernel.org>, 
 Konrad Dybcio <konradybcio@kernel.org>, Abel Vesa <abelvesa@kernel.org>, 
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Robert Marko <robimarko@gmail.com>, 
 Guru Das Srinagesh <linux@gurudas.dev>, Thomas Gleixner <tglx@kernel.org>, 
 Radu Rendec <radu@rendec.net>, Will Deacon <will@kernel.org>, 
 Robin Murphy <robin.murphy@arm.com>, "Joerg Roedel (AMD)" <joro@8bytes.org>, 
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
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
 iommu@lists.linux.dev, linux-usb@vger.kernel.org, 
 linux-phy@lists.infradead.org, linux-scsi@vger.kernel.org, 
 linux-crypto@vger.kernel.org, linux-pm@vger.kernel.org, 
 Stanislav Aleksandrov <lightofmysoul@gmail.com>, 
 Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>
X-Mailer: b4 0.15.2
X-Developer-Signature: v=1; a=ed25519-sha256; t=1795578204; l=961;
 i=lightofmysoul@gmail.com; s=20261108; h=from:subject:message-id;
 bh=vc+yCVm63yJiTEyLJCU/ghFkRJa2TidHkMEEWzw/3Gc=;
 b=Yg/VSr0scUN51i9KpRAWHfU1hj3WxUg4RAt781FW4PuuF2y193VAPyf14yap65FpsWKVde5Xo
 6se4dVNbdKnCzQeUFO8eyXXWtGTKy5TyIr8La1GZjrp2oxL2C8sTpHU
X-Developer-Key: i=lightofmysoul@gmail.com; a=ed25519;
 pk=jeRUlfmkhE53CJPoeIIXgu7rTE0ybDRH0HQrEwbydzg=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261124_194358_019181_232D6719 
X-CRM114-Status: UNSURE (   9.17  )
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

Acked-by: Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>
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
