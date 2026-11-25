Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A5BB7606A31E
	for <linux-phy@archiver.kernel.org>; Wed, 25 Nov 2026 04:09:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=ZWpsOI43;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=gmail.com header.i=@gmail.com header.a=rsa-sha256 header.s=20260707 header.b=NaDfChNq
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Unsubscribe-Post:List-Owner;
	bh=0Hys3fa4GVD03CsbTRHhhp+rwKPUMeq4k8VRETjAVx8=; b=ZWpsOI43zQMqNzssUOO3Ju+h8v
	toBi6lvUgNajhs6PowB5Wtmd4tZ9jYMKqmdq0zCfjnpb3Fjxj+5SiS/PX4w1c6k+5RlDMKNSCqkj9
	elwqzYS5FhEzzi3uZG/Nw87hqSZiWp2x9eNS4fsyKl5MBQRrgDT5AHA8U5MVx/paYt4nsThPYhFYA
	Dtghi/avVka1lUe4m2aEJwHO9H53diI89d/cicNOayszBTCjTNxwAzAqJ7iVQDrdXxyxnHA5h17Vi
	YymeL7Sz/aAxwruLUtA+ItGoBWQWyMwkotXng8i6upd/olbZLh2N26hWK5kSylxZKEkyZqODI4s70
	d0i8s76g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xW4K7-00000008N0g-16ho;
	Wed, 25 Nov 2026 04:09:35 +0000
Received: from mail-wr1-x42a.google.com ([2a00:1450:4864:20::42a])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xW4K4-00000008N0M-2sQR
	for linux-phy@lists.infradead.org;
	Wed, 25 Nov 2026 04:09:34 +0000
Received: by mail-wr1-x42a.google.com with SMTP id ffacd0b85a97d-4ac08f4a0b2so3706099f8f.3
        for <linux-phy@lists.infradead.org>; Tue, 24 Nov 2026 20:09:32 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20260707; t=1795579771; x=1796184571; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=XR4oDLJjvjLlqtHJPH2Z7m3RTdZmrnGktJaMrZ+DmGg=;
        b=NaDfChNqWnD1E38ZzcMIZaqPimGCtdoygTNeS14JOWb1r+XSeCcUh+mA+YVNdPDzuN
         khdZyBdkeZq9rSvkyNGGt7UbEhclR5XwhoG5XXcTFmCPqFDYGeYhxsn/GqzMtwDSdlNu
         flk7I86i13Jm2PsPAXtZVJeHXarRTKViSzr4eLtMrboXh3dSwrBtco1w8jYKJc7jTXyQ
         UsNCwd8UTnrGTFRTHsXTrERDRJt6J1CVoa0gxWQOI4nCxcib+bKHXVdusDyDEFacmE2J
         98+uBQSbNeP+hZR5zLaWtYoPcseB5ueEVsFGa1FV518VNyOWaxsz0DEFqWBT/pic0TR3
         35Yg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1795579771; x=1796184571;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to:content-type;
        bh=XR4oDLJjvjLlqtHJPH2Z7m3RTdZmrnGktJaMrZ+DmGg=;
        b=Ny75ug4f2RgUtkVWVzxtwlJLBk6Nmh7PeiqDXhTvTshVpQj1fh7Wj/jcTJnlILeFpW
         gkAEb4S2q51CQDyvAjXkeeCFPwWnMHkQecI+9O5AtjB4Y4SR5w78R5JWVyfMeFmXnTMs
         2DmIQhiLyeGPkAtSNlAgzepM71IkFpsDMYXMX1UZZku4D3jIAgPsl/TtzMvpuAVqofb1
         t894pCz6OntK5932ydjja6VauJz6tbcAtgCtFVvsEKYj6EPjgZ1QqSiMJtLN/dg341H6
         lBV0b8zC31yFhEoV0k1nJmz5PDf1KKe15X8WPw9TjBObgSSFIt0kXOuRSMb+6FOwqTMl
         d7eA==
X-Forwarded-Encrypted: i=1; AL+hErEvdCOINCXt2gHM6YcsXsbtfTCx7voh2V5+i5E3mktb85QBzVkORMESdCl1jCnbNZHdCGhrxqgIkhc=@lists.infradead.org
X-Gm-Message-State: APuU4Z9qIoVQaOceqn2nV7sM2tASRn94fMHVxE9AzCNm3k0xbkJEULIJ
	kcA73FP8MyRvIJHYStJnCraBTxGKkI3uYH0XRUjYODO5w+QRGk36n+6M
X-Gm-Gg: AZFdTZcUhj5Yio3OFN+0XTDn1/KjW7R74HX2w33ME5LSntAtIqAQKRjL98cV+aVZnfR
	1G1Uw0Q6sbI9xjA6/HAyvf+iM7sOiqM/y3IwRG9YaQCJe9yO/eeSVYk/CXtKkEJF1vp/uzFp1jb
	a9iJwRs7FerDVqHrqsQbENZZdA3LJmL0ibuXsrYyG9kutobh6mtOCiGvHq5ITh+aja+OPevXnIF
	aIDhNnoDvdREDbqfM7OHxWafFQIDSsJhEli89dyslpPjX3qOosXdP1e6ap9ZoDsXsrEPvXkWtTJ
	4I3JLnSZdwsxZtzkXTd/OuiArEtAXGWTom/YMLS7hFmVdHT0qaA3WrdGOHd0kGmXMjiIs8g2SN+
	HaprbUQPV/BeNX9ZkXwTmtNf7icm9j9/pcpYOcAiqx05bW/XJzQq+U37hut90i4DsVbDPfdgvvX
	zsIDPp1YvrmxAFpoj3inPtpycKIBHWINfcoNZqUN74PY8EISHPyNxO3QXNy83gcWRh3YCIQkb64
	yvMlIHlddQ4PsxpLKMNAn/X2k3Sc062eyDNHlHGJP8OPPaZwJBoPinw2V/VtagE0ZhysI/s1VO9
	BW8QKmKl1IX/f9FY8Q6sGCEbMSA=
X-Received: by 2002:a5d:5888:0:b0:487:1ac0:32af with SMTP id ffacd0b85a97d-4abb47b0fb1mr31743230f8f.51.1795579770667;
        Tue, 24 Nov 2026 20:09:30 -0800 (PST)
Received: from flare5 ([212.58.121.92])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-4ab6b10b5f6sm29545143f8f.34.2026.11.24.20.09.24
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 24 Nov 2026 20:09:29 -0800 (PST)
From: Stanislav Aleksandrov <lightofmysoul@gmail.com>
To: sashiko-reviews@lists.linux.dev
Cc: Bjorn Andersson <andersson@kernel.org>,
	Konrad Dybcio <konradybcio@kernel.org>,
	Abel Vesa <abelvesa@kernel.org>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Robert Marko <robimarko@gmail.com>,
	Guru Das Srinagesh <linux@gurudas.dev>,
	Thomas Gleixner <tglx@kernel.org>,
	Radu Rendec <radu@rendec.net>,
	Will Deacon <will@kernel.org>,
	Robin Murphy <robin.murphy@arm.com>,
	"Joerg Roedel (AMD)" <joro@8bytes.org>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	Wesley Cheng <wesley.cheng@oss.qualcomm.com>,
	Vinod Koul <vkoul@kernel.org>,
	Neil Armstrong <neil.armstrong@linaro.org>,
	Manivannan Sadhasivam <mani@kernel.org>,
	Alim Akhtar <alim.akhtar@samsung.com>,
	Bart Van Assche <bvanassche@acm.org>,
	Bean Huo <beanhuo@micron.com>,
	Stanley Jhu <stanleyjhu@google.com>,
	Herbert Xu <herbert@gondor.apana.org.au>,
	"David S. Miller" <davem@davemloft.net>,
	"Rafael J. Wysocki" <rafael@kernel.org>,
	Viresh Kumar <viresh.kumar@linaro.org>,
	Amit Kucheria <amitk@kernel.org>,
	Thara Gopinath <thara.gopinath@gmail.com>,
	Daniel Lezcano <daniel.lezcano@kernel.org>,
	Zhang Rui <rui.zhang@intel.com>,
	Lukasz Luba <lukasz.luba@arm.com>,
	Georgi Djakov <djakov@kernel.org>,
	Sibi Sankar <sibi.sankar@oss.qualcomm.com>,
	Ulf Hansson <ulfh@kernel.org>,
	devicetree@vger.kernel.org,
	linux-usb@vger.kernel.org,
	linux-phy@lists.infradead.org,
	linux-scsi@vger.kernel.org,
	linux-crypto@vger.kernel.org,
	olteanv@gmail.com
Subject: Re: [PATCH v3 13/14] arm64: dts: qcom: Add initial Halliday dtsi
Date: Wed, 25 Nov 2026 04:09:14 +0000
Message-ID: <20261125040914.2399053-1-lightofmysoul@gmail.com>
X-Mailer: git-send-email 2.55.0
In-Reply-To: <sashiko-outbox-232541@kernel.org>
References: <20261125-halliday-dts-v3-0-5c8311c0b70b@gmail.com> <20261125-halliday-dts-v3-13-5c8311c0b70b@gmail.com> <sashiko-outbox-232541@kernel.org>
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261124_200933_081805_270A8DFA 
X-CRM114-Status: UNSURE (   7.33  )
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
X-Spam-Status: No, score=-7.8 required=3.0 tests=BAYES_00,DKIM_ADSP_CUSTOM_MED,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_EF,FORGED_GMAIL_RCVD,
	FREEMAIL_FORGED_FROMDOMAIN,FREEMAIL_FROM,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,MENTIONS_GIT_HOSTING,SPF_HELO_NONE,SPF_PASS,
	USER_AGENT_GIT autolearn=no autolearn_force=no version=4.0.1
X-Spam-Checker-Version: SpamAssassin 4.0.1 (2024-03-26) on
	aws-us-west-2-korg-listserv-alma10-1

On Wed, Nov 25, 2026 at 03:58:44AM +0000, sashiko-bot@kernel.org wrote:
> - [Low] arm64: dts: qcom: undocumented qcom,halliday-cpufreq-epss
>   compatible
> - [Low] arm64: dts: qcom: undocumented qcom,halliday-tcsr compatible in
>   tcsr node

Both bindings are already applied and in linux-next:
https://git.kernel.org/next/linux-next/c/7ceab1723610
https://git.kernel.org/next/linux-next/c/1cf95fbec47a

Stanislav

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
