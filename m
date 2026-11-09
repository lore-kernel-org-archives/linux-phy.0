Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 76F5D606EE86
	for <linux-phy@archiver.kernel.org>; Mon,  9 Nov 2026 08:50:48 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=035PQWJT;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=infradead.org header.i=@infradead.org header.a=rsa-sha256 header.s=desiato.20200630 header.b=dEhe4tjn;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=gmail.com header.i=@gmail.com header.a=rsa-sha256 header.s=20260707 header.b=cCocyMKf
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Unsubscribe-Post:List-Owner;
	bh=Wgh0G0zUQNvMXt1VLFqkkPUPhKbY186UfUXmh1wNibQ=; b=035PQWJTv1titzLbPylSlD07pA
	hURm2xHgZx7gjswJbJEROpr8LiSrwIm1y12Nk5x9F/h//7peBdAu69+W0uw48GqkmedVnpLzH7WLs
	fbo0IoUsTQVGr4qRmYGh0PicyGP0m1l8FHgWgM4a2p0UGJj2mJkvlCqQjjYfeQNc7uOVetwtrfnaP
	9kjsNokih3VggHGKEWqilxk6xGZXgPC49wqcFWoQ2jr+FrPrq3jJZ5hEHodPGwH9/vL/EUQEmYcj/
	dsSgmDVINaHrptd0CHIsSz6QuV8y48KaDaH0pxCuW+yNHnCBR4dtdC51DVHO0/I9EPFdeqQHEu5W8
	QgnT86mw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xQL5T-000000008hl-0Y4S;
	Mon, 09 Nov 2026 08:50:48 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xQL5R-000000008gR-1Gy7
	for linux-phy@bombadil.infradead.org;
	Mon, 09 Nov 2026 08:50:45 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Content-Transfer-Encoding:MIME-Version
	:References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:
	Content-Type:Content-ID:Content-Description;
	bh=Vjj4rdSbpcMkkjnNoByhSOYk/2BEXBPon42q9R20zeY=; b=dEhe4tjn/RK2dndyOTfPDzLvP+
	99YFlBo7rSvaqb6ZQFnuUQGL9QVQrajtZipPhOG26xEdDDgDnuQaq94N+3bNwVzm6DXaOkaEyQTvJ
	uXBwr0FgI8rquWzhukPtx5SIdUqnAYs/0RcA2Y1f2lLvqy9fi29TGXTCSZwuJnQm6nnu3IkRtGjc4
	FJdEDXEjDkGWJCjKshXjV+hZa0+se4oEl5pKmA60vJ4oDhmBpjB2BpKzZw5wfBpHcukw73PM/G2CX
	BPGsRDTUtARW+KmxIr71qkL/pfNElVPiYIm8Zo2b2omce6qkE7Jf2rDB2jQqj/FfS13DpzyBWqf+O
	rSIE4ZXg==;
Received: from mail-wm1-x336.google.com ([2a00:1450:4864:20::336])
	by desiato.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xQL5K-00000006Tl1-1yCi
	for linux-phy@lists.infradead.org;
	Mon, 09 Nov 2026 08:50:43 +0000
Received: by mail-wm1-x336.google.com with SMTP id 5b1f17b1804b1-4a35a60499eso4038015e9.0
        for <linux-phy@lists.infradead.org>; Mon, 09 Nov 2026 00:50:37 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20260707; t=1794214236; x=1794819036; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=Vjj4rdSbpcMkkjnNoByhSOYk/2BEXBPon42q9R20zeY=;
        b=cCocyMKfkVRn/yHfi8425gjU4ogBrwKnJ9yuo8ClRX/e6ZDpm+W7gDXLMJihzZa9h/
         MeG52DYNSpPBLu93EPJZTDAWouBmmLVq7WR+NkhvSNcNbh2PYVL+KZJP6xgs43nkvr1G
         WVFD8oazP47nSPVLJ85peM6eDq+lsDXdAWF2gi2N47KKsJAEGwzhnt9tM+0PhuG6zlH9
         BapbBDf9b36+VXQaTBc5I4IdMhTDed08UcKseWWgGrP88FurJoXfllK9xyUDIs0W8Oa6
         PZLBlwWE5/7+mAJ2mZlDnczkJIfwdVo5HQ/XLdj34E8EpItr//XmELrIgCiObgUc0J7I
         MC7w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1794214236; x=1794819036;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to:content-type;
        bh=Vjj4rdSbpcMkkjnNoByhSOYk/2BEXBPon42q9R20zeY=;
        b=vyZLW28UJOwRdFM0e2ZjX+6LxAL4z60bj6smHj0uutpVLHv2F+SRW621ai+/TGNZYx
         f+CJ/Z64VL0dVm45PYMdRBtpibi2Z0BcT6b0gvXCCLFLMTv4GicWr4K3EKGF5Aggp84b
         +A/XaAaKTEfptU3dn163f2QVxX+JLx8J76iN62hKq1bQGzDGzLcblDUfXaqw7vyXNYYL
         12ig5O/CqhKFRwd/RjAncXMUueiWaUWlO+au1h8BRtUJ79CpXzQZ8QKGjMKruyrzN2qU
         4OBgbIOI6WhYqI+IdrfR0SEVWgl3K5Blnb/jAP+/zkTc6L2sZVXBVFoUAxpvo8C3vQtK
         uohg==
X-Forwarded-Encrypted: i=1; AL+hErHuBMb2VXS3daa+0XKJvVx0ZLdDPPYTETknzTCJy1DWKMPfV0WAvYGMecRxzgvdpmgGfY4WAeKzUFE=@lists.infradead.org
X-Gm-Message-State: APuU4Z/MKnExpdkx4F8+0Q1+hwrxQo3pzg83AjdPgxdAxt/WWwcE+thU
	VMmf+jRor5rl5hHzul7IK3B7piQrRE/L96P/V8vvm6tBRmESRVm952rp
X-Gm-Gg: AYBFou3deWhBTiM8gy3meRAAJDqgSVOrL5dC5y9iyg+yp0DIJo/F5zksiNGjz/7k14I
	wZQT/CCkupHWTdPwZh02zl2hbZH0wP38QEk2RmDXD4cTk/SdJeG92e4dHdCUN1sfH5z6MMfQIKe
	2bnL5hgWLQTJn5hn+vt+1sR8I7UkM6jBi7cKVpDvTx4FsGSvf7xFUmjVpFdyJHy7hSoQ/7jobY8
	2uM8KARUPcXQrWv6LKmSJWxOZNN1DoNPZqCIFvoxX8bd0Z4hlrgkLakbdzn5HjfNxSKx+bkEMip
	qKA9It3Sv2BFwXVA74+ZXHCoC0j3dr0uTEOWyYdNrns6wNsOKI5qFn2yfrGr/kZ8uuJ8BYVaRhC
	4o4vR+39qzRM46uFKKA15PEvOfU0hDL99ceOVGOhgSQm72bRvtI/7g7mfZiy4EVROlBW8QLWQqn
	pV9qH+wBz7nnFAhSDZxhJALc5APwUKMvaEZF67QfLmN4EIXorWLJ2+Xsx9VtSVC+Yggs6AN6tKn
	aw69hoPWVpOXXpT/Lq++5v6SbRP1lXNIXAk2UgVpcqvBSDng4XoJAk0kgb8jQ38UuN7XwuZy3Gt
	ZV/pnsD+AVYyTnYkaqvwNqDycZ0=
X-Received: by 2002:a05:600c:3b1a:b0:4a1:cf60:dcc3 with SMTP id 5b1f17b1804b1-4b963c7e496mr65389125e9.29.1794214235848;
        Mon, 09 Nov 2026 00:50:35 -0800 (PST)
Received: from flare5 ([212.58.121.92])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-4b79502d5b1sm147015055e9.5.2026.11.09.00.50.30
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 09 Nov 2026 00:50:35 -0800 (PST)
From: Stanislav Aleksandrov <lightofmysoul@gmail.com>
To: Krzysztof Kozlowski <krzk@kernel.org>
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
	Lee Jones <lee@kernel.org>,
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
	linux-arm-msm@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	mfd@lists.linux.dev,
	linux-arm-kernel@lists.infradead.org,
	iommu@lists.linux.dev,
	linux-usb@vger.kernel.org,
	linux-phy@lists.infradead.org,
	linux-scsi@vger.kernel.org,
	linux-crypto@vger.kernel.org,
	linux-pm@vger.kernel.org
Subject: Re: [PATCH 16/17] arm64: dts: qcom: Add initial Halliday dtsi
Date: Mon,  9 Nov 2026 08:50:19 +0000
Message-ID: <20261109085019.1751534-1-lightofmysoul@gmail.com>
X-Mailer: git-send-email 2.55.0
In-Reply-To: <9dbfc665-089c-45f7-bca2-74caee322885@kernel.org>
References: <20261109-halliday-dts-v1-0-289114ab8197@gmail.com> <20261109-halliday-dts-v1-16-289114ab8197@gmail.com> <9dbfc665-089c-45f7-bca2-74caee322885@kernel.org>
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261109_085038_810318_73D5BD75 
X-CRM114-Status: UNSURE (   9.57  )
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
X-Spam-Status: No, score=-3.8 required=3.0 tests=BAYES_00,DKIM_ADSP_CUSTOM_MED,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_EF,FREEMAIL_FORGED_FROMDOMAIN,
	FREEMAIL_FROM,HEADER_FROM_DIFFERENT_DOMAINS,MAILING_LIST_MULTI,
	SPF_HELO_NONE,SPF_PASS,USER_AGENT_GIT autolearn=no autolearn_force=no
	version=4.0.1
X-Spam-Checker-Version: SpamAssassin 4.0.1 (2024-03-26) on
	aws-us-west-2-korg-listserv-alma10-1

On 09/11/2026 09:29, Krzysztof Kozlowski wrote:
> Odd license, suggests you copied it.
>
> You should retain original copyrights as well.

The license is BSD-3-Clause because I used sm8550.dtsi as the template
for the node layout. The values come from Qualcomm's downstream
anorak.dtsi, which has no license or copyright header. v2 will add the
Linaro copyright from sm8550.dtsi. I'll fix the other comments in v2
too.

Stanislav

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
