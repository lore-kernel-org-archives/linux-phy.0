Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9383A606A31E
	for <linux-phy@archiver.kernel.org>; Mon, 23 Nov 2026 21:17:47 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=WsAMOAc7;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=gmail.com header.i=@gmail.com header.a=rsa-sha256 header.s=20260707 header.b=v37dM4rC
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Unsubscribe-Post:List-Owner;
	bh=PA/fNyHJICTEovMWaCGBbxUZ/joDZS4NEw2ZJNxzObk=; b=WsAMOAc7uUnazZb9YIaT7mQq8A
	8xNBfQZ6MB9fXYZCOlfyIdRZii8D7Xilpxie3mb/C609JUSYRIKRTcen9AoWo22M58m5vHscI1y3z
	gVRdgx+vLIf+tz7R+yRTKDGIP0G9oCpO2kzFtNOGvN7bU8Fr9DOFW0FNjhVggDIkX/cTzhQVXRWgh
	DShkwJjoI3OJGzmWKrno3aZdVDGjluD8dtSftEY4Z/mzfuoSmK/NWBLqZVsjgRYQSs8opmgiFRC+P
	wh0lnwZGeVvvDL1LXOEDkLzLNWbSocjQh5jf86cjWZB3L0XTNifsdnN8sf59NPI8R2D/WzfPVr3Uj
	OxOFCYVg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xVbQ3-00000004x0c-1PVc;
	Mon, 23 Nov 2026 21:17:47 +0000
Received: from mail-wr1-x42d.google.com ([2a00:1450:4864:20::42d])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xVbQ0-00000004wyp-1YHa
	for linux-phy@lists.infradead.org;
	Mon, 23 Nov 2026 21:17:45 +0000
Received: by mail-wr1-x42d.google.com with SMTP id ffacd0b85a97d-4a357b1c649so2251177f8f.3
        for <linux-phy@lists.infradead.org>; Mon, 23 Nov 2026 13:17:43 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20260707; t=1795468662; x=1796073462; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=mEI2MWJHKjiB6vj3bpQygFD6VsBJJyxeJ4zAlBvCIuE=;
        b=v37dM4rCQ8S8IaVMpFqQYwXkZDG2MsoGLGhJBlCTxgJ65OvyJMc2fN6lnphy3+kur2
         7DAwO9BHt0x60cBnROjqSOJQsQmaSD+Ng1sa7cWpQ5b61oeWQgDQdRqqV7rZp2u064n8
         2k25JOo5KjI11Szw5f+wTFCZmb+49bep7gj8m80iRHnvzgOwjkzAlH0eAFCQImnuR98b
         fEyrQunyov3Pce30qpbBzh26Hr0NR7cH1EU0HADVeDIxh7KPAkHC+vDPykvaRwwVzfDw
         ni2wYAfmpWnQ1x85i2OJPJ0G5z6r+aluYsCamrnHo5lcMU75HAXf1gdMILz17onEpJkP
         j3Jg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1795468662; x=1796073462;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to:content-type;
        bh=mEI2MWJHKjiB6vj3bpQygFD6VsBJJyxeJ4zAlBvCIuE=;
        b=EJ1YZtfT0rTzPzRf1ajUQIZANuONNNYR4EAo+tQXkMuxfMNZ0TwMGT0P/RL8aC8M2n
         NJZlqJ4WdciPCjQ9qtYaUeEl7Kxn0lMZKZl71zGrv5D4CSzDClK1W0H8ymOxUDRZLTpP
         OKYjqDTSvioweQ4asw0NSfM+R4aVzjHIbTK/gECFlb4U9/jSAofi6isdpp4NO90Ljj3H
         c5ZbxSC6EfXETzLjEDOVZVVtsLhpY5Wx3vTWzzyUKpJZyKJL95G31C/9DU7o6Zkn00+u
         jRtgmBXiE90t+9H6lg7WKkVu/i3f9vevYkSrXUyLajCIMICN8j4S9RH7J+0OzdWzi82o
         GdsQ==
X-Forwarded-Encrypted: i=1; AL+hErGrBHgRUX2yF1r1Zu4i1Eb05NaQ7k+H1MVKFncapZH4SN0N9OajlVgMFALyqsIZK3Rls2TkEvd0MxE=@lists.infradead.org
X-Gm-Message-State: APuU4Z/aa0PK99h8VI0Ovf2BRv5kNJ3mEskjJJTNwPkxQJLyPch+Ihqf
	yMEpC7Hb1HcTY54DANDu2wXEEiBcurNG7M8BSdirZzkUFu1OmHozjGRn
X-Gm-Gg: AZFdTZeSo9l9HjSo0uZWs4oh8h7+YVa/saV21S4DXAvBwcJVmkrmiZZ025NTShbD6Q5
	FIQNVQaztpY9g+j2786lI+idKvxWiUk7XzNKzX+PdRGMcv7I0SxOwaQZhxgG/9ppHlk6IlAVjNI
	bV8IllYMpHl0y8nJ32oLpVVLUFjbV8sury+YQJ0t0G/3fuGoKa0mAvTRmslNrvbJA4UWnFMBpzn
	ocjsqpeFd/TJIG14lFOB/iMbx8/+8i20x88PZh+iaiQEhcWZCNPTyJHYiiuV4tbGi0MEcPypwnN
	HuaZ0OfjDiZG+uXn3MbYToCTOohQXmPNatFTw10IVxiHnm0DyL4rMuN/bDVML3zLZk3DT5Bo3Ir
	RDzYBV78pQ1hroJnPciOSAHi9WpEHyNobKcjIkevOjMaxrYfFV3jst42gmO46QQwmmDAEXO66eo
	MxqQsF+0TyLnAb11ehcZGNxbPY+4R5nIG5LYtNPkVOgtnOmVeyL9fSpH2HW/RGi5NR37ty7kAaV
	tyRpkjjsMeYOa9v2tE2he5i0JLcZ6jkYURuHbmNMcCVe00xbpM/EAebJCht9NrM9HDT+jIc70/Q
	DDVXoEaZLf2IJWGHihLMLZJt8OQ6wLTEvR3g0tpHPkrBSncu
X-Received: by 2002:a5d:4605:0:b0:4a4:14db:2348 with SMTP id ffacd0b85a97d-4abb29105d1mr18698069f8f.35.1795468661504;
        Mon, 23 Nov 2026 13:17:41 -0800 (PST)
Received: from flare5 ([212.58.121.92])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-4ab658e2e6dsm24513121f8f.6.2026.11.23.13.17.35
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 23 Nov 2026 13:17:40 -0800 (PST)
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
	Ulf Hansson <ulfh@kernel.org>,
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
	linux-pm@vger.kernel.org,
	Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
Subject: Re: [PATCH v2 13/16] dt-bindings: arm: qcom,ids: Add SoC ID for SXR2250P
Date: Mon, 23 Nov 2026 21:17:23 +0000
Message-ID: <20261123211723.1065310-1-lightofmysoul@gmail.com>
X-Mailer: git-send-email 2.55.0
In-Reply-To: <20261123-pastel-barracuda-of-rain-bce8ac@quoll>
References: <20261116-halliday-dts-v2-0-2c92438c6c46@gmail.com> <20261116-halliday-dts-v2-13-2c92438c6c46@gmail.com> <20261123-pastel-barracuda-of-rain-bce8ac@quoll>
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261123_131744_430025_793C9FF5 
X-CRM114-Status: UNSURE (   9.51  )
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
X-Spam-Status: No, score=-2.8 required=3.0 tests=BAYES_00,DKIM_ADSP_CUSTOM_MED,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_EF,FORGED_GMAIL_RCVD,
	FREEMAIL_FORGED_FROMDOMAIN,FREEMAIL_FROM,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,USER_AGENT_GIT autolearn=no
	autolearn_force=no version=4.0.1
X-Spam-Checker-Version: SpamAssassin 4.0.1 (2024-03-26) on
	aws-us-west-2-korg-listserv-alma10-1

On Mon, Nov 23, 2026 at 01:09:26PM +0100, Krzysztof Kozlowski wrote:
> This should be rebased on my patch removing the IDs.

Thanks for review. I will rebase it, but I am not sure about
the order, could you please clarify?

1. Should I wait for sending v3 until your patch is applied?
or
2. Should I apply your patch locally and then send v3 based on it?
(but if something changes in your patch a v4 might be needed)

Best regards,
Stanislav

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
