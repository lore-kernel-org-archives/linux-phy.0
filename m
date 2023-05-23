Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 67D83C77B75
	for <linux-phy@archiver.kernel.org>; Tue, 23 May 2023 01:03:13 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:CC:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=kcfSBEvyvK62/bMYDpsKTbN67OB7FHpUBjOSmrFrtZg=; b=QHH3uQwZSXsa6I
	NZq7xOzM/I0XFztdiqk770LyzF5mNVYXBBqPQeapvmD3OULevvfC0zuBT6MzPMM8x4ihBht33irKg
	uQ+xNq0bHImz6JR5fmv0AH+D/JmDeWfTW6+Gy8F4Jw0QJO1rOI7DWIe3uSk9iDPkt5zwjBCzZkNAb
	B/FsPvfoMalc7XRfuKkVWdl/cl4zg0u8C3zlaZ8f6mI/Sk9dpZX/6WGNc/+AXIxCxcxPUFgJe6ad/
	8dGyYCS3uUE9LhmebKOh8EttGH5J/zzMHAxeMqmBOhB8TUB9YIfGsF6BGRu/c3/Ip/kHFUqFROKhg
	hMcmsmayPFIOm+c01lHg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1q1GQj-008XmQ-08;
	Tue, 23 May 2023 01:03:13 +0000
Received: from ex01.ufhost.com ([61.152.239.75])
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1q1GQg-008XkY-1C;
	Tue, 23 May 2023 01:03:12 +0000
Received: from EXMBX166.cuchost.com (unknown [175.102.18.54])
	(using TLSv1 with cipher DHE-RSA-AES256-SHA (256/256 bits))
	(Client CN "EXMBX166", Issuer "EXMBX166" (not verified))
	by ex01.ufhost.com (Postfix) with ESMTP id EA59B24E1BA;
	Tue, 23 May 2023 09:02:25 +0800 (CST)
Received: from EXMBX062.cuchost.com (172.16.6.62) by EXMBX166.cuchost.com
 (172.16.6.76) with Microsoft SMTP Server (TLS) id 15.0.1497.42; Tue, 23 May
 2023 09:02:25 +0800
Received: from [192.168.125.107] (183.27.98.143) by EXMBX062.cuchost.com
 (172.16.6.62) with Microsoft SMTP Server (TLS) id 15.0.1497.42; Tue, 23 May
 2023 09:02:24 +0800
Message-ID: <7d4c3c08-6590-5947-92c6-1425c0cb662d@starfivetech.com>
Date: Tue, 23 May 2023 09:02:24 +0800
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:102.0) Gecko/20100101
 Thunderbird/102.11.0
Subject: Re: [PATCH v4 0/3] Add JH7110 MIPI DPHY RX support
Content-Language: en-US
To: Conor Dooley <conor.dooley@microchip.com>
CC: Vinod Koul <vkoul@kernel.org>, Kishon Vijay Abraham I <kishon@kernel.org>,
	Rob Herring <robh+dt@kernel.org>, Krzysztof Kozlowski
	<krzysztof.kozlowski+dt@linaro.org>, Emil Renner Berthing <kernel@esmil.dk>,
	Conor Dooley <conor@kernel.org>, Paul Walmsley <paul.walmsley@sifive.com>,
	Palmer Dabbelt <palmer@dabbelt.com>, Albert Ou <aou@eecs.berkeley.edu>,
	Philipp Zabel <p.zabel@pengutronix.de>, Jack Zhu <jack.zhu@starfivetech.com>,
	<linux-phy@lists.infradead.org>, <devicetree@vger.kernel.org>,
	<linux-kernel@vger.kernel.org>, <linux-riscv@lists.infradead.org>
References: <20230412084540.295411-1-changhuang.liang@starfivetech.com>
 <93d39956-25c9-971b-e73b-09c69e803341@starfivetech.com>
 <20230522-extradite-nastily-c2a88cfd2f02@wendy>
From: Changhuang Liang <changhuang.liang@starfivetech.com>
In-Reply-To: <20230522-extradite-nastily-c2a88cfd2f02@wendy>
X-Originating-IP: [183.27.98.143]
X-ClientProxiedBy: EXCAS062.cuchost.com (172.16.6.22) To EXMBX062.cuchost.com
 (172.16.6.62)
X-YovoleRuleAgent: yovoleflag
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230522_180310_562553_1D9E6577 
X-CRM114-Status: UNSURE (   9.66  )
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



On 2023/5/22 21:11, Conor Dooley wrote:
> On Mon, May 22, 2023 at 09:00:04PM +0800, Changhuang Liang wrote:
>> On 2023/4/12 16:45, Changhuang Liang wrote:
>>> This patchset adds mipi dphy rx driver for the StarFive JH7110 SoC.
>>> It is used to transfer CSI camera data. The series has been tested on
>>> the VisionFive 2 board.
>>>
> 
>> Can you help to find the Vinod reviewed this patchset?
> 
> I am sorry, but I have no idea what you mean.
> Are you asking if I can get Vinod to review the series?
> 

Yes, I need his comments.

Thanks,
Changhuang

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
