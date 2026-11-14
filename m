Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0888D606A331
	for <linux-phy@archiver.kernel.org>; Sat, 14 Nov 2026 21:30:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=CSpZs93u;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=gmail.com header.i=@gmail.com header.a=rsa-sha256 header.s=20260707 header.b=tCcLye78
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Unsubscribe-Post:List-Owner;
	bh=72QSWXlNd45Cy/A1Xsf2lMnYZrfE99CpdJk6muGPyrM=; b=CSpZs93uUoS9rsMteO0t7+DM0S
	H7TBXCrhZ1L7YbIwCO71ek9B0SxZmrWSlxc19Z/Sb4HLxnII4ZotMytFl1XuW6kOiY2ULX5PQgpcZ
	CHAvMC2qyAF7FgEisaRzwVk76vloyKo4WCeUh5K5E3k0hFBHLZu49ZG8j4ftBCLp8olKiO+6ap62a
	T+YKYDYqIV2i4HTNjUUhMl3nBYCFt81mP45HYXvxKeZ0BXClATGePLvktDzGI6tWX8CnfG/XVue98
	eBX9VSKqfR/mWPUR/tz/oIXxRb5dfxpCKgrsP78Nm6/0yplcVj1LHcNZyNfngAgiOnbn9TYAhpOMs
	BeZbysOw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xSLKn-0000000Gn2H-1Jci;
	Sat, 14 Nov 2026 21:30:53 +0000
Received: from mail-wm1-x32e.google.com ([2a00:1450:4864:20::32e])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xSLKj-0000000Gn0F-0v93
	for linux-phy@lists.infradead.org;
	Sat, 14 Nov 2026 21:30:52 +0000
Received: by mail-wm1-x32e.google.com with SMTP id 5b1f17b1804b1-4bb666304fdso3349095e9.0
        for <linux-phy@lists.infradead.org>; Sat, 14 Nov 2026 13:30:48 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20260707; t=1794691847; x=1795296647; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=vju4Tmf9HxWLCGDozxlRYY/dKPR1MEju5ORsVHds9AY=;
        b=tCcLye786ePySNMg+LRBBAa2F8BZawn1gjJ7MrdKwRkl6lMxeJjZ+mkGojtpC39KSD
         M/TJmsNSaUnZAsH5Ppzl54qJ6Met1Zo1YIepDz6pst43+UpjE7gmnE5qZ0XAS/TRufYI
         nsKfGhJ1ho7MEt+hp2uKv1yt+zhjhbUnmapbyEKn72Q4nBUshqXIi2PpNwwlc3chSLay
         LP1XwefJAGRuj1Nc9mfcY4tPRXAoJoTvsUz1RZPjYAW9PPPhNvTkrOps5nC0fU6brEeJ
         ZR4WnUfVoznBntrwplLxUEHwOKOppNb9x+kHJq4vb80Xz8tFtEII71g68SKL6dFUsaxH
         eD1Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1794691847; x=1795296647;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to:content-type;
        bh=vju4Tmf9HxWLCGDozxlRYY/dKPR1MEju5ORsVHds9AY=;
        b=o3NDasgOXH1V0aNkZt3/WvqrnRps0cw4dXhc62zYwmHka/VC6eC5A2u2mZIm8onX4u
         Keee/RsHiGef9ZRF48oyvBQ1TW7G2cwbISw1mbR38YuNLXBh5qHerTiByB7lthQqT928
         xc75q4WYGfbx617/QJwZ+LPbVgEY7Zo9OD03+rYxyR0L96aKunNlUaDojU8in8wII/4f
         Zf0VQAfe+za4P1T5PDHukVieBjZ6BfateiaFQ56WxLkz+kZEJYBSaDalReV/ITqSISpp
         AVcjMxKsE+S6NKpVp17hRuwlG2MHEj4sSr+QNFruGXPp2NtrUkwzbQOSFlWDutCDMvUr
         v9Mg==
X-Forwarded-Encrypted: i=1; AL+hErERqvpJob01cLG5GJWyXMnmy8XFPZAhA6WAR8cPCIKHRc+J/MOuKLRIeDnPLblBMHUgSqYk02N6sqs=@lists.infradead.org
X-Gm-Message-State: APuU4Z8GGcpwYmfNj5Hv9kab0H/k7f0ZbjVQ+kLgAdoKrrkD9i44AvXF
	LqlGAMofPNq/wGse3QCUmK+YMkS7gG3jD3X/YXW7a863GLMgUMl66l5h
X-Gm-Gg: AYBFou110qqVgn3YpTF1vEB2COLnDmcPlrOBdeHH3vNJuRoykgXwy9MzAwqzNO667Lk
	giXHW/d+9HVbzz80uAx6O72ih1crqR6t7Q9pAF6cLF7rrS7qQ+AItNyzcPw5E2JKVzbe5GjhHpC
	m75bB+xMbVRedHCX+WpwyHhMXOPT7s2utmdcveYN0H0ILmWeXOLhFgqjemLfd50WOrxEfSKbW9d
	3JrF4KHdgVFC1eWAtyGP6+GHR3efKqokN1UIeQJtxG0yvCulNojsX9A+/g1NP0rFFHl7LVM11jx
	nwZSYCE/dfO+V1bnECThbo96itXHypmDFCmZkXqUY//MPpXzVhwEJDFjhhVzoqnNAJpzTaQzhzo
	7JeFBRTY3iASph0EKhjSbV1zfNBql2VDFc4LQ5XllxgnbBBNCsEyz+JvNt4tVubVpTkG/lprBT2
	3F4tocloAdlr+TaKM9GvrEPLv60OUQSHbqBrLk+mEorHVYU8UWED6qg3n7iCq7DylHHzG5L5e3Z
	MVs+8gnB5b4+k84wWgHCye1wR7wClxksZ80amRAerfiOJ4FwX9py9l3FNRD8ZTAIZ3/GhNMtwmk
	iYgGBC57Cc1s1h3lAf9IOvih2m4=
X-Received: by 2002:a05:600c:2784:b0:4a1:d49e:9ce with SMTP id 5b1f17b1804b1-4bb4e2918b1mr187322445e9.2.1794691847097;
        Sat, 14 Nov 2026 13:30:47 -0800 (PST)
Received: from flare5 ([212.58.121.92])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-49c603f4e2esm12803478f8f.36.2026.11.14.13.30.40
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 14 Nov 2026 13:30:46 -0800 (PST)
From: Stanislav Aleksandrov <lightofmysoul@gmail.com>
To: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
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
Date: Sat, 14 Nov 2026 21:30:28 +0000
Message-ID: <20261114213028.1933448-1-lightofmysoul@gmail.com>
X-Mailer: git-send-email 2.55.0
In-Reply-To: <0cac5090-a135-4a6c-8221-846b34ed5513@oss.qualcomm.com>
References: <20261109-halliday-dts-v1-0-289114ab8197@gmail.com> <20261109-halliday-dts-v1-16-289114ab8197@gmail.com> <0cac5090-a135-4a6c-8221-846b34ed5513@oss.qualcomm.com>
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261114_133049_318797_75C77BFE 
X-CRM114-Status: UNSURE (   8.10  )
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
X-Spam-Status: No, score=-3.8 required=3.0 tests=BAYES_00,DKIM_ADSP_CUSTOM_MED,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_EF,FREEMAIL_FORGED_FROMDOMAIN,
	FREEMAIL_FROM,HEADER_FROM_DIFFERENT_DOMAINS,MAILING_LIST_MULTI,
	SPF_HELO_NONE,SPF_PASS,USER_AGENT_GIT autolearn=no autolearn_force=no
	version=4.0.1
X-Spam-Checker-Version: SpamAssassin 4.0.1 (2024-03-26) on
	aws-us-west-2-korg-listserv-alma10-1

On 13/11/2026 13:10, Konrad Dybcio wrote:
> Please add the other idle states (D4 and E3) from the downstream
> devicetree and match the order of properties (psci-suspend param)
> to glymur.dtsi

Thanks for the review. D4 and E3 are already there, as cluster_sleep_0
(0x41000044) and cluster_sleep_1 (0x4100c344) in domain-idle-states,
just above idle-states. In v2 I'll move that node below idle-states and
order the properties like glymur.dtsi.

> Please use '0x0' for zeroes in reg values

> Let's break up such long lists into one-a-line

I'll fix both in v2.

Best regards,
Stanislav

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
