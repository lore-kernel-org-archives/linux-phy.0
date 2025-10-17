Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 44E35CCD195
	for <linux-phy@archiver.kernel.org>; Fri, 17 Oct 2025 16:20:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=jIRFszsu7MLiZ8yhB357lXvNeQIaMklVWOxKAHiknvU=; b=B5FjjhsqCChzRl
	dG9VYhtk2LDfgVcGq5o75CdB+g6EPb3u+boRWdpcLCixWs0/nSdBQqjDfM/QGbOrWOlCIcnDIbVR0
	mCQDCbW6TKnI6EGLmTsx1upiAg51t0udq98zDFqLL+II3d8TAbFEBfBJB+/+ulxNE6a19Glisf5jp
	ZqxjJFwfJKbrAP+Ju2VYME64l2RVwd0DJJvlE+1YjEjxWJZYSwmi7duKnfkG0DZelUNS4PYcKK5Em
	Mb2u1Jjs/lUBbYBAbut9vUbqW/zUw3sPRfrwLG7eIZjfRiMlazQZAO7gaErlKEWqNZoqmyfGmWrlJ
	7La+gzthgqY5PLCH+Q2w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1v9nC8-00000008Pxq-0qFP;
	Fri, 17 Oct 2025 16:20:44 +0000
Received: from mail-il1-f180.google.com ([209.85.166.180])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1v9nC5-00000008Pwj-1fva
	for linux-phy@lists.infradead.org;
	Fri, 17 Oct 2025 16:20:42 +0000
Received: by mail-il1-f180.google.com with SMTP id e9e14a558f8ab-430ccd45f19so4191345ab.1
        for <linux-phy@lists.infradead.org>; Fri, 17 Oct 2025 09:20:40 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=riscstar-com.20230601.gappssmtp.com; s=20230601; t=1760718040; x=1761322840; darn=lists.infradead.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=CVQ6phuTO84kFBkRt8EnO28DbxtrTEoiT+THIp/h4p4=;
        b=1mofhyBSw0B53AMbfVgl9AeyMAQ+QfYSL/+W8ndG9WQfJeE3pzKAzYHwXSXxwwiTv5
         Z//V8KLzfUl3SMAtw/5t1EE2mTfPpkGtO9uBs6odGqXNBAnaarb5bfN7SuUQHn+GhP6I
         NNVh+DXCAbKpaFcGnFqs2RjAYlp7zjkCKfRv1XkVTkOZr4WXLkJeQlWlTEKK5vpmveMz
         v5orCZ/NR+vIdG5qx+IwKOGOuYKL+bc20whmrEwd//8nJBNuXdmyxLBkhzYpAjOazQl1
         v5NnfztCJAs+pUoGsPbvKq/PACxS3qLESHYQXFhAd2qz06o5o2Ok25HZ0Yr8j11Tu7e9
         nsUQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1760718040; x=1761322840;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=CVQ6phuTO84kFBkRt8EnO28DbxtrTEoiT+THIp/h4p4=;
        b=rt415ij9q9T2jChATMckXMuXiRtGIhCC8czgAn9DLJ4mou8PxOiDqGP+fiCIdWOp4Y
         MGGobG79IqsbkgnrBrOd1tBescLn2dolzN0XVj0hN4TgICuWVkGYS75YZZTCW8isD85+
         2sN4xP1H+YU4hTkk1mGedZsB7vetC2NEaDCVANTJtqvNMBvl5oeBQLZwXmTl+lysKswV
         N1772E7Mc9lv7AmOJw60AMyMc/97lB8bv2k8/8cXB4wFMkdtYkewKDGDAZSZiHXHEq9s
         oocxY8ERns23AtrHSIcjFvcKER/mScbqDBcVETATq7IRySJMd+8lg68wzgXBIiNEWehq
         J7Ig==
X-Forwarded-Encrypted: i=1; AJvYcCXs8A0WoJCaDe0C3tmYJAXLgwL+4HzV27N4LKbnQFgZmDo/LOC5A7OCnagectGqdbi0YR3BrCTJf+8=@lists.infradead.org
X-Gm-Message-State: AOJu0YxXYQ8OA2eKIfeMQAZuC2JbXBbBE+NfsxeoS/EZiERvjuBXvJKT
	mY+5cgOzTodcNiCA4XQiSlcsp87iKCSrjgwIEywHuJBArB+Qhfav23y+DJdBqaedCAQ=
X-Gm-Gg: ASbGncuYNqvsUqTWuO2d0Hr/eD8azSl86cj4aPMsvQvHqnegQabL2nomu53/7rWjHuG
	hJZhJeezHxoop5Y6y7eNc0PFRGyVTngl9L6P7ezbtdKylNgqYXRjOQq5rdby0rX0EzhsefBXefy
	hLWO9af8D2pgLiE2m/VzK72aXtpq/KLSPZh76j6k/nBIPDD3oJojCH6JGRmFtSimCpPSGvJJs+P
	yBv+HZ/4t0drcpQqZeZqygtFW5u+T3b5COdE1Oz2MQ7zkb7YIob6hx05EHhcnh4BmQ1IsZjSVa7
	pIwusYoRMIkx7qR31Xx6OsJ+Rsz2TGtXN2CWcFH1xltZsiaN9ny58RqHBzk8//Kho3Mn6Cge7z3
	k3/B+oC+bv3Lg6syPZY9MBjhflpgj+APOxLFHaIvqtGBLoGuvB5yUFpjD3QqiG/eSsslizJwYMN
	siVd/suHCm+mT62O8Y+3SLdxbi2FaBIawDntsb8ZA=
X-Google-Smtp-Source: AGHT+IHkLguz0srIwb9Y0kZ8Jj/SerEa4TnF03jUDSOPF34f5dBqn26UDMGx8TBiPYMDv2ZC0jD7cw==
X-Received: by 2002:a05:6e02:1d9d:b0:430:a65c:a833 with SMTP id e9e14a558f8ab-430c52ccf5fmr57021215ab.31.1760718039725;
        Fri, 17 Oct 2025 09:20:39 -0700 (PDT)
Received: from [172.22.22.28] (c-75-72-117-212.hsd1.mn.comcast.net. [75.72.117.212])
        by smtp.gmail.com with ESMTPSA id 8926c6da1cb9f-5a8a97689basm12877173.49.2025.10.17.09.20.37
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 17 Oct 2025 09:20:39 -0700 (PDT)
Message-ID: <3ccf196c-aa57-4977-9dea-a54172e427fa@riscstar.com>
Date: Fri, 17 Oct 2025 11:20:37 -0500
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 1/7] dt-bindings: phy: spacemit: add SpacemiT
 PCIe/combo PHY
To: Rob Herring <robh@kernel.org>
Cc: krzk+dt@kernel.org, conor+dt@kernel.org, bhelgaas@google.com,
 lpieralisi@kernel.org, kwilczynski@kernel.org, mani@kernel.org,
 vkoul@kernel.org, kishon@kernel.org, dlan@gentoo.org, guodong@riscstar.com,
 pjw@kernel.org, palmer@dabbelt.com, aou@eecs.berkeley.edu, alex@ghiti.fr,
 p.zabel@pengutronix.de, christian.bruel@foss.st.com, shradha.t@samsung.com,
 krishna.chundru@oss.qualcomm.com, qiang.yu@oss.qualcomm.com,
 namcao@linutronix.de, thippeswamy.havalige@amd.com, inochiama@gmail.com,
 devicetree@vger.kernel.org, linux-pci@vger.kernel.org,
 linux-phy@lists.infradead.org, spacemit@lists.linux.dev,
 linux-riscv@lists.infradead.org, linux-kernel@vger.kernel.org
References: <20251013153526.2276556-1-elder@riscstar.com>
 <20251013153526.2276556-2-elder@riscstar.com>
 <20251015145217.GA3554740-robh@kernel.org>
Content-Language: en-US
From: Alex Elder <elder@riscstar.com>
In-Reply-To: <20251015145217.GA3554740-robh@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251017_092041_679640_F28A0B13 
X-CRM114-Status: UNSURE (   6.52  )
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

On 10/15/25 9:52 AM, Rob Herring wrote:
>> +  resets:
>> +    items:
>> +      - description: DWC PCIe Data Bus Interface (DBI) reset
>> +      - description: DWC PCIe application AXI-bus Master interface reset
>> +      - description: DWC PCIe application AXI-bus slave interface reset
>> +      - description: PHY reset; must be deasserted for PHY to function
>> +
>> +  reset-names:
>> +    items:
>> +      - const: dbi
>> +      - const: mstr
>> +      - const: slv
>> +      - const: phy
> I think phy should be first as that's the main one to the phy and the
> others are somewhat questionable. Otherwise,
> 
> Reviewed-by: Rob Herring (Arm)<robh@kernel.org>

OK I'll arrange them that way in v3.  Thank you.	-Alex

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
