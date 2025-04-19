Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 2795AC369C9
	for <linux-phy@archiver.kernel.org>; Sat, 19 Apr 2025 11:35:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=4pra6x+3ABUBN1V3Q+57cFA8UWOjuUtwAf6Z7DdpBBQ=; b=L4mbpPaquBYZ7n
	Lco+kTdI4oIwfo6grVeUdagBU/qc4V9NY2XrA46Za1FgRA7Ds4SgLSes90AeeSSs3i46BIxnti+hz
	ReshHaw4Uw7FbsyIU+6TQo1zjXEHkX4n4oo/olZQVyUFQnpYbCdMNm0FGO7Ng9z8SK7aaOcsy9VMe
	TgEbOXXnSDV+coAfpEMOJ7NhvXKdClrvTfLwOdb/ByF0CWYqM9njRtswKWExstBBNRF1Lep3cxI+m
	zIgKmrEJ4MWCV2v0yJf03ECy59mJhcdSt6jwaQ8zCBxTtkogfj0Nq+HJMKJ4r+h85JwAJBLG7ORWu
	eLIwh0iPKprIPbKRUPug==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1u66UA-00000001FMC-3nR7;
	Sat, 19 Apr 2025 11:35:50 +0000
Received: from mail-pf1-x433.google.com ([2607:f8b0:4864:20::433])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1u66U8-00000001FKa-0GvQ
	for linux-phy@lists.infradead.org;
	Sat, 19 Apr 2025 11:35:49 +0000
Received: by mail-pf1-x433.google.com with SMTP id d2e1a72fcca58-739b3fe7ce8so2298991b3a.0
        for <linux-phy@lists.infradead.org>; Sat, 19 Apr 2025 04:35:47 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1745062547; x=1745667347; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=MOQB0CfnACTH9btXGksImz/Bb/gsN8Vilrarvj+IkF8=;
        b=vHOC16vhATykl3H+QNkTMAsqrdf9CJe+xmiBVh4ckw93Z0MArZtQz0xINLSWTsHEsk
         ipm0oqOirw3ktKzJYkaGe5uOzTcw0SmA73yK5Ai0q2MDAkhYQBlSnKg/irMInSZ2SFsU
         jOe3cG1+v8ni0UDjyps4cyIdYD9TvUNXuEaUfbTkjv7yYKdLsiZ7NndF5GuHngoY4U6j
         Z5J0bi9MP2pAzt7wAZSGVocVAiTyxtz3L4YHiKzzMumXw0fECCcqf7W8t9jMiKj+mIxp
         59vATqDXDmb+RLK8mHJDQAB9ZrmeCumQ+wscGpAsjPza9NqYWwXL3sEPjtDK52lw7h8L
         KFXg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1745062547; x=1745667347;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=MOQB0CfnACTH9btXGksImz/Bb/gsN8Vilrarvj+IkF8=;
        b=tghzzYW+yssGOee8eqbBwN6zVKV18WgKN3H9URYmOXJQXbJgPyYIZkvgzi4J1eGH3u
         TVtjWNGqTDXVhNdgWCjWGyJ7fwvx9WxJGbP3s2D3VaT41Cqm4AkJr5Fa76nF9O8StHMG
         mnYI0k5zMWW0wDNZ2PbVEHAe3nu+bSNlGKHiny/DiER7DzwiSVtBuIuGiy5lPcgvhhw+
         fl5Z7i0cdqLWajsLLJqN5fGWKxwjfYeZAYweMQ7e2WM/UJRxr1HnwXv7hIzbnh7f8RNO
         c93PkWW3JvMdQdGlbmf6k/oMPiVYOyY+wREokdchCURbTq+G2N5C1SXbK0ODs+j3CJMU
         SS3g==
X-Forwarded-Encrypted: i=1; AJvYcCUsY/DIufXWfCslspo0mXkDx8AvYJ+B/6WtCHM4NEuH3o/4UZE5lhd+Z8LJYQQWYj2v4zJgk9HoSLk=@lists.infradead.org
X-Gm-Message-State: AOJu0YzJGuwdlUGC/CatDsOhYHRXSPweMOgvUBtgC6dgaECEvwJdpXbv
	wSGAZUXOuGowVDIyZtCq9VhU7+elABzPMBRultUM5VUnf9/6EDvIZwS+Bm21uQ==
X-Gm-Gg: ASbGncsfXf6N+F5M8zx8y8rpZDYO1XgxpgKgzoKochZfP/t6EhCTGz5oHJnc1ScFcS8
	7VScOctDqOPnBf7eRlrLxa9GNbAEBD1m3zjLj2Pmv8A6XyXYCzZSloK0X/yCiw8u8o85UVMFES1
	/XCwjbGs+faundYc89/bK7n1jnLZpU1x8rEIr656Sl0lAnw3YUedfWOfcMNUheiFqT/bmsDjFlJ
	WsGKo4wNgnc6hnZHuxwo7Tzp7yQP6whITUO+b4wo8IX4Qe9bOgYxq4l8sb0ChV2TthMrOLB8TB7
	K5kLCAikgMRwcUiSCVNJou9lEQmpufW6z5KTJDvOjnvSrPhx5Fn4nlfFGJNhjoaY
X-Google-Smtp-Source: AGHT+IGCM+3I80JA+fktzJ6AOpYl4TuGcM59V0sIzl9Rp8Wbr/2ZN2X0j6onHQC7TRSSw8S7bfKA/w==
X-Received: by 2002:a05:6a00:44c7:b0:736:a8db:93bb with SMTP id d2e1a72fcca58-73dc147bbe4mr6963805b3a.5.1745062547148;
        Sat, 19 Apr 2025 04:35:47 -0700 (PDT)
Received: from thinkpad.. ([36.255.17.167])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-73dbfaa8104sm3094614b3a.123.2025.04.19.04.35.40
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 19 Apr 2025 04:35:46 -0700 (PDT)
From: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
To: Vinod Koul <vkoul@kernel.org>,
	Kishon Vijay Abraham I <kishon@kernel.org>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Nitheesh Sekar <quic_nsekar@quicinc.com>,
	Varadarajan Narayanan <quic_varada@quicinc.com>,
	Bjorn Helgaas <bhelgaas@google.com>,
	Lorenzo Pieralisi <lpieralisi@kernel.org>,
	=?UTF-8?q?Krzysztof=20Wilczy=C5=84ski?= <kw@linux.com>,
	Bjorn Andersson <andersson@kernel.org>,
	Konrad Dybcio <konradybcio@kernel.org>,
	Praveenkumar I <quic_ipkumar@quicinc.com>,
	George Moussalem <george.moussalem@outlook.com>
Cc: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>,
	linux-arm-msm@vger.kernel.org,
	linux-phy@lists.infradead.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	linux-pci@vger.kernel.org,
	20250317100029.881286-1-quic_varada@quicinc.com,
	20250317100029.881286-2-quic_varada@quicinc.com,
	Sricharan R <quic_srichara@quicinc.com>
Subject: Re: [PATCH v7 4/6] PCI: qcom: Add support for IPQ5018
Date: Sat, 19 Apr 2025 17:05:34 +0530
Message-ID: <174506248858.36993.16776911962965372493.b4-ty@linaro.org>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20250326-ipq5018-pcie-v7-4-e1828fef06c9@outlook.com>
References: <20250326-ipq5018-pcie-v7-0-e1828fef06c9@outlook.com> <20250326-ipq5018-pcie-v7-4-e1828fef06c9@outlook.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250419_043548_103296_56AAD8E6 
X-CRM114-Status: UNSURE (   6.36  )
X-CRM114-Notice: Please train this message.
X-BeenThere: linux-phy@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: Linux Phy Mailing list <linux-phy.lists.infradead.org>
List-Unsubscribe: <https://lists.infradead.org/mailman/options/linux-phy>,
 <mailto:linux-phy-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-phy/>
List-Post: <mailto:linux-phy@lists.infradead.org>
List-Help: <mailto:linux-phy-request@lists.infradead.org?subject=help>
List-Subscribe: <https://lists.infradead.org/mailman/listinfo/linux-phy>,
 <mailto:linux-phy-request@lists.infradead.org?subject=subscribe>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-phy" <linux-phy-bounces@lists.infradead.org>
Errors-To: linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org


On Wed, 26 Mar 2025 12:10:58 +0400, George Moussalem wrote:
> Add IPQ5018 platform with is based on Qcom IP rev. 2.9.0
> and Synopsys IP rev. 5.00a.
> 
> The platform itself has two PCIe Gen2 controllers: one single-lane and
> one dual-lane. So let's add the IPQ5018 compatible and re-use 2_9_0 ops.
> 
> 
> [...]

Applied, thanks!

[4/6] PCI: qcom: Add support for IPQ5018
      commit: d17ce83fec4abf4e2b11c6c2268f095e35a220d4

Best regards,
-- 
Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
