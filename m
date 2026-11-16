Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3B1CC606A331
	for <linux-phy@archiver.kernel.org>; Mon, 16 Nov 2026 21:28:14 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=sCQqAdVX;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=gmail.com header.i=@gmail.com header.a=rsa-sha256 header.s=20260707 header.b=Lq3S1zvT
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Unsubscribe-Post:List-Owner;
	bh=jgthwML5CBTfBgjQkAp5yHn/HT4CtaS3tj1V9RwtnCc=; b=sCQqAdVXL//1mjva8QrRrHtFRW
	7CEuNl+7KeuUaL5Fdr2ftB7yvCB3wUchuDyphAE8OwGwXz64rnDIZsHewpytwk72cLmurukuviFHg
	uByOWAXK7PJ/bRmYF0NL+cvPkdEwiMMRb2hmgoTBbLsG7pIsXcCcEQAYOaxDi7jhu1umwP8vA+gF4
	jrGk6eGgdRca2PobLIc2eGnNXqwbg+mY2CgpxJGZJIcPZV9mEmImU/w9XF2b3C9Ttnmd5v8xFu9vC
	DuRgIoGsAG2wLHsGjkTzcbwMFHnbKxLv9BjPlZPc1lopNlXf98rM5SicLYbhpU5fhVmDcPqiHru2L
	3n1yy/mg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xT4FJ-00000003yZ0-3yOq;
	Mon, 16 Nov 2026 21:28:13 +0000
Received: from mail-wr1-x432.google.com ([2a00:1450:4864:20::432])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xT4FA-00000003yLl-0FBI
	for linux-phy@lists.infradead.org;
	Mon, 16 Nov 2026 21:28:08 +0000
Received: by mail-wr1-x432.google.com with SMTP id ffacd0b85a97d-48e20ed3b9dso4246490f8f.2
        for <linux-phy@lists.infradead.org>; Mon, 16 Nov 2026 13:28:03 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20260707; t=1794864482; x=1795469282; darn=lists.infradead.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :content-type:mime-version:subject:date:from:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=8TdMvk4MSLOM7B2AUfqYT5uxdywhrc23UXtZE8vgWzQ=;
        b=Lq3S1zvTBuTw58zoH6x9L9wtIgyu+IWD9g+jg5mYIQsY7QlYVZMeVZ0cCapBtcBqwG
         SWyM1JwU3MZUxyO4VkI67P5y48Q9lZdohwUE/YRCMb+s0ac1vjIYe79lSY0L4B1JfeDS
         rdgOdPjCDO/MV6mkUFvAsoM7C3V3f3G4glYMSMTBdLNeYpV1wQ0XBxaw9WYoHUrSVSWE
         TznHMxH/Rc0EUG0cAFiDGN4zW0eEoKEc17J3nQr9r9x1SSHlfa5lEr9JMtckinA9S/4B
         QAD+PsERso1+MTZr8jEgjJrQe/ub29hBRWpLf2f2W6fGsryrRdh5N8xsAWE57bLnhh1g
         1J5A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1794864482; x=1795469282;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :content-type:mime-version:subject:date:from:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=8TdMvk4MSLOM7B2AUfqYT5uxdywhrc23UXtZE8vgWzQ=;
        b=CUPg80biVqvrOFJQDjDu95YHaav0ROFHSkb0UFqqfXJXQ01rpiVTv/fN1II2I6OL1M
         g2hufHsxoyFrwu13s1KDs28u8qFSVPcNCIOGuV7v/gh6rWEOU+bhR50GnFxtWy7Outba
         68eEMg+RffdHK9swmyrFxf9PFjb/ufg87IP7Kdf+Qo3CbTAHLAdfD1a1kVtANj3reswT
         E1HQ/jlUlEdvu2LhbNEX02FnRQuFsQH/7h9d95uSEPwG3pJdLDSu6Y0H4b65WwuEZLWp
         g16wGdGQeBbSQNVAFTC6/qsWJ6yCp496aZp3mrLFpLgOdHIc6IMaooc88v8b94KsE7sK
         GV+Q==
X-Forwarded-Encrypted: i=1; AL+hErFqs9ojhfVuEi3+CNkJEUB2vQxfOUTzo22lNWijGJiw7wdq+hAWKzaRlPziVtQ8ZI4NDUkgA2eMOTU=@lists.infradead.org
X-Gm-Message-State: APuU4Z+KWdCQAtLD3Y+jGEPns/E8KGt1JfDsDs+1Bh5z6qiLAh7Er02J
	YSvKev7554yrVdANRtGwALCwfWOBXz4t/g8KOMT+QNHudGaNXG4+u6Cu
X-Gm-Gg: AZFdTZeHgNBrmda+aFIc9yPkVceosycuOROdjZEvEe9nudXQj6Z1lT6Nf8v2Pzpmdh/
	bHUGsXwktkyxiP1PvU0aokcqCcwwH9xLhwqbUGUNIjYBlqT5S3fiOwgmPYFeDs4mrhUUb5Js6f2
	plw9PRBX3X0vmPsR6REm8RE9rRqFupNo0yX7xg0eZugV9H8PJ0X3spGGYn/irSPc1bcgvacZnUB
	NKLyYuEgLsqstJS6dx26oWzB17RA4vipwcMoqYvW1V9bww2+MtLgYBGWJSW8maAOjcyoeKmdS4Z
	V17pIi0vgAwTiRc84Q9vuLfpiZy/QckX7Sp0+cq8KVdDKva1B1AxQZUGKhNStTd+vnknLcvpU21
	iC0OsdoITHYX68JpimhOyGCNIpJt87Cd53wpOF+6AGml9K5l0fuQKmKv+hD9Ptf1z3ydxxfq71w
	VtZN2WU/5R5WYZIh6Vcrp0tUHBWIOoasVMxBF0oNM4KOMosPoVoIioUqaKIgWMrc/Y5usNyCU/2
	5clIB8q0qo7mYiyvQt7xYrLeH/n44+GhHYso4kxjG3TFdVNWjkGOYfhQ06/kO5Phu1Kd/8p9FtM
	UNy9EVtp1A1/4Dxcorah0MVPxzfKxX2fitq3Zn0x
X-Received: by 2002:a05:6000:5c7:b0:48d:f996:1814 with SMTP id ffacd0b85a97d-49c7325b40amr23107019f8f.57.1794864482125;
        Mon, 16 Nov 2026 13:28:02 -0800 (PST)
Received: from [192.168.10.105] ([212.58.121.92])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-4a378138cfdsm1260150f8f.58.2026.11.16.13.27.56
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 16 Nov 2026 13:28:00 -0800 (PST)
From: Stanislav Aleksandrov <lightofmysoul@gmail.com>
Date: Mon, 16 Nov 2026 21:26:30 +0000
Subject: [PATCH v2 14/16] soc: qcom: socinfo: Add SXR2250P SoC ID
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
Message-Id: <20261116-halliday-dts-v2-14-2c92438c6c46@gmail.com>
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
X-Developer-Signature: v=1; a=ed25519-sha256; t=1794864382; l=679;
 i=lightofmysoul@gmail.com; s=20261108; h=from:subject:message-id;
 bh=6bC47xmeKrVS8XaUkfpVIXGQqamVpsrDydmAXACmpko=;
 b=L3bECMGWqB70KSAXliPLAtrm9JvwyHz3xUlIS/JSaVuyDRybXKh4TJZIKniI807WZa1pL3+Ja
 bm5mXrDXMYUCX9Qe7poGqRt5BD+3P/4++4UczCRJAuB1UHs6hFIK/pI
X-Developer-Key: i=lightofmysoul@gmail.com; a=ed25519;
 pk=jeRUlfmkhE53CJPoeIIXgu7rTE0ybDRH0HQrEwbydzg=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261116_132804_409184_79C382C2 
X-CRM114-Status: GOOD (  10.35  )
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

Add the SoC ID for the Qualcomm SXR2250P (Snapdragon XR2+ Gen 2).

Signed-off-by: Stanislav Aleksandrov <lightofmysoul@gmail.com>
---
 drivers/soc/qcom/socinfo.c | 1 +
 1 file changed, 1 insertion(+)

diff --git a/drivers/soc/qcom/socinfo.c b/drivers/soc/qcom/socinfo.c
index 38efc5db7fa8..c5b61d28fc9d 100644
--- a/drivers/soc/qcom/socinfo.c
+++ b/drivers/soc/qcom/socinfo.c
@@ -529,6 +529,7 @@ static const struct soc_id soc_id[] = {
 	{ qcom_board_id(SM7635) },
 	{ qcom_board_id(SM6650) },
 	{ qcom_board_id(SM6650P) },
+	{ qcom_board_id(SXR2250P) },
 	{ qcom_board_id(IPQ5321) },
 	{ qcom_board_id(IPQ5424) },
 	{ qcom_board_id(QCM6690) },

-- 
2.55.0


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
