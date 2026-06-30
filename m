Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 09ECAC43458
	for <linux-phy@archiver.kernel.org>; Tue, 30 Jun 2026 22:10:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=a2E89vGOTUJuQVc5a3DrQInXrRY7zA3YOqPdloGRcI0=; b=YGyF3zWlYJ0+Bf
	bRpOS9w5nIlaHObuOQ2LNnhpFQXfDUEX2VSDICz9vds4G2j0JbYndOMGK0+R0ZxseqcR3rSKyApjd
	/oZwz5Mm3oxho2Pi641BxsqmHDQKRRIO2EZtIuQSzt9NpCtIv67zJ5dRKYKyq7FkStX82i3d+BUmx
	n+BS+lFRKMKCEI1H8iGymrS1Di7UpGI9T+cONrjdKPCJdR0joP+9VG18n1ey0xdvCr16dc0Kc+A2a
	UhJKHRVQMNQFhxhYUC4Z5UkxN2ghiZs35dgqZc/7PewQNLWeon/fm0vQP8f3q1TCKtzjWWuB62wXK
	yiWqQ0064EAUn37KAb/A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wegeY-00000000IAr-1V52;
	Tue, 30 Jun 2026 22:10:02 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wegeV-00000000I96-2S73
	for linux-phy@lists.infradead.org;
	Tue, 30 Jun 2026 22:10:01 +0000
Received: from pps.filterd (m0279864.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 65UJDrH42838664
	for <linux-phy@lists.infradead.org>; Tue, 30 Jun 2026 22:09:59 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	71yptdqayaVFzpJtAQzWI+qpR5NfHXrkWbz9ikn7Ryc=; b=UVVUyqEgI3aai44H
	QkYs6h4Sk/6/uPO94ctKOtJjj3n5+wTduu75T3lBINHDzCPeXdCe/LLgdz4BiIIA
	I6FCYJGuW6rbqCzG+PqGMHpMb6xjJcmfkHJt1PYgP/kntODh+X0VaaTTgDbDdP/t
	5mK6QuZEI5QJqRhPc//Uvx2PsEtojBE3Wf5jUoCGbxwxji82ZKuqfAGOBqi/CtJM
	MHsN9S66aTzRxKSc9r6r3jxLGT72P0S66dSuzw/gjfRycE/zeF8d/az8b9/+BxqX
	uSr2XsXere5zlNsaYwMjPVwz06xYAC/u+oMsdfeWvyWqnAZBEcPGno6XGT0scTZD
	4sRW/w==
Received: from mail-qk1-f199.google.com (mail-qk1-f199.google.com [209.85.222.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4f4hbd1g5a-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Tue, 30 Jun 2026 22:09:59 +0000 (GMT)
Received: by mail-qk1-f199.google.com with SMTP id af79cd13be357-92e61b38eddso485402485a.2
        for <linux-phy@lists.infradead.org>; Tue, 30 Jun 2026 15:09:58 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1782857398; x=1783462198; darn=lists.infradead.org;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=71yptdqayaVFzpJtAQzWI+qpR5NfHXrkWbz9ikn7Ryc=;
        b=TSnUjborcPmrdscjZLVj762h8DvWphle8/+0XE0aiQc3H34PyEFiCVzFskmwDTyxBU
         C45teT331OShGJAFQtb9oFe0mu96Akfv7S7zqZzl1el6/aU9B+TLuHZTPe2RAmEthUMa
         Kg3EKP4c9hMFUQJravx+qTTYiT++ygb8f5bMXF166B43eJdYcz43m8oWG1XHkFNmSeME
         tC76fum0dwy97m2nbacMc9x1SR5nnAEcgpT9htqk/NJShrHReJS2iI0LzgOzJS/WdSmy
         HSBN429ezRYfsgjTSjnpNAZ/Lggj1DSDlM+p0UCWpQgpx+Q2UW6DBbW4XrqeS2+plyn9
         cnbw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1782857398; x=1783462198;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=71yptdqayaVFzpJtAQzWI+qpR5NfHXrkWbz9ikn7Ryc=;
        b=cX7Ks7ac5/VDl9TW57ABQM9au2g5UtRhkBFvihYEDgPgA3Is15IQ6z9KVnPqTIlwmm
         zwzpaKKMz9CqrgIrfUJgdQ/A1NANs7+BHlX8B0nIzRRzwY7SwlNn4AkOmz6FosDgta7+
         U1w1WsAWx37GdTevSgcRjJRW5mfFKFtl5rJ8SWNmpqM7amFQZZT1ZKGXbmiP7XVe27My
         lCrC1QJu/Jd5wTPCAQwXsz1Smc7LkOi4ElXeKcdCI6rc6P2rXkVXwgDobCUov2RZIE51
         8Zk0+pzd2JsLD3mvrheF8bfyVfKqvUP4hvqpCNfhE+UxuY3ahuoPM43TyVJyv40RCD60
         WV/A==
X-Forwarded-Encrypted: i=1; AFNElJ+bnz08VsBbnVPWLjQUbBNVKir2eDvj6n5K9x4aTdd5Zz19B+tmtY9bfzivNbF9yMf3xmmajh+mJO8=@lists.infradead.org
X-Gm-Message-State: AOJu0YzYZrdL/M9rXy+RUipr7hNeFk5rzPQG4Df+G4MbBUwEDRaifNtV
	86u/lIuig/hWZ4VoXDO05NTHMOS3e4oKsECvAqTM/DWXbgYNcmEVCUrKR7QHSV8Uif7Ts84LB5Y
	Z2b4q+128xskJtA4fMpQf5H3azIPXt00ZzClqFMVk3ju1d1JRPZdtzz9jgeAfsvUOMYrQ
X-Gm-Gg: AfdE7clHLDT8A8WVebToCr3CYxbLWU9fUshhNRNaXHf3I/U922M0OX/OZCXL7po14QY
	mrjlP30+xnfHUjzejiiHdVLr4XWB+PX2woOqhq/FM4iVx7zyWpLenBtWzg8jdPTQ5SqlL5n70pr
	ECUT4iqLdxt5Z/ONn5MGjnSljO1e0sgIZyUpCRP89wOhrYfxizNi/XCq0kMwhKn3V/fsONQ/Iis
	XJG2GAwQvwlUrLuWFpI9jV/H77y+e5ViCYdLQtbp8CStfbrMBuiSLg2aW4MqGxewlWfgKr8vURL
	EKo7c15RTHS5AIfxv2nitqCYdYi1UqU6vbCc54PZpfspxNx4D8okNwWTqowp8X3i0lbWWjZ/B1I
	poWIAHnUBC4B/jvQKmz7E1Tn+GaPlaWklclG/KDeVVNG4xHmr1oLU3xNz5mMIxg==
X-Received: by 2002:a05:620a:468c:b0:92b:6805:918a with SMTP id af79cd13be357-92e6d926a2cmr434244185a.66.1782857397417;
        Tue, 30 Jun 2026 15:09:57 -0700 (PDT)
X-Received: by 2002:a05:620a:468c:b0:92b:6805:918a with SMTP id af79cd13be357-92e6d926a2cmr434238085a.66.1782857396955;
        Tue, 30 Jun 2026 15:09:56 -0700 (PDT)
Received: from [192.168.69.212] (88-187-86-199.subs.proxad.net. [88.187.86.199])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-47563d195b3sm11865243f8f.8.2026.06.30.15.09.54
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 30 Jun 2026 15:09:56 -0700 (PDT)
Message-ID: <caa30078-9dd0-4f07-a206-2dcbd2ba09a1@oss.qualcomm.com>
Date: Wed, 1 Jul 2026 00:09:54 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 13/13] gpiolib: remove linux/gpio.h
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
 <20260629132633.1300009-14-arnd@kernel.org>
From: =?UTF-8?Q?Philippe_Mathieu-Daud=C3=A9?= <philmd@oss.qualcomm.com>
In-Reply-To: <20260629132633.1300009-14-arnd@kernel.org>
X-Proofpoint-Spam-Info: AW1haW4tMjYwNjMwMDIxNiBTYWx0ZWRfX6b6tPmwhuUbZ
 WpJARAhPhoGhM4/26ljP7Z5e3VjHFJKWluk1LslBvHF9yKgndsUEkv2QcDDV4OyqLPNXUj9S+hL
 kGemrThY5SOWw0NtWO4YTW7XFOTBwEI=
X-Authority-Analysis: v=2.4 cv=MpJiLWae c=1 sm=1 tr=0 ts=6a443eb7 cx=c_pps
 a=HLyN3IcIa5EE8TELMZ618Q==:117 a=4s3hRJSeHn4rkQlkrse1kQ==:17
 a=IkcTkHD0fZMA:10 a=FelO9ux0wxsA:10 a=M51BFTxLslgA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=DJpcGTmdVt4CTyJn9g5Z:22
 a=EUspDBNiAAAA:8 a=1tSEMpTH9XP_W59IOagA:9 a=3ZKOabzyN94A:10 a=QEXdDO2ut3YA:10
 a=bTQJ7kPSJx9SKPbeHEYW:22
X-Proofpoint-ORIG-GUID: xrvsMlZDgpgH8RZBFrN0cJu_59faF2TH
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwNjMwMDIxNiBTYWx0ZWRfX1qUeOcLXVbib
 LnxMLIF+9qai4xYVHXefGT16V3LQETimELGBF00gt5xFhnAn83j+IHAFkXaeJStVW9JjSqLTe8Z
 XCJ34HC48PKlHgVrZTfPqkdDjM1PaYXFhBadhrs7B3buWI3edJlQE7uwNKVihcMyZyX0At0p/N4
 T2prYzgzaJizxi2UakE+k/i+os/Uu2/ynpQXGqpAistpIFeOGOoPq8nb9izG8YuY/hyeFy1n6eH
 AqhmhD4WyWAngdU5eLr5tKQSKEUYP+asRk81iDkITp2ruSQ0OHuZTqriahY/EGm8L4jCr/YM8NE
 A0M0lpAySUqIAMfYQL8FhvmV8TfyXDN73y97kAbV1LayOnElSR1+Q8W1qNspXEt38xO5UnEI6Ic
 gGdq3rvsuvNxNeFs+tbhU0xyOB44VHJlkRzPC11eOzJl6ttljvsmtpO9bd3GdbbgKNLBABTAp0s
 aSRbUmaQSy7j0FCSCYw==
X-Proofpoint-GUID: xrvsMlZDgpgH8RZBFrN0cJu_59faF2TH
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.125,FMLib:17.12.100.49
 definitions=2026-06-30_05,2026-06-26_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 lowpriorityscore=0 priorityscore=1501 clxscore=1011 impostorscore=0
 phishscore=0 adultscore=0 malwarescore=0 bulkscore=0 spamscore=0
 suspectscore=0 classifier=typeunknown authscore=0 authtc= authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.22.0-2606150000
 definitions=main-2606300216
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260630_150959_619759_805D186C 
X-CRM114-Status: GOOD (  11.93  )
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
YW5uIDxhcm5kQGFybmRiLmRlPgo+IAo+IEFmdGVyIGFsbCBvdGhlciBkcml2ZXJzIGhhdmUgY29u
dmVydGVkIHRvIGxpbnV4L2dwaW8vY29uc3VtZXIuaAo+IG9yIGxpbnV4L2dwaW8vbGVnYWN5Lmgs
IHJlbW92ZSB0aGUgZmluYWwgbGVmdG92ZXIgYml0cyBoZXJlLgo+IAo+IFNpZ25lZC1vZmYtYnk6
IEFybmQgQmVyZ21hbm4gPGFybmRAYXJuZGIuZGU+Cj4gLS0tCj4gICBNQUlOVEFJTkVSUyAgICAg
ICAgICAgICAgICAgICB8ICAxIC0KPiAgIGRyaXZlcnMvZ3Bpby9UT0RPICAgICAgICAgICAgIHwg
IDQgKy0tLQo+ICAgZHJpdmVycy9ncGlvL2dwaW9saWItY2Rldi5jICAgfCAgMiArLQo+ICAgZHJp
dmVycy9ncGlvL2dwaW9saWItbGVnYWN5LmMgfCAgMyArLS0KPiAgIGRyaXZlcnMvZ3Bpby9ncGlv
bGliLmMgICAgICAgIHwgIDIgKy0KPiAgIGluY2x1ZGUvbGludXgvZ3Bpby5oICAgICAgICAgIHwg
MjIgLS0tLS0tLS0tLS0tLS0tLS0tLS0tLQo+ICAgNiBmaWxlcyBjaGFuZ2VkLCA0IGluc2VydGlv
bnMoKyksIDMwIGRlbGV0aW9ucygtKQo+ICAgZGVsZXRlIG1vZGUgMTAwNjQ0IGluY2x1ZGUvbGlu
dXgvZ3Bpby5oCgpSZXZpZXdlZC1ieTogUGhpbGlwcGUgTWF0aGlldS1EYXVkw6kgPHBoaWxtZEBv
c3MucXVhbGNvbW0uY29tPgoKLS0gCmxpbnV4LXBoeSBtYWlsaW5nIGxpc3QKbGludXgtcGh5QGxp
c3RzLmluZnJhZGVhZC5vcmcKaHR0cHM6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlz
dGluZm8vbGludXgtcGh5Cg==
