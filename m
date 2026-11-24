Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9CB76606A33E
	for <linux-phy@archiver.kernel.org>; Tue, 24 Nov 2026 10:32:11 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=v38+w+Zp;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=gmail.com header.i=@gmail.com header.a=rsa-sha256 header.s=20260707 header.b=lQwQqMet
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:References:In-Reply-To:
	Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Unsubscribe-Post:List-Owner;
	bh=QOQ08cmVjB0ELy9rY0k8F+l5ypcMbcoguoZucLd2iRQ=; b=v38+w+ZpbeQwOxz0tYdg6UzdBj
	QSkkL4ajnFS174C/uM+RbxyJib4HLtxGLbZGTS8FdYzLYrrAtD2XY/eVU2lwRcBe7RiKON86zT/Wi
	EtT/gzXR1MBWS0To9YoJQQ9T80R+r3bjrnQwe31S11jPCNiNBFILHLqgWG5Og48F4OB4oeXV+MTKX
	o56Tln0hK8tCcGYrOR7HJ5UerWc/mdKnh6rdMiEvyz6nZscdXFc0FyWc/fkUuKX9Wf+JkUEAVMKk1
	uALuup80o7VjiA3AIhRXpQ2HY2AJaMur5g1gVG2x+tu89IDPIYU418x8PZLHjo+EUac998q2Ct8A3
	V6Q2YUEA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xVnop-00000006EQR-1bKk;
	Tue, 24 Nov 2026 10:32:11 +0000
Received: from mail-lf1-x12b.google.com ([2a00:1450:4864:20::12b])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xVnon-00000006EPO-242x
	for linux-phy@lists.infradead.org;
	Tue, 24 Nov 2026 10:32:10 +0000
Received: by mail-lf1-x12b.google.com with SMTP id 2adb3069b0e04-5c14f3dab09so2141308e87.0
        for <linux-phy@lists.infradead.org>; Tue, 24 Nov 2026 02:32:08 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20260707; t=1795516327; x=1796121127; darn=lists.infradead.org;
        h=content-type:mime-version:content-transfer-encoding:message-id:date
         :references:in-reply-to:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=L91r7jLCdgBrVDkCLs5wB8S82AZQlItQYcCNZU9WUC0=;
        b=lQwQqMetqOT7LHvARgXM4NHa6StXoPY2Ib66kZje/jprMTqRVxKnHAPKdraRdCEhgQ
         HNSw4gH8/B3Zc/5kMiqMZPatzJvWoMPj7cZUV+PmoqIimzjTMYiKMUTT/9b2+XjYEUOb
         k8hS5dUoBKH/mCB5Wv7rAgTiYdxWBLarxw/YVfnmoVbIFW4TreuaxhJPTmVJp50fx/Hd
         IQHlwmnoC6QgXjBSOP/30dvw/Pe8387EEe5W6Vga2nBa9ipXpP0ZLQXxXoA/0Xc87YOa
         4h5wif0DbIwyXT5ftT78ovU8rq7z+LaBmMy1DBd0DbhXKhPkaiRjdPwcgixMgR3kNLdS
         PjoA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1795516327; x=1796121127;
        h=content-type:mime-version:content-transfer-encoding:message-id:date
         :references:in-reply-to:subject:cc:to:from:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=L91r7jLCdgBrVDkCLs5wB8S82AZQlItQYcCNZU9WUC0=;
        b=v4FMAhDqMWgZSYmKRrq+rX3+3aAQ7M2Pb7PxzqCGxk8qmvTqn2SeTyxL4AZPrYs2tZ
         z0Rz2IL4D1J0gDR9LmbkR5YKXGEIa5p52PLFlA4iqIHBI152xYV6gTE9m4BZN7pznBHE
         3r0ZDcA8FhbZuG0Vg2PSttr5ygGpocHyQVVZIfFJKu4UVuM4xgPa2Ay4My1uhRIlc90W
         9HsKZlKYbHyJlOeCc49KcPcRy8jHIRNY/yYVjhJ00hXNbKB9EPh6yGAzyU+jqWrOHAda
         yz585E5CJ6OTMKuY4sC4Rp1jBL3PNAfeRGgbMFICBdr8MlEq4WEn98dBlSPW+k+QRlX4
         LWGg==
X-Forwarded-Encrypted: i=1; AL+hErHJh3ChlfYyduljH1LsJUPrSozkG5038x79eAz8k470OlVPQ3rWR2XfU2TUYNYfP+Q13MbsApfmqBk=@lists.infradead.org
X-Gm-Message-State: APuU4Z86dyEdwB5eBAKwkepV6RvSunprFxVS/hVznkBvTPvf26E17Zxs
	aqju/8lGCQp4dBgtSgHlCxKvvkCnPtvM33W+NRSDTfzATUdeCzfOewVc
X-Gm-Gg: AZFdTZfdc2gloSjAhC6Hqd3RfnSZHs4Q6t6jchsq31m6S5jR/CfP8Kx7ESxyB9oACMN
	P3oI5whMIRVVdKXgzWLFb+Ggfm5ssQFsCxpbkKEvoLnqj1wxefgcnzMo+nFyv2QwPuQlkpU2UJh
	v0B80RIFIm/jpRNZCqbhfiIQNZpiUNEVHqqwNfupRyWFEDQfE5Le+dPis5jyqf+FA1ZJIv/gE/j
	qmTIbZYaCeSzO8e0f37/YjYGV+gwhM4OyCWNOCeiXACN3fQunTRsIWsw8TpdBLdIeBU0kMLc4SM
	cEljd2xhdVhSton0jBMNI+QoWdIfJvmmGw5/LrPqDcKyincXyXcCHJVjAxQoP3REhKi3ynMCf4A
	NMp1VaB1VcoXEUCMzHqGXTTJduAjciGEbRlCTmTzR72gsjsU3ec8NqJfUgqCZyXZyhazCCR6maL
	5p5ORsfq3J9kBNSWrN8qyspzxL/P8jbfP4JMkd5VbDqXx81jo4SwS57OsLjGp2c6Jk/hYx+1tw0
	HgU90BDrO73jOSs6xWxxjVhjcFUqt7/47WGrDWD6CKU0mfZhB2UVri+vhHUmaA5QjlhpEnYUmzl
	1w03DN/R23LOMTU++9mNh56nNeWIHQFZpH6L5jhu629zHd8eIiGIK+c=
X-Received: by 2002:a05:6512:3d0f:b0:5c0:4cb:2415 with SMTP id 2adb3069b0e04-5c1bc7c9a8bmr4202658e87.28.1795516327013;
        Tue, 24 Nov 2026 02:32:07 -0800 (PST)
Received: from [127.0.1.1] (ip-024-180.users.dtel.ru. [91.210.24.180])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-5c1bcf332c9sm3680542e87.7.2026.11.24.02.32.01
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 24 Nov 2026 02:32:06 -0800 (PST)
From: Fil Dunsky <filipp.dunsky@gmail.com>
To: Philipp Zabel <p.zabel@pengutronix.de>
Cc: Manivannan Sadhasivam <mani@kernel.org>, Stephen Boyd <sboyd@kernel.org>,
 Vinod Koul <vkoul@kernel.org>, Jingoo Han <jingoohan1@gmail.com>,
 Lorenzo Pieralisi <lpieralisi@kernel.org>,
 Krzysztof Wilczynski <kwilczynski@kernel.org>, Rob Herring <robh@kernel.org>,
 Bjorn Helgaas <bhelgaas@google.com>, Brian Masney <bmasney+clk@redhat.com>,
 Jerome Brunet <jbrunet+clk@baylibre.com>,
 Neil Armstrong <neil.armstrong@linaro.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>,
 linux-pci@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-clk@vger.kernel.org, linux-phy@lists.infradead.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH v2 7/8] PCI: cs7542: Add CS7542 PCIe host support
In-Reply-To: <f5d30781ae9502cd76ee2b6757f96a0e5ffa8b71.camel@pengutronix.de>
References: <20261123-b4-cs7542-pcie-v2-0-f589a9cd0bef@gmail.com>
 <20261123-b4-cs7542-pcie-v2-7-f589a9cd0bef@gmail.com>
 <f5d30781ae9502cd76ee2b6757f96a0e5ffa8b71.camel@pengutronix.de>
Date: Tue, 24 Nov 2026 13:31:25 +0300
Message-ID: <179551628581.3.13614361091709904582@gmail.com>
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261124_023209_550279_73E65F93 
X-CRM114-Status: UNSURE (   6.76  )
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
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="fixed"
Sender: "linux-phy" <linux-phy-bounces@lists.infradead.org>
X-Spam-Status: No, score=-0.8 required=3.0 tests=BAYES_00,DKIM_ADSP_CUSTOM_MED,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_EF,FREEMAIL_FORGED_FROMDOMAIN,
	FREEMAIL_FROM,HEADER_FROM_DIFFERENT_DOMAINS,MAILING_LIST_MULTI,
	SPF_HELO_NONE,SPF_PASS autolearn=no autolearn_force=no version=4.0.1
X-Spam-Checker-Version: SpamAssassin 4.0.1 (2024-03-26) on
	aws-us-west-2-korg-listserv-alma10-1

Hi Philipp,

I'll drop the PCIe host's select of RESET_CONTROLLER. The host only
uses the consumer API.

I looked at reset_control_pulse(). The CS7542 host asserts its
exclusive reset before enabling the clock and powering up the PHY.
The PHY has separate reset bits and leaves the host reset asserted.
I'll keep it asserted for 10 ms after phy_power_on(), deassert it,
then wait another 10 ms before accessing the host registers.

The helper would cover the assertion and hold time for a standalone
pulse. Here the line is already asserted across PHY setup and the
controller also needs the delay after deassertion, so I'll use the
explicit sequence in the host.

Thanks,
Fil


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
