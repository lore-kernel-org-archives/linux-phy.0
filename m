Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 3C11CC43458
	for <linux-phy@archiver.kernel.org>; Tue, 30 Jun 2026 22:08:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=SH/QYC/KtLZ97zRnWiaSVAav75VlLd8Eu7YHhwROMcc=; b=UGzZttlk86la1N
	bmTlIa/t8ArWtLmMVe37xPPpLY8WkXCQultmQVvm2qfhIVfdwSZrhIRH1Ch4ktf5Pbc7LCCwmNFEO
	GRvO7aw/iNJPXkIjq0+TQVNIhj40RXxaTh3b51Mvd3zaiQAF/6cSOuDHFej7YFDYrWsGUI3ZCNReT
	2/lAujleLd9o7fY1K51LJeAWpDCsCrCPyuCp2aA/oVESVMvwM+rMJ+SPO9Tl+OVZwy010mcOvcwwk
	Hxt48EykJ0H8tTtW2puBp02vKlHtB6qvpBQZzSC6vqpBsoem3NNs7UlP488RhJ7aFw87WxYfBXDZT
	oQwKP/7Ol4T4f3aoaeVA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wegcx-00000000HkG-0uU5;
	Tue, 30 Jun 2026 22:08:23 +0000
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wegcu-00000000HjM-38l6
	for linux-phy@lists.infradead.org;
	Tue, 30 Jun 2026 22:08:22 +0000
Received: from pps.filterd (m0279872.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 65UJDjk82879935
	for <linux-phy@lists.infradead.org>; Tue, 30 Jun 2026 22:08:18 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	BcCIhz6+fnrglONp8q+fp9mef6PmcObbxRhKXStO7Qc=; b=cCTN+vD4HZwmI8lY
	ejqu7lzDeKTXwqFAMS/sTRNpvdMoMiAxUyoiJA4eFhpTgRLfRvMGXkbNO/sLcOq/
	Kr+o5qtLY8bZPydk48LmdD/QYhha9Mb3Zu6Jg+jFbz2OOi1lt4JlAnzouxfKRufJ
	1vGYuxgbkXfYsDebztJs91VxnfPK2OfyBaisU1JmguWpqdxoLPcaXic72syA9QUH
	lQgzTeaDRLIA5CkABN64XzCZrZhXKelOBhJ4L0wGngzhGDLoUE7KBunhksmwlV73
	6OwRuUZRp541lZkHdVRtlTvsEu9R7y1qiVobl6Ek9AO7twcGrKJzrgt8SbClgnEU
	dlxizg==
Received: from mail-qk1-f197.google.com (mail-qk1-f197.google.com [209.85.222.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4f4hfy9d4f-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Tue, 30 Jun 2026 22:08:18 +0000 (GMT)
Received: by mail-qk1-f197.google.com with SMTP id af79cd13be357-92e52306621so446561885a.1
        for <linux-phy@lists.infradead.org>; Tue, 30 Jun 2026 15:08:18 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1782857298; x=1783462098; darn=lists.infradead.org;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=BcCIhz6+fnrglONp8q+fp9mef6PmcObbxRhKXStO7Qc=;
        b=TgYBaj8mFHD+LyDr87UTUqhnWcQkNOdxuhM6QUn4KlcU0mvuKug4Zbb2iAcxacRlNl
         kPlMVBkqsMRWuyYLnTOM7CEkQ/7WfP3cEiA7IzSNimh/Wl8lgWIQzrljZc+fYy6xMNuL
         8xhs6zfDkUGg0ALd9AEpFTPaAb633EgWrsbXz+znULtW2dCPdewIwL55IoY6b9xMdv5V
         y/OxdnvavYYt8n82D+TkPK6rndQ4h/WYVwNqaqpEzcyIWzLqZ5dkU5YvWrfa4VGIp6gV
         EL/+WysSkAOxiFaiJRDnNyIRXYbJopptQb/dQMHn12xcE93nlSYOa+82d16dobEumtOx
         gPRg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1782857298; x=1783462098;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=BcCIhz6+fnrglONp8q+fp9mef6PmcObbxRhKXStO7Qc=;
        b=GuL+C++9XspM6NgwlFD3vzSmqyVykPpGeN8Q3niM4JTOS4BXNyht6DtBN/VIOmR560
         m1FxcyF9Pp4REoneedQ3NaT5BYGmc1e0YGIDuQcqJIrhZetfaLeuUyDJI7nN6aiAASy9
         G2S2f+HgLUruT9TYSRHY/fPv5W+4TSkGkYBgxpl68HU7RVm/SDvSdnwt7vP2FlicceC8
         4DLqmX1vSaBtJQFZN1Fhob8fM9lEbLY0Py8krMXIS+ok/Hs5A8FRU31Oh6MhXsxx2kw2
         LwX9wQNNgFxPBnZOb0tHq+1Gv1GB3lwKoIjXAHYwI9/5Mhhq9deRId+ouC6cGh3huxaJ
         1x0w==
X-Forwarded-Encrypted: i=1; AFNElJ/V3JLHiVdrWZJi4Xuv0IUMetGebcwaO/FKo2OjkAS8h4Hfc7Uf8RFD3Pty2jrUn57uNUKIXnr58NM=@lists.infradead.org
X-Gm-Message-State: AOJu0YyQgVkXOiXNaUqQnZelISaOt9RhyvqQ+SkHHzYz+hKjIWkB9tWv
	PUOMWdSRSlna0nY85XOCmsGNCk5nyD28ZNQKEkoKBvzJmK6P1TNVTIOuH7n9XSgl6fRRZQy+wCg
	vK7wFqru/AFN/1igwb40wNol/5AeZssD74NOo4fLsnuMDuyI0Wa/rXk7Xjjln8FI9jX+h
X-Gm-Gg: AfdE7ckFRzNmv660zTk91BjXON0WXyuDd9qQIX3Zt5PQUjMKPKo8TGaPCjf84NrCb8v
	Qisf52JsoqogAUdCU9drtZfb9w5Md5MeA7Evx9kBZwSsyK33EBzQLsNvr/5y33u2WlZDkwQ8xxw
	QC5nDN1GZTj6vhDTOznaFeAcm3wLn/0dMM/dNl/fCAE/h61gwhJX7GdUG9h49fZ+YVs0OYNNENR
	l51qioX2+yHh62OpboMRGGDGSQne3zJRDvpyQsb4ZKcWbl0zSXNToh610TFvZnfu9dbQnTeo3On
	nApyvdbwGm6V9UvvgAeREGvwbfkOHm7+FInD8E3kptQfApfN6GpaBKi4cuIJ5WNZoBNS9AdUyzT
	yfyGKF9mW4Pdjpb6Z3SxBcs885LRqUZ78nyCNbMGcPZMmq4Q/h0pZZT6jjFYOgA==
X-Received: by 2002:a05:620a:25d3:b0:92e:5c56:727a with SMTP id af79cd13be357-92e627fa3f0mr909680285a.60.1782857297836;
        Tue, 30 Jun 2026 15:08:17 -0700 (PDT)
X-Received: by 2002:a05:620a:25d3:b0:92e:5c56:727a with SMTP id af79cd13be357-92e627fa3f0mr909671285a.60.1782857297248;
        Tue, 30 Jun 2026 15:08:17 -0700 (PDT)
Received: from [192.168.69.212] (88-187-86-199.subs.proxad.net. [88.187.86.199])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-4756636cf26sm9903482f8f.19.2026.06.30.15.08.14
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 30 Jun 2026 15:08:16 -0700 (PDT)
Message-ID: <9c94a0b6-a2e6-4d3e-872d-b1d3954a4071@oss.qualcomm.com>
Date: Wed, 1 Jul 2026 00:08:14 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 03/13] mips: replace linux/gpio.h inclusions
Content-Language: en-US
To: Arnd Bergmann <arnd@kernel.org>, linux-gpio@vger.kernel.org
Cc: Arnd Bergmann <arnd@arndb.de>, Bartosz Golaszewski <brgl@kernel.org>,
        Andrew Lunn <andrew@lunn.ch>,
        Sebastian Hesselbarth <sebastian.hesselbarth@gmail.com>,
        Gregory Clement <gregory.clement@bootlin.com>,
        Frank Li <Frank.Li@nxp.com>, Robert Jarzmik <robert.jarzmik@free.fr>,
        Krzysztof Kozlowski <krzk@kernel.org>,
        Greg Ungerer <gerg@linux-m68k.org>,
        Thomas Bogendoerfer <tsbogend@alpha.franken.de>,
        Hauke Mehrtens <hauke@hauke-m.de>,
        =?UTF-8?B?UmFmYcWCIE1pxYJlY2tp?=
 <zajec5@gmail.com>,
        Yoshinori Sato <ysato@users.sourceforge.jp>,
        John Paul Adrian Glaubitz <glaubitz@physik.fu-berlin.de>,
        Linus Walleij <linusw@kernel.org>,
        Dmitry Torokhov <dmitry.torokhov@gmail.com>,
        Jakub Kicinski
 <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>,
        Dominik Brodowski <linux@dominikbrodowski.net>,
        linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        linux-samsung-soc@vger.kernel.org, patches@opensource.cirrus.com,
        linux-m68k@lists.linux-m68k.org, linux-mips@vger.kernel.org,
        linux-sh@vger.kernel.org, linux-input@vger.kernel.org,
        linux-media@vger.kernel.org, netdev@vger.kernel.org,
        linux-sunxi@lists.linux.dev, linux-phy@lists.infradead.org,
        linux-rockchip@lists.infradead.org, linux-sound@vger.kernel.org
References: <20260629132633.1300009-1-arnd@kernel.org>
 <20260629132633.1300009-4-arnd@kernel.org>
From: =?UTF-8?Q?Philippe_Mathieu-Daud=C3=A9?= <philmd@oss.qualcomm.com>
In-Reply-To: <20260629132633.1300009-4-arnd@kernel.org>
X-Authority-Analysis: v=2.4 cv=J5OaKgnS c=1 sm=1 tr=0 ts=6a443e52 cx=c_pps
 a=50t2pK5VMbmlHzFWWp8p/g==:117 a=4s3hRJSeHn4rkQlkrse1kQ==:17
 a=IkcTkHD0fZMA:10 a=FelO9ux0wxsA:10 a=M51BFTxLslgA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=yx91gb_oNiZeI1HMLzn7:22
 a=EUspDBNiAAAA:8 a=1tSEMpTH9XP_W59IOagA:9 a=3ZKOabzyN94A:10 a=QEXdDO2ut3YA:10
 a=IoWCM6iH3mJn3m4BftBB:22
X-Proofpoint-ORIG-GUID: gMYXSau1m7w7M-mmrdSm7_2opM8acgBC
X-Proofpoint-Spam-Info: AW1haW4tMjYwNjMwMDIxNiBTYWx0ZWRfX7fFu2Rz2K8Wp
 Bo1f1YkLNYRZIUKtYok4u1Gx/VBLJW7+smRpiZNBpNahDuLWj3l6fuMAniRPXC6GhDqxr15EEcq
 OwyCuajqMC1IsDrGahPIjR2KgWUGbUs=
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwNjMwMDIxNiBTYWx0ZWRfX7j24Ura7Z539
 9RqpzqIq/S0KRYEHaFK1hHyEZJgxGgfIytM1KS6frhaSZtJechbdEoC99cf+rvqg8nK/oavbisD
 OBDY1eZgw+qpPtOQh7vp+rq0X/3c5eigyZqD4FD22KCmrP71nUFtQUnLfmu3G+i98Q8ahi7Tuss
 HVO8uLFim2UAhO5+SVP/POWq4o9/sZ8W6qww/0CWxLEq5YdKWTuYiPleuHUOoHP2IBud1299Rzi
 1A/pHxBL3jpVeg1UYhvCDGt2PSw5IoIWKzDt59keY8C7at/EL3ScOVBIPWflg28u/FmkeFl35wv
 O8gSk5NASvaENs4WF5S9HqbNkJflIA74oDcH0U4v2UoykDhGzIWCgCYGw+gbKo/TRrvJE+34vSe
 4JnC1Usamkn2J4BPX8RRUkfxLK8X4PBUoWeW8trll0sj+Q4gkyEoeXkQu7JXZ5Yr8pTWrvLV+r5
 nyIcTXPozZe6FRnaiKg==
X-Proofpoint-GUID: gMYXSau1m7w7M-mmrdSm7_2opM8acgBC
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.125,FMLib:17.12.100.49
 definitions=2026-06-30_05,2026-06-26_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 phishscore=0 bulkscore=0 priorityscore=1501 adultscore=0 clxscore=1011
 lowpriorityscore=0 malwarescore=0 impostorscore=0 spamscore=0 suspectscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2606150000 definitions=main-2606300216
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260630_150820_897734_C1E77F48 
X-CRM114-Status: GOOD (  11.34  )
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
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Sender: "linux-phy" <linux-phy-bounces@lists.infradead.org>
Errors-To: linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org

T24gMjkvNi8yNiAxNToyNiwgQXJuZCBCZXJnbWFubiB3cm90ZToKPiBGcm9tOiBBcm5kIEJlcmdt
YW5uIDxhcm5kQGFybmRiLmRlPgo+IAo+IGxpbnV4L2dwaW8uaCBzaG91bGQgbm8gbG9uZ2VyIGJl
IHVzZWQsIGNvbnZlcnQgdGhlc2UgaW5zdGVhZCB0bwo+IGVpdGhlciBsaW51eC9ncGlvL2NvbnN1
bWVyLmggb3IgbGludXgvZ3Bpby9sZWdhY3kuaCBhcyBuZWVkZWQuCj4gCj4gU2lnbmVkLW9mZi1i
eTogQXJuZCBCZXJnbWFubiA8YXJuZEBhcm5kYi5kZT4KPiAtLS0KPiAgIGFyY2gvbWlwcy9hbGNo
ZW15L2JvYXJkLXh4czE1MDAuYyAgICAgICAgICAgICAgICAgICB8IDIgKy0KPiAgIGFyY2gvbWlw
cy9hbGNoZW15L2RldmJvYXJkcy9kYjEwMDAuYyAgICAgICAgICAgICAgICB8IDIgKy0KPiAgIGFy
Y2gvbWlwcy9hbGNoZW15L2RldmJvYXJkcy9kYjEyMDAuYyAgICAgICAgICAgICAgICB8IDIgKy0K
PiAgIGFyY2gvbWlwcy9hbGNoZW15L2RldmJvYXJkcy9kYjE1NTAuYyAgICAgICAgICAgICAgICB8
IDIgKy0KPiAgIGFyY2gvbWlwcy9iY200N3h4L3dvcmthcm91bmRzLmMgICAgICAgICAgICAgICAg
ICAgICB8IDIgKy0KPiAgIGFyY2gvbWlwcy9iY202M3h4L2JvYXJkcy9ib2FyZF9iY205NjN4eC5j
ICAgICAgICAgICB8IDEgKwo+ICAgYXJjaC9taXBzL2luY2x1ZGUvYXNtL21hY2gtYmNtNjN4eC9i
b2FyZF9iY205NjN4eC5oIHwgMiArLQo+ICAgYXJjaC9taXBzL3R4eDkvcmJ0eDQ5Mjcvc2V0dXAu
YyAgICAgICAgICAgICAgICAgICAgIHwgMiArLQo+ICAgOCBmaWxlcyBjaGFuZ2VkLCA4IGluc2Vy
dGlvbnMoKyksIDcgZGVsZXRpb25zKC0pCgpSZXZpZXdlZC1ieTogUGhpbGlwcGUgTWF0aGlldS1E
YXVkw6kgPHBoaWxtZEBvc3MucXVhbGNvbW0uY29tPgoKLS0gCmxpbnV4LXBoeSBtYWlsaW5nIGxp
c3QKbGludXgtcGh5QGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cHM6Ly9saXN0cy5pbmZyYWRlYWQu
b3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtcGh5Cg==
