Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 81853CA0EDC
	for <linux-phy@archiver.kernel.org>; Thu, 14 Aug 2025 13:22:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=/iJfIqR7OQkH12XgDUDCn/ibR98iaN3lb1LPlEdSTWQ=; b=RE+PWbLpBrsbZf
	iiJqRu5V4XFJI9Ho/UsuaAABzZeSmLFpgo9qsz9hHNACHZMjaCwHeeOQ3l7ISYahdjMuzGs9hM4jP
	pGOSCTcxISIgDpuPlExVjqGuprKEmFdEX4UIIGrJIoQAAI1Vw4T8SBgBk/d9oVNVUy28LwG4w4jDv
	fYHKQnsjCPZ67b52gx82TsaAu7a66Sf+yT6MVoZfrLNBkCiuK490/f3LkSjM0ZvFtE+cseeVM+/fa
	htTL0d6hUGA5bJp79YYo8q+SMuP0F9pzG1xXICr6QYbz7BYszPj1jKsrEVrD2KG3tueSYwL/UVHoc
	FZi+XN15A2UoflLENdMw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1umXul-0000000H2FP-0uQe;
	Thu, 14 Aug 2025 13:22:43 +0000
Received: from mail-il1-x12c.google.com ([2607:f8b0:4864:20::12c])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1umWce-0000000GnaC-47W9
	for linux-phy@lists.infradead.org;
	Thu, 14 Aug 2025 11:59:58 +0000
Received: by mail-il1-x12c.google.com with SMTP id e9e14a558f8ab-3e57376f644so4261645ab.1
        for <linux-phy@lists.infradead.org>; Thu, 14 Aug 2025 04:59:56 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=riscstar-com.20230601.gappssmtp.com; s=20230601; t=1755172796; x=1755777596; darn=lists.infradead.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=VkZ6MdXAK8oUuFYjzHuswEeWUTNOi4hs6qI/H9CSMKA=;
        b=y7SRTTCwQrIqJD860dM2o5nuKvmRzLciorQ5yM85b34XMyuxpu/gNAXRRv3AttVECa
         KbS9R7BYbrNx0YOzX0nng4k4J18OQ8rSfFS4QEHY8EyUra5MbXWTtj4VVT3QXE6IrwSj
         6xf+eWv6p+05i3Bprh048AXK6r9hanfPcTksqhT5KDsSBGBoI7Sw6PiX7MKZ3tyOTw54
         3MeA1tfZt7UX5ylYOt58zxHbS1y1QPeZ4M1vwXp7kThjBjUZD3FVXaSP3nZDvTcioNKh
         5bbH7pMn8KwwoXxiDZPvx7d+O0taZ9lv8WfJhBFCplpeo/lb5SYMkRc/LJRbJkRPJADL
         IQdQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1755172796; x=1755777596;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=VkZ6MdXAK8oUuFYjzHuswEeWUTNOi4hs6qI/H9CSMKA=;
        b=SIdPj2E2if4v4bQnZg1g1C1FX040uVMinxI9NtSxaST5yimWMcgSWT3fhsDYIVUwUm
         3DqaJFFyr8CJB3I1DyPVggb7faCzoT8EbmiftTiknLg432JHufl9XYVe1tsc4vAOIEFM
         r9vnJkBdNGDK7zYFsMx3KTSpWZgnGHlL2xex/zvisxZJ7cXVnjfCXAeSwK6OpPrVFY4p
         BjlmuHEzWDivAZ4ZnHGfeeVcZenElaKVO1M0KFLw6aya0YD6g1k/x24AWImOm+kGFem7
         vnBufpMyFDB7qdwHTLeKw9uq6M0lNxSokMGx8gBxi31yqRQGhITMiHHv4zCGUj9rCg1Z
         fEnQ==
X-Forwarded-Encrypted: i=1; AJvYcCWeXhDy8AwvC38l9rK4VoouG/Zk0WAVFLcsjkLtL1ancqgwV8YnAbrYAd3YVmlbI//bIU2IFWf/v4U=@lists.infradead.org
X-Gm-Message-State: AOJu0YyN+m8IO31COUhbYZq52EBbOleNTrEsQd8T52LbG3uNxukzNTcm
	7UR49Orb7Zc1GdeJVV7dOhPDYxbZvByNItfOYDHHB/vdu2Y6uAb4wRJqERhMe3B66pQ=
X-Gm-Gg: ASbGncsD8JFVerdNaLxBOCECEG7t3Q82fd/AoiaGNlv/h36LQMKhvwsmklwtW+7B7Uz
	PiAP3C/nChLW8rUHDqZlCiigYnrCwdL7e2BtqzfYgYf7JNxtzPPyjntNsAmD0XOLxkXBTfjR9yC
	q0yBQrPPsKmbTK/hB/Qgm1sQ1O4fyXjiUQ5mOxiIo6LKPlXIRYTk3N3Of2w8VkV+u5P+EwRPsQK
	6d2HEwfWkNrLW+Saw1RMnoE2sP8iH9K2cCQf2Bp2H2ZfDUJxrPwni7UIETUTnUnKcGHsvxPcMaa
	hbjUusOkFx6iI8p2jcy13qUsXidQrIYiqSh55nhXyTtBxT35jT8BxA6NVDoQIUtV8otjoqQ8e1u
	Osz2PkhIt9bNIgHtYNeBGUObFXRxnRfBokApV140BD3pnXYV/rpSLpUEG3ii/jQ==
X-Google-Smtp-Source: AGHT+IE3y11zxXdSZ7xsXLUpghewNnJCpWK8G2mFkAzcKjVS5vSn5G3dmjKvLqQoKez3LPNe1hHEcQ==
X-Received: by 2002:a05:6e02:184c:b0:3e5:6daf:ddfe with SMTP id e9e14a558f8ab-3e57084ff05mr51337105ab.10.1755172795698;
        Thu, 14 Aug 2025 04:59:55 -0700 (PDT)
Received: from [172.22.22.28] (c-75-72-117-212.hsd1.mn.comcast.net. [75.72.117.212])
        by smtp.gmail.com with ESMTPSA id 8926c6da1cb9f-50ae9cbb659sm4480210173.93.2025.08.14.04.59.53
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 14 Aug 2025 04:59:55 -0700 (PDT)
Message-ID: <86174012-fd87-41d7-9568-f9c0b544c1c4@riscstar.com>
Date: Thu, 14 Aug 2025 06:59:53 -0500
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 1/6] dt-bindings: phy: spacemit: add SpacemiT PCIe/combo
 PHY
To: Krzysztof Kozlowski <krzk@kernel.org>, robh@kernel.org,
 krzk+dt@kernel.org, conor+dt@kernel.org, lpieralisi@kernel.org,
 kwilczynski@kernel.org, mani@kernel.org, bhelgaas@google.com,
 vkoul@kernel.org, kishon@kernel.org
Cc: dlan@gentoo.org, paul.walmsley@sifive.com, palmer@dabbelt.com,
 aou@eecs.berkeley.edu, alex@ghiti.fr, p.zabel@pengutronix.de,
 tglx@linutronix.de, johan+linaro@kernel.org, thippeswamy.havalige@amd.com,
 namcao@linutronix.de, mayank.rana@oss.qualcomm.com, shradha.t@samsung.com,
 inochiama@gmail.com, quic_schintav@quicinc.com, fan.ni@samsung.com,
 devicetree@vger.kernel.org, linux-phy@lists.infradead.org,
 linux-pci@vger.kernel.org, spacemit@lists.linux.dev,
 linux-riscv@lists.infradead.org, linux-kernel@vger.kernel.org
References: <20250813184701.2444372-1-elder@riscstar.com>
 <20250813184701.2444372-2-elder@riscstar.com>
 <22bd5b5b-ca06-4499-b21f-22c2ff202167@kernel.org>
Content-Language: en-US
From: Alex Elder <elder@riscstar.com>
In-Reply-To: <22bd5b5b-ca06-4499-b21f-22c2ff202167@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250814_045957_140775_AC5E1F67 
X-CRM114-Status: UNSURE (   9.28  )
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
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-phy" <linux-phy-bounces@lists.infradead.org>
Errors-To: linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org

On 8/14/25 1:11 AM, Krzysztof Kozlowski wrote:
> On 13/08/2025 20:46, Alex Elder wrote:
>> +                      "mstr",
>> +                      "slv",
>> +                      "global";
>> +        spacemit,syscon-pmu = <&syscon_apmu>;
>> +        #phy-cells = <1>;
>> +        status = "disabled";
> 
> You cannot have disabled examples. This also means it could not be
> checked/tested.
> 
>> +    };
> 
> 
> Best regards,
> Krzysztof

OK I'll fix that in both places.  I think I just copied in the
actual DTS content, but I now understand the problem.

Thanks.

					-Alex

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
