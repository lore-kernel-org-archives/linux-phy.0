Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6491C606A329
	for <linux-phy@archiver.kernel.org>; Fri, 27 Nov 2026 23:15:11 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=I0R6q5KS;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=gmail.com header.i=@gmail.com header.a=rsa-sha256 header.s=20260707 header.b=KH9yeOBa
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Unsubscribe-Post:List-Owner;
	bh=r6UOYehHlG/bs9GRyLzA3Chg14TWMQdSrMH9FGu9BnI=; b=I0R6q5KSKcBhA2CL64n2879dBV
	DmVgeF/7fxme7Rf1tgePGfs5ZYjCpSOa180usFyrqRxFZLUDEpvdeRBVMV7HyrQtWu0C7SHjbsGWc
	U3RtJofvVTGF/3u7QUv7gVrhnFUOEAppVRhak9QC9Jp/FAUC04KWk9H2oeX9+ZSaKaUinVPqqZ8b/
	/0FH/eZyyByWhi9skiNvIw3ZKJo4X4l7PkJakwj1UsxXo2cxqHK2y8t8SgnYkbVgekSdChDe3zXvV
	TuV1ZinxIJ8511lraiYHEwRRJDw1fc0Oeb8TET6MLj4tOuy0rxVyDBrM5SINTNwlVBT2Nxh488r4Q
	VRHKBlsQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xX59q-00000000BGJ-2mWJ;
	Fri, 27 Nov 2026 23:15:10 +0000
Received: from mail-wr1-x431.google.com ([2a00:1450:4864:20::431])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xX59n-00000000BFS-3cLb
	for linux-phy@lists.infradead.org;
	Fri, 27 Nov 2026 23:15:09 +0000
Received: by mail-wr1-x431.google.com with SMTP id ffacd0b85a97d-48dfc0421d9so7810216f8f.1
        for <linux-phy@lists.infradead.org>; Fri, 27 Nov 2026 15:15:07 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20260707; t=1795821306; x=1796426106; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=U1M+MDeqlkODjZ50qKjXMO75f40J30DxxF3l7NYSGEM=;
        b=KH9yeOBaaZ/ekVBYe//xEGGbm55Avq8808MwFwRhmpAd+Ct6kCgxqftkx3A8R674FQ
         vHbcPI2RuB8p1KNKykmtFT57bWa8MdNO/39iQA5GOudntJ/l5eFkPitaEdl8TRTF5Kbi
         H//X4pQpjHrWl9hO/2lUPUA2Eqjp5lSApMYCUxS1ZcrsLXsihEh58unXNCkdpAeH3nCH
         NZWJCqSOkvMyZ1GIqrDKCWgr9Sj93tbC4HKY2Ujg3Iy5WV5JrMlg5fzi45Aiwrlt+4N4
         RrrRlL8Yag6Bpjp60gqU2sjsjZpvJ3ALkYxJx1Lhm75Cw/3Ps9/nMSxOzS6IfUlpxivU
         Axdg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1795821306; x=1796426106;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to:content-type;
        bh=U1M+MDeqlkODjZ50qKjXMO75f40J30DxxF3l7NYSGEM=;
        b=aPQUnmwLzDSIuY/u+6cnZg3jIeqFMWk0A1ETc4otPERVvvaY9kmHEfrNcGNJCMhIeQ
         sCf42SbzUoA9HAYWhRET6x7Q0xt9dExS1tW8qy4ECllPTcmxRetZdiTpIboTuhG/AsZi
         kysQt6/gj+OElEn9p7Vt/9VhbweqQOoIWZ1EGCa44J1frth7jF5Fm9nCjWMZzjJjzkPI
         0YqOHhupzR/4+Q0nxRs5eU8IiMP9rJhB5C+5moJrXdn7LE93GyDsPDYznE+7CC8gQvgI
         8nvW6gvwsaYEjWBMfgT2FcyL9eWlA4kA5hSpmwsuoEHhdU+PO9zW6kspc3b0m84LG+71
         pXfA==
X-Forwarded-Encrypted: i=1; AL+hErGHgPTRYw4kfbphbiodetkd5taPdccr4y9rf5TqIJ7bwlS8I61rnmt1OUeCZV/Zhkg/+dscAvZhrE0=@lists.infradead.org
X-Gm-Message-State: APuU4Z/+Jk45/H8jiBPW/5voZsdEDVxmW3kCrr3xOzCXGMktlqPZ0X74
	czPs7m5KTpk86CVwHbc+K9kO1zizD5SKCxpYdmnTslBbYF/qnpLVnPk4
X-Gm-Gg: AZFdTZe4vLTqqw/Pd7cDa2w4FdOLoROPjqraDdhJdTLYELGUZbJrDftpwep04wtmtPX
	2ra6qd+BfRchLEJGZaD/W9jf1nkYjobOXhS/25tPT8qZKBWSyQFHxSvIu8jinNd+/ao+iuDtz+f
	s85RYx5a5B1iJGI821Tbn87fprwFURpfA2sFR3orIOTZiEbNL0z9PQevacOgmNaXQE4Cs5zybfJ
	mg/FANG6JHibIV1O7ZqjgGkWzudBpwUOKFZd6XP5jHG5Qz5HTqziyG4x5P+uSWoYh5elwIsyMHl
	BS4sm1Iu+s320skglG5Lch3zGyNDE4cnK53AyQeB/CviuidkgO6WPFhUtAklK5TH3UTRm0vjow7
	Vv9fdw/unoU4NzaygiRkMz8snm0WRAeZTmxN3+AcDZakLXtQPdYBxJF4sbmfV5+GsBqLRwNpjvE
	2N9yyBD4Eq1SH6C4fjxj+PoNZcPrIsTjzNf+sMtS5zZ+0gcozCVDTQdP9knI/nmHd/ywdUmnC0L
	mB0E3b0IDfnwbvacJIiF4l4oAcu9Pk9hoqKfpZp0nB2nKknAQiSoG9uAqcuNtpAR6ycytPKgMsZ
	YetsLOywI9+GuOk9/Ttyb6ha9SA=
X-Received: by 2002:a05:6000:178f:b0:4bb:c85e:d565 with SMTP id ffacd0b85a97d-4bbc86e17b5mr14733028f8f.55.1795821305534;
        Fri, 27 Nov 2026 15:15:05 -0800 (PST)
Received: from flare5 ([212.58.121.92])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-4ab6a67fe48sm45269880f8f.23.2026.11.27.15.14.57
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 27 Nov 2026 15:15:03 -0800 (PST)
From: Stanislav Aleksandrov <lightofmysoul@gmail.com>
To: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>,
	Bjorn Andersson <andersson@kernel.org>,
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
	Ulf Hansson <ulfh@kernel.org>
Cc: linux-arm-msm@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	iommu@lists.linux.dev,
	linux-usb@vger.kernel.org,
	linux-phy@lists.infradead.org,
	linux-scsi@vger.kernel.org,
	linux-crypto@vger.kernel.org,
	linux-pm@vger.kernel.org
Subject: Re: [PATCH v3 14/14] arm64: dts: qcom: Add Samsung Galaxy XR
Date: Fri, 27 Nov 2026 23:14:45 +0000
Message-ID: <20261127231445.3623202-1-lightofmysoul@gmail.com>
X-Mailer: git-send-email 2.55.0
In-Reply-To: <87280d80-9047-405b-8dcc-11276d34d2dd@oss.qualcomm.com>
References: <20261125-halliday-dts-v3-0-5c8311c0b70b@gmail.com> <20261125-halliday-dts-v3-14-5c8311c0b70b@gmail.com> <87280d80-9047-405b-8dcc-11276d34d2dd@oss.qualcomm.com>
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261127_151507_970539_D89CBF60 
X-CRM114-Status: UNSURE (   9.92  )
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
X-Spam-Status: No, score=-8.8 required=3.0 tests=BAYES_00,DKIM_ADSP_CUSTOM_MED,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_EF,FREEMAIL_FORGED_FROMDOMAIN,
	FREEMAIL_FROM,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_CR_TRAILER,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,USER_AGENT_GIT autolearn=ham
	autolearn_force=no version=4.0.1
X-Spam-Checker-Version: SpamAssassin 4.0.1 (2024-03-26) on
	aws-us-west-2-korg-listserv-alma10-1

On Fri, Nov 27, 2026 at 02:58:40PM +0100, Konrad Dybcio wrote:
> Reviewed-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>

Thanks for the review.

I've implemented support for almost all of the hardware in my
local branch and I have found that the headset exists in multiple
revisions.

So, I'd like to make a split:

rename: halliday-samsung-xrvst2.dts -> halliday-samsung-xrvst2.dtsi
add: halliday-samsung-xrvst2-rev22.dts
add: halliday-samsung-xrvst2-rev25.dts

The .dts files will initially contain only compatibles.
The real differences between the revisions are the DMIC drive
strength, the display panels and their supply voltage, so the files
will be 'empty' until I send my sound and display series.

Is it OK if I send the split in a v4, or is it better
to do it in a follow-up?

Best regards,
Stanislav

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
