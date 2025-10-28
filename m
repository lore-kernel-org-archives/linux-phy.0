Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 45D50CCD1BF
	for <linux-phy@archiver.kernel.org>; Tue, 28 Oct 2025 20:50:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=z/w+1VLmOEBBCYbunJYYap/pPi9A7uutseCtF8EK2zI=; b=P0Qw2oD9fjuPTS
	K3HMHqe88olss+N8SD8gKrudQhnL3me2ATaFEj8DZkKeGJ1oWyn4LSp2AmytZrZzXkNil4TEyIqqS
	K2NntIah7b2/VgtCQi+ECQWLztcyL8lN3YA5xx/mHv9WMOPKCSC6GFlzNoipAF+EZczl/XRRj7pjo
	th9uDmnwW7d6MQmYm9slNU/wnifsnIJ29ubkYwXcg9PzVgUP98Gzl25cT9U+Eax5V7KqD35xkKA66
	Io2p5ThLxcvG7NKkuotr1GNO7kkvOvObejK7Y/niO5C2nJwqFiuZG6XHl2lGhNs8WYGK0lE1CBnaE
	8UNKPtP/UgjCPBtlWrow==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vDqdm-0000000Gdj6-0875;
	Tue, 28 Oct 2025 20:50:02 +0000
Received: from mail-il1-x142.google.com ([2607:f8b0:4864:20::142])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vDqdi-0000000Gdhb-4A5b
	for linux-phy@lists.infradead.org;
	Tue, 28 Oct 2025 20:50:00 +0000
Received: by mail-il1-x142.google.com with SMTP id e9e14a558f8ab-430c151ca28so28071095ab.2
        for <linux-phy@lists.infradead.org>; Tue, 28 Oct 2025 13:49:58 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=riscstar-com.20230601.gappssmtp.com; s=20230601; t=1761684598; x=1762289398; darn=lists.infradead.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=R6TldsVLxc7ZpZ3BCidhfMeu0Nkd2dELKLkuMBzPbjk=;
        b=WPW7r5udEBsk+20QXbrdblhk/hZzVPmJxSukPZinEY3RDyiRI3lex/V+FzTWOHjTuI
         JJaPAz1Gbl9FltNkEOkhe1B1dUEv3W05U5hunXbs1k0APYQoJN3cW7yQktIcFEDxoqJu
         tn+vqAoNWw38SvaPZKtlsnfSIIY/lcA/isQhBvje4uTcDRC1NDzagnOet1+yk+M8dzg+
         W1jScBK0Z5lTVnXXxDvpsOTCGnfJIJfB3w9x33QBXer2xhLXP+UrYHzxx4J1oHEl96Sg
         Uz2O+sZwN9DWrah63ZW2cSi8XsRJUjfmgBv+8z/Tr5Z0GhfT1FPKS9+OYgXUF68bg/6v
         Hvxg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1761684598; x=1762289398;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=R6TldsVLxc7ZpZ3BCidhfMeu0Nkd2dELKLkuMBzPbjk=;
        b=HH32iQ40p2apRjYZEWSXj/kKmMZF2+l4JM645fL9MwL892+gj/+h+XthOoc1Ajnvun
         f9qBNpS1ol9xVpUjWTXh05a8QBuzcTLQrkGn66oY3loyXUIr4QqrsVE8j2G36GgH4qkR
         sB0P/TjpuDL8b6ygXFzJFmYwLXmMz08sffxlzJ8QjY0DJzcp7+RCKjMyyziNdu6li83h
         ZyZVq4Tk3KUB2uqhkp6QJ7TlW46F/jIhchrfBuiXc19cITYPUemLe9i1+Y/Xh72Npgv3
         ZmwK33oVZucJWFqMyar6Iv/bmR/MSCiMVWBio6n7Sw3mf5oLORymLo6AZHNoKelUyGRk
         UPgA==
X-Forwarded-Encrypted: i=1; AJvYcCUb7vZRLzhlMuH8GEa+iOyduTSXsAsd0Kdtg1DHIkUhL5srQZxaZVcPcyjql6xicAZWIzS7G4acCjE=@lists.infradead.org
X-Gm-Message-State: AOJu0Yw5zOfowpvHFnT5GsvPfg1si2AhP0NEYULxFZLl25xEqZzMGfom
	XvNZiaAS03jpQ9rJLQ2JcK8R6cMFnYAxL9ZFgdq4ngl52Y5q8QjU55hGPNDW/DPi4uA=
X-Gm-Gg: ASbGnctVIH7CVtPGJL3SKoCu7Bjos18m4NAZpxEgjuru4CMxVEMjRasBWVwgW0WtR6S
	oy6OZAjLxluPxLPd3Z7mheTJeKKztb9PT4SZkkmol9g4pta1LQcejMrzQMXYvpwY1U+dZmRp5Hj
	WecTSApMyrKJ54zNoleWei2DVq+aexsg1wrosNyfpgrpOGjT3LD27KaeScPwsE24GUTgnXEOR4M
	+YySK6rqHbn3hVS+7yeu3caHBRg0hj4R0TkSjabGvfpd3aEOm2EALDtadBZ7sdf6p6BrNTUqjFB
	WqV2+LxY4xncx4ySBpwlcKQM5R89toLS0yM4J2jGEBgrCEZ10JgoEeqmNV2INfKuqGfUdt5paQ1
	TYih5jG1prHTHhUoK2RW6TO3j8Im0gikquoqAVS57a0h69nYLRsyz16kLE7qW3Sedl2STyP1xUe
	3qXZztZAYQj/U/duhrI1w+nLF3LnKMgFf3JPDAKmR1
X-Google-Smtp-Source: AGHT+IEqrqUPdxyh6nYJQcfD3zvrLobFkCBCdnIEdI/83k2YFCmj2OXCJVPDfmu5Z5HhIeTYWdj2MQ==
X-Received: by 2002:a05:6e02:154a:b0:42f:9399:ce93 with SMTP id e9e14a558f8ab-432f9028b73mr8923535ab.20.1761684597966;
        Tue, 28 Oct 2025 13:49:57 -0700 (PDT)
Received: from [172.22.22.234] (c-75-72-117-212.hsd1.mn.comcast.net. [75.72.117.212])
        by smtp.gmail.com with ESMTPSA id e9e14a558f8ab-431f67eb4b3sm47212635ab.12.2025.10.28.13.49.55
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 28 Oct 2025 13:49:57 -0700 (PDT)
Message-ID: <a836c200-e079-424c-9fad-600f802e5220@riscstar.com>
Date: Tue, 28 Oct 2025 15:49:54 -0500
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 0/7] Introduce SpacemiT K1 PCIe phy and host controller
To: Johannes Erdfelt <johannes@erdfelt.com>
Cc: robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org,
 bhelgaas@google.com, lpieralisi@kernel.org, kwilczynski@kernel.org,
 mani@kernel.org, vkoul@kernel.org, kishon@kernel.org, dlan@gentoo.org,
 guodong@riscstar.com, pjw@kernel.org, palmer@dabbelt.com,
 aou@eecs.berkeley.edu, alex@ghiti.fr, p.zabel@pengutronix.de,
 christian.bruel@foss.st.com, shradha.t@samsung.com,
 krishna.chundru@oss.qualcomm.com, qiang.yu@oss.qualcomm.com,
 namcao@linutronix.de, thippeswamy.havalige@amd.com, inochiama@gmail.com,
 devicetree@vger.kernel.org, linux-pci@vger.kernel.org,
 linux-phy@lists.infradead.org, spacemit@lists.linux.dev,
 linux-riscv@lists.infradead.org, linux-kernel@vger.kernel.org
References: <20251013153526.2276556-1-elder@riscstar.com>
 <aPEhvFD8TzVtqE2n@aurel32.net>
 <92ee253f-bf6a-481a-acc2-daf26d268395@riscstar.com>
 <aQEElhSCRNqaPf8m@aurel32.net> <20251028184250.GM15521@sventech.com>
 <82848c80-15e0-4c0e-a3f6-821a7f4778a5@riscstar.com>
 <20251028204832.GN15521@sventech.com>
Content-Language: en-US
From: Alex Elder <elder@riscstar.com>
In-Reply-To: <20251028204832.GN15521@sventech.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251028_134959_148902_39DF03AB 
X-CRM114-Status: GOOD (  16.15  )
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

On 10/28/25 3:48 PM, Johannes Erdfelt wrote:
> On Tue, Oct 28, 2025, Alex Elder <elder@riscstar.com> wrote:
>> On 10/28/25 1:42 PM, Johannes Erdfelt wrote:
>>> I have been testing this patchset recently as well, but on an Orange Pi
>>> RV2 board instead (and an extra RV2 specific patch to enable power to
>>> the M.2 slot).
>>>
>>> I ran into the same symptoms you had ("QID 0 timeout" after about 60
>>> seconds). However, I'm using an Intel 600p. I can confirm my NVME drive
>>> seems to work fine with the "pcie_aspm=off" workaround as well.
>>
>> I don't see this problem, and haven't tried to reproduce it yet.
>>
>> Mani told me I needed to add these lines to ensure the "runtime
>> PM hierarchy of PCIe chain" won't be "broken":
>>
>> 	pm_runtime_set_active()
>> 	pm_runtime_no_callbacks()
>> 	devm_pm_runtime_enable()
>>
>> Just out of curiosity, could you try with those lines added
>> just before these assignments in k1_pcie_probe()?
>>
>> 	k1->pci.dev = dev;
>> 	k1->pci.ops = &k1_pcie_ops;
>> 	dw_pcie_cap_set(&k1->pci, REQ_RES);
>>
>> I doubt it will fix what you're seeing, but at the moment I'm
>> working on something else.
> 
> Unfortunately there is no difference with the runtime PM hierarchy
> additions.
> 
> JE

Thank you very much for testing.  I'll try to learn more
about this in the next day or so and will resolve it if
possible before I send the next version of this code.

					-Alex

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
