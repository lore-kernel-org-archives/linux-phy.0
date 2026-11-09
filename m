Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DFDC8606A33F
	for <linux-phy@archiver.kernel.org>; Mon,  9 Nov 2026 00:33:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=Ro/P5C1O;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=gmail.com header.i=@gmail.com header.a=rsa-sha256 header.s=20260707 header.b=uge5oGya
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Unsubscribe-Post:List-Owner;
	bh=Ma+w/qUtedZ4oCLLsHXn+ywdR/q8fPZmGrCRuq8dQNI=; b=Ro/P5C1OicurMttwm6dy6dWDxb
	ywSsu7fd6KSlPMVik4hLX6MPQxRxYcVeus2P0z4z5YZn3aRBIW1GAGjffj0Ovrf1PcCdhUFhNYTNs
	5gtZGRlcP0AeONRhztMgg5D+lvHZoqQ4nP+LIMwCAUfbNwQF+cMbTjb64ftP1YrK6B19mBH8GVTMr
	7R4orwMWN2VHDjd6ySaEjGrhXEkqMLf5AP8r3nOsX2LVfgKla+nc4nndykniGj9zkj6bZMkmkSduN
	WDxwmUtR8lG7XMWZP/Es4jKTTCyJaV/AtRC+5+h7btmvvYgAqrMEXSxNPZwL7fot3uhIj53sZKjpX
	H6/C39Xw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xQDKc-0000000GyHT-2hXT;
	Mon, 09 Nov 2026 00:33:54 +0000
Received: from mail-wm1-x32e.google.com ([2a00:1450:4864:20::32e])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xQDKZ-0000000GyDE-3cWU
	for linux-phy@lists.infradead.org;
	Mon, 09 Nov 2026 00:33:53 +0000
Received: by mail-wm1-x32e.google.com with SMTP id 5b1f17b1804b1-4a9a8d6cea8so3478755e9.1
        for <linux-phy@lists.infradead.org>; Sun, 08 Nov 2026 16:33:51 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20260707; t=1794184430; x=1794789230; darn=lists.infradead.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :content-type:mime-version:subject:date:from:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=vT2VNwBxc63eyIezByShTBVkpV/95J6JPEp1UHJT0Ow=;
        b=uge5oGyaehYj9SeuWRl99e06EFhT07t0hsBi/fb5OspgI0ktwmR/Ehpkfq3sgDOWG3
         VeKjye/+5W/jzZjb2Tzmif6eCGlfeaYxO4HEdAk5pSzZPxTcbNkBTvRTAxNAMrXt3qyE
         4nN4PxqG+KEqgLT7/8OrLuFYuQyqUMvuRZ6VXulta98PLmnSJs08tengkk12iM2ijOaH
         ykjpLE4dhSbw0nUJbNkfqQ3EM+WvtCvqeHiX20XoaGLE5+zLjt72izVPAX8enSM1WBlN
         rZor5ohPDuyn/iX5aoyj/gIPRvKaFn70Y6hsU8cxOz1BNrVXq4zBIrvZZmMFkun4lWhR
         qu7A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1794184430; x=1794789230;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :content-type:mime-version:subject:date:from:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=vT2VNwBxc63eyIezByShTBVkpV/95J6JPEp1UHJT0Ow=;
        b=0vweyUtwvfGjwwNsmD4GURXT2Z/7+zj4eu8/LSVpPywNJuzvpkbr8Tc1dKv7fl6YDU
         pt06vgoZdOkMUzXDPWLq+yqc6coMOGRanp07zC8UAA3rXZmxIXsg3yQgPohKv6uCmrf4
         GibsETC3pzndlNW14ZAmcbUXWSA4QFMbqzhDVxEGns13UiOv3zQ0HqaZp+m3FUTefXfK
         tJhDNiC4Hcj19wt7ZzbLLifDiOvmAYoiQXxA9cCmtiT//I7IvzoXHLhRFgTT/Ob0EkBG
         lIdd/vh5P2Lx0i5NiXe7G6bkS8xNxj4qWHxSO9K8CK99Ve3MO/GVU7liWnMMTFX0BXQf
         OMSg==
X-Forwarded-Encrypted: i=1; AL+hErGgdcIBd5chOJ7E5rHM5Us4H1ntOp1mss90cG8Sc38oImdNz0OBqHmHoPt1IKsybAv4e8cis/2ytAU=@lists.infradead.org
X-Gm-Message-State: APuU4Z82DNYnuvSEqwhD+bgTvslvnxg6UV+uElybYlgw1Lpj0AicIKLo
	FeTrWdgkBrfb9U1u0vY8M5tv9gHFmNbMZu2fyrJFUO+ma9/P5ZpDn/bI
X-Gm-Gg: AYBFou3BFGy0OF5GdAZWwko0o06Xq6saY3xDMovtK33olpQIyoMy+uZiXxkf8NKJlA5
	IBS7Ud12iK/s3LpM9rEaUdhxYjMM2eydIjOpxblxsOwkNN4FMtSNWgnaGepzwdDpTwFmp5VbmH+
	+niBqH2nSpwR54xR6SveWG9VnxN84H+VBFnkML5DZRxmHKmGub2inQMtnjF2vgu6qVoYIBZxKYB
	OolUpenTh9FHxF1072MOYpdBChQp3M6MO2TOkjq0Ikg8Zk/Cfe+B7+PeH2nONt2e4BMifUPYoph
	ElFnTyYpVaCFJ1Ef+Stxvb/ea7qbewdMP4ZsL/ph/WpfBtmixL7QIJfje7omx4FzM5QdG/fTepg
	5Kwv6T9XzA8NWljjjGzdYjbmv/zxqZilSNTCe8k0MZZ2P6UQa+255opAv5m/IsjWOPrGddoFfgt
	YaOXOzRNg47q3rzslE7JfcAXYkxoL3o53cFlUDXQbabSH7ag/bWBBUkrz9lu0YLkgAxWdmDJNbf
	H/i1ZVcOVl51o14TNCnEZbGtj4jGaLlepalOaw2m3YUcB0RE4eJmqbZtLqVpKGV9PMClv67Sc70
	OVCu5cU/yluJ5ssaTlWppg+UIORhCvopXu6M0oLA
X-Received: by 2002:a7b:c34c:0:b0:4a5:9224:fa10 with SMTP id 5b1f17b1804b1-4b8205a7b74mr74612065e9.18.1794184430004;
        Sun, 08 Nov 2026 16:33:50 -0800 (PST)
Received: from [192.168.10.105] ([212.58.121.92])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-49592f39c8asm6541675f8f.7.2026.11.08.16.33.45
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 08 Nov 2026 16:33:49 -0800 (PST)
From: Stanislav Aleksandrov <lightofmysoul@gmail.com>
Date: Mon, 09 Nov 2026 00:33:17 +0000
Subject: [PATCH 05/17] dt-bindings: mfd: qcom,tcsr: Add Halliday TCSR
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
Message-Id: <20261109-halliday-dts-v1-5-289114ab8197@gmail.com>
References: <20261109-halliday-dts-v1-0-289114ab8197@gmail.com>
In-Reply-To: <20261109-halliday-dts-v1-0-289114ab8197@gmail.com>
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
 Sibi Sankar <sibi.sankar@oss.qualcomm.com>
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org, 
 linux-kernel@vger.kernel.org, mfd@lists.linux.dev, 
 linux-arm-kernel@lists.infradead.org, iommu@lists.linux.dev, 
 linux-usb@vger.kernel.org, linux-phy@lists.infradead.org, 
 linux-scsi@vger.kernel.org, linux-crypto@vger.kernel.org, 
 linux-pm@vger.kernel.org, Stanislav Aleksandrov <lightofmysoul@gmail.com>
X-Mailer: b4 0.15.2
X-Developer-Signature: v=1; a=ed25519-sha256; t=1794184395; l=720;
 i=lightofmysoul@gmail.com; s=20261108; h=from:subject:message-id;
 bh=sz0jgm6yJ2qfmdfMMgsqR7Wg9ExS4UZymLewfvVCvH0=;
 b=uUjeKsqz31kCcfPZSa8Z47M4B7r1CADYAoSad8joeZDRvAbLwLDkhf9ZDymLvxVoerAVE+UqI
 g/farVtv7C7AYkuFx6U6v9lz+2+4yx0RS/OmA8jjU0ljraJ4I1qJLhy
X-Developer-Key: i=lightofmysoul@gmail.com; a=ed25519;
 pk=jeRUlfmkhE53CJPoeIIXgu7rTE0ybDRH0HQrEwbydzg=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261108_163351_980789_5BD2D8AC 
X-CRM114-Status: UNSURE (   8.78  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -1.1 (-)
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
X-Spam-Status: No, score=-12.8 required=3.0 tests=BAYES_00,
	DKIM_ADSP_CUSTOM_MED,DKIM_SIGNED,DKIM_VALID,DKIM_VALID_EF,
	FORGED_GMAIL_RCVD,FREEMAIL_FORGED_FROMDOMAIN,FREEMAIL_FROM,
	HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_CR_TRAILER,INCLUDES_PATCH,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,USER_AGENT_GIT autolearn=ham
	autolearn_force=no version=4.0.1
X-Spam-Checker-Version: SpamAssassin 4.0.1 (2024-03-26) on
	aws-us-west-2-korg-listserv-alma10-1

Document the TCSR block on the Qualcomm Halliday SoC.

Signed-off-by: Stanislav Aleksandrov <lightofmysoul@gmail.com>
---
 Documentation/devicetree/bindings/mfd/qcom,tcsr.yaml | 1 +
 1 file changed, 1 insertion(+)

diff --git a/Documentation/devicetree/bindings/mfd/qcom,tcsr.yaml b/Documentation/devicetree/bindings/mfd/qcom,tcsr.yaml
index a021e4dea486..e8a681b5e6ad 100644
--- a/Documentation/devicetree/bindings/mfd/qcom,tcsr.yaml
+++ b/Documentation/devicetree/bindings/mfd/qcom,tcsr.yaml
@@ -17,6 +17,7 @@ properties:
   compatible:
     items:
       - enum:
+          - qcom,halliday-tcsr
           - qcom,hawi-tcsr
           - qcom,maili-tcsr
           - qcom,msm8976-tcsr

-- 
2.55.0


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
