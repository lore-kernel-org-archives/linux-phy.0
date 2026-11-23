Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CBCAC606A31E
	for <linux-phy@archiver.kernel.org>; Mon, 23 Nov 2026 23:42:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=KDLa/cfk;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=gmail.com header.i=@gmail.com header.a=rsa-sha256 header.s=20260707 header.b=FMvsPMQa
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Unsubscribe-Post:List-Owner;
	bh=sEJwI2thdMSmdIq2Fch96Xj2fuFrYX0M1HJNcV2U5oo=; b=KDLa/cfkLOf5910MxQdtEgEGhC
	329i8KAG7QmQCGXiFsBkE/Fn52O4uxpD9W8yTwVm2+OR/JoM7RkCMw/Q+8wT79HH/O5ztzbpcay90
	Ua3ssfbB67v+tPxhuwsOZGjnuZ4IMjmU/bfCT41Q1VEOih8fyQ3VVwMHEg8RWNivHYk3VpHsOYdWM
	5i7o8j8q7u9qIFcFAMknC0N+tU9o8rReitwZTh0/04epD7Nl70c39PogX1wh4KqcQ/0q4E3vZq0K6
	8w1krajSfe3ISsLObEBNTQl8W6cw9jvaCHZQ9MHa+c7E4pdz77741sTfp1QjUPNJxXhNUg6/iRWyF
	4Ohei8kw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xVdfy-00000005CRi-1fke;
	Mon, 23 Nov 2026 23:42:22 +0000
Received: from mail-wr1-x433.google.com ([2a00:1450:4864:20::433])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xVdfv-00000005CQA-2AlU
	for linux-phy@lists.infradead.org;
	Mon, 23 Nov 2026 23:42:20 +0000
Received: by mail-wr1-x433.google.com with SMTP id ffacd0b85a97d-491846221ffso3280328f8f.3
        for <linux-phy@lists.infradead.org>; Mon, 23 Nov 2026 15:42:19 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20260707; t=1795477337; x=1796082137; darn=lists.infradead.org;
        h=mime-version:content-transfer-encoding:content-type:references
         :in-reply-to:message-id:date:subject:cc:to:from:from:to:cc:subject
         :date:message-id:reply-to:content-type;
        bh=fg0tXu1hVUFaqS6DwaYTDlIn6G4vOSL2k3mMwGKArfk=;
        b=FMvsPMQaVEMtc8NUUL2oVD6SYYSf23nHeppn6oih+Hg3R0D5brvBlNqXIXyIOQ68hj
         OA9tB44qzTJ8bIpp6QVB3AXbND3sN3qDeNFVSI35jVDmz3BWdaIBqGt1ioqrMfTm2SuG
         XbuQqH4y+2IM2U8vYagH5CyrWiwzY7M2CQy7xB+QUTh86bSAUfiiEg0DZIxXOt/8RTPw
         +7J8C0VCbHYwqcyvX1+uW8uei6rCjFvLjGDxyVt2vpgdbgo0ycQYrC3TR7aCEcam3xvY
         /Lg44c5hDIaj/sRBmKYSoGUlvWQovK4j+6eke0yYfq4bSg27kt+VdkdXK8UEeuXyDjXz
         5ZSw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1795477337; x=1796082137;
        h=mime-version:content-transfer-encoding:content-type:references
         :in-reply-to:message-id:date:subject:cc:to:from:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=fg0tXu1hVUFaqS6DwaYTDlIn6G4vOSL2k3mMwGKArfk=;
        b=BdJmnuPrvtDla69xTYJ/YmR2ZdnAB1R/1haPNvz/oWx4yqInMncLO/npcHUIF5gxJk
         ZznXiWVXSS3KsbODksZGOVMtqhoIGOc1O2e1P/qkV4RMhM9qt61DNkNPuMA9ybzJBLen
         kw0OIAceyNAvomfbbUGKNsQ9BsJq/mtARRi5R6sNE6LpriRXG361kYLQ/6tHXtEp8gfA
         4XgYrcn3eylHBzVPalLmOv4XN2XXsUN4I3jsTHKiAfxCVqOB1utYKMhEY8MqecKKVIgT
         M/I98oum4EzrRdKb+D6pbzFxJcXTKMQEyP1URUJixSsKJjglRBwhj8wI8qY0L0B51kZH
         PMHQ==
X-Forwarded-Encrypted: i=1; AL+hErFUNDP3qGq00VspHdWLkEZct4cyqdYzwJktfssm2gv4CVbFT/4veql1BAOlGm7Wk73zGQezg9I7DTc=@lists.infradead.org
X-Gm-Message-State: APuU4Z+x+uQI01OrK1CwOr6+7oEk7G4H9kInq251SVGPJTY4o/MedzWv
	R7JSt0tnjnjV1hG8OAlMqrbCLQhR+OZP0ZMKRsfLja9Pb9y2KwgYw6zu
X-Gm-Gg: AZFdTZcFvx1hiApwObf98g+7X6fRA5uqMr243Ppjh8NnWHGATCziX1FtyGwc+LM/ibX
	IYVKcVNuTx7TPu4amVVIub+WzpUR+BIDj9Koz8c/xw5UCRBVoNCOoBTBDAv75/KLk6g7+iPqC62
	klhnEq3Wu+ZFn/fAcjikx+XRhZiHWie6vfHQb6gpv6oPOn7nfoyZACSSL5GD1JbIRO9/ikR6zZR
	536jP2i6JoeOY2aaMniR+c0ER09Eq3nZC8CzYIRxJCV0Oo1J1TSJHH9OAkC04DVoWsCCXLYLIJ+
	0vtG6qWwC5V3uUGq+k2U+FNfpSUsLTGe17j83OBcpkU8K9enCfvSPekbG//oH/hm9sf9n8iE02U
	YYIEN8gSPjIJdWSa0uD3MpuTn+LASWVNMd+RDthrV+HwlYjQa2T/ZCOekv0A6AVVehWzNVBSzZf
	IXSjIIn3JUz4tDE3iMKgEscowtUz3lR1tv5ffh+r59h+27ze5Q1dlncXBCqUpdc2h0qeZc+T1cm
	f/nR+d6SRpRWkvhbgiiHaOx5f8Wl4wjbyww0JlZan3EuQ988IL01tYelE8iuA0S4/umd/VcNjvY
	tftk50azxDUl39KK3Ds8dwDKBSxQP7924fhdLUfp/OwYj84rW9qYXQQ=
X-Received: by 2002:a5d:5d81:0:b0:4a6:f154:b402 with SMTP id ffacd0b85a97d-4abb1baaae4mr25856543f8f.10.1795477336474;
        Mon, 23 Nov 2026 15:42:16 -0800 (PST)
Received: from [127.0.1.1] (ip-024-180.users.dtel.ru. [91.210.24.180])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-4ab6b110d56sm23777215f8f.40.2026.11.23.15.42.11
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 23 Nov 2026 15:42:15 -0800 (PST)
From: Fil Dunsky <filipp.dunsky@gmail.com>
To: Bjorn Helgaas <helgaas@kernel.org>
Cc: Manivannan Sadhasivam <mani@kernel.org>, 	Stephen Boyd <sboyd@kernel.org>,
 Vinod Koul <vkoul@kernel.org>, 	Jingoo Han <jingoohan1@gmail.com>,
 	Lorenzo Pieralisi <lpieralisi@kernel.org>,
 	Krzysztof Wilczynski <kwilczynski@kernel.org>,
 	Rob Herring <robh@kernel.org>, Bjorn Helgaas <bhelgaas@google.com>,
 	Brian Masney <bmasney+clk@redhat.com>,
 	Jerome Brunet <jbrunet+clk@baylibre.com>,
 	Neil Armstrong <neil.armstrong@linaro.org>,
 	Krzysztof Kozlowski <krzk+dt@kernel.org>,
 	Conor Dooley <conor+dt@kernel.org>, 	Philipp Zabel <p.zabel@pengutronix.de>,
 linux-pci@vger.kernel.org, 	linux-arm-kernel@lists.infradead.org,
 linux-clk@vger.kernel.org, 	linux-phy@lists.infradead.org,
 devicetree@vger.kernel.org, 	linux-kernel@vger.kernel.org
Subject: Re: [PATCH 7/8] PCI: cs7542: Add CS7542 PCIe host support
Date: Mon, 23 Nov 2026 23:42:08 +0000
Message-ID: <179547732839.3.15916995856832702891@gmail.com>
In-Reply-To: <20261123222404.GA1110511@bhelgaas>
References: <20261123-b4-cs7542-pcie-v1-7-4cde5201d404@gmail.com>
 <20261123222404.GA1110511@bhelgaas>
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261123_154219_574839_F5DAFADF 
X-CRM114-Status: UNSURE (   8.90  )
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
X-Spam-Status: No, score=0.2 required=3.0 tests=BAYES_00,DKIM_ADSP_CUSTOM_MED,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_EF,FORGED_GMAIL_RCVD,
	FREEMAIL_FORGED_FROMDOMAIN,FREEMAIL_FROM,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS autolearn=no
	autolearn_force=no version=4.0.1
X-Spam-Checker-Version: SpamAssassin 4.0.1 (2024-03-26) on
	aws-us-west-2-korg-listserv-alma10-1

Hi Bjorn,

I have worked through the two threads you linked and prepared changes,
without posting another revision. CS7542 has three independent DWC hosts,
each currently with one Root Port. The DT now has explicit Root Port
children and PERST is acquired into per-port state from that child.
Almond+ shares GPIO92 between its two Wi-Fi endpoints, so only root0
owns that GPIO; root1 must not request or pulse it independently.

The sequence now asserts endpoint/core reset before clock/PHY setup and
releases PERST in start_link, after DWC Root Port setup, with
PCIE_RESET_CONFIG_WAIT_MS before training. I also addressed the vendor
menu order, include order, constants, formatting and cleanup labels.

For the MSI address, the expression using a CPU resource was misleading.
The retained vendor value is a PCI bus match token for the DWC iMSI-RX
receiver, which consumes the matching MWr before AXI translation, as
described in pcie-designware-host.c. It need not identify CPU RAM/MMIO.
The draft names that bus token explicitly and checks that it does not
overlap a PCI MEM bus window using the resource offset. This is not a
claim that I tested non-identity hardware translation.

synchronize_irq is for the custom APP chained handler shared by INTx and
MSI: after masking/readback, an already running handler can still be
dispatching into the domains about to be freed. The locked unmask gate
also prevents a late INTx callback undoing the quiesce mask.

You are right about the physical race. The v2 lock serializes the actual
config/DBI MMIO with the IRQ latch and software quiesce; it cannot prevent
a physical link transition before the IRQ runs. I have no independent
evidence that Root Port DBI itself needs a downstream link or reset after
link loss. The confirmed hardware quirk is accesses beyond the 512-byte
RC config limit. I removed the stronger hardware claim and describe the
remaining link-loss latch as a conservative no-retrain software policy,
not a proven silicon requirement or a complete physical-race solution.

The revised sequence/layout passed Almond+ RAM testing: all six PCI
devices, Root Port MSI enable, actual xHCI MSI/INTx interrupts, host
unload/reload and actual PCI-device OF/NVMEM mapping. This does not cover
physical cable/link-loss fault injection. I will collect further review
and leave a few days before the next revision, as requested.

Thanks,
Fil

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
