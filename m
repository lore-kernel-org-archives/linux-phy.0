Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 8D91CC43458
	for <linux-phy@archiver.kernel.org>; Mon, 29 Jun 2026 12:14:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=mWuocraWFYJ6dgf51vGTUW6rGhHNcGvXfExwZ3krho0=; b=nWYAYoKrnL2UJN
	WqTtCtRqwkPJk7BKW94uUvrBNExBW4wxD8cgl8LJgrbfoXrYCfXK3GC53/Tn2h+IMn481YKG0ooXs
	2OMExo2UjRnRgABEqknxSi3OPlffJseJOp7iLbJfm83bg7A2AaRxteiR+PYGgjIi4m3XoLRhvWOS7
	S/5HDCAW3PHr+G7FjEYFbdWFR1hth2zP+s7AvqTDb7r89n13JMgFS6Kni0pSc0ZiuUr55E+bCm/Ii
	HUKyk0ZOxLR7Zf1Uke0aVP8uJgNyQcv8fIwViHIdPQEIIsDDTicCZwto+zUkD2QCt2RyfgImKzJja
	V55OPNJ/EO2PA+1AO7HA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1weAsv-0000000EWqk-1PqV;
	Mon, 29 Jun 2026 12:14:45 +0000
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1weAst-0000000EWqF-28q1
	for linux-phy@lists.infradead.org;
	Mon, 29 Jun 2026 12:14:44 +0000
Received: from pps.filterd (m0279873.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 65TAT7912618934
	for <linux-phy@lists.infradead.org>; Mon, 29 Jun 2026 12:14:42 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	X9w1/QIKFq54QUd/LJpbv83to7SgFgUUozDIlNCAR9E=; b=KRZBID8q9ZxDLmoa
	VLqGHGfrwgE/9skHdghCXGW6YlWe8moc76aXfJZU0ufYxKV28YkAYRw0vf96/6sF
	3v3sz8+ZvmuMATO3wms+fdoY/Cz3jeMd5cTCU1dbkaeSw5T0SscTYoiCKjP2A5A3
	nMvgd6if+9Cw4NzJCq3ZkoqAkTHfeI/eQb8lQY6YVUbJAZWdI2sIMq45t1E8NlIa
	fNq0ruN10geppLNE2mVS8dMB9E2CI9i9YONbLYA+omH424P4fqDaHi0Odw47cm1h
	INaS1aURXvHufEmnnjLOzlF+YqOgUFz7gepysGqo3B1Km8dpAbT2nKRGhn8yg1Qi
	Fsi+iA==
Received: from mail-dl1-f71.google.com (mail-dl1-f71.google.com [74.125.82.71])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4f3pdkrgfr-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Mon, 29 Jun 2026 12:14:42 +0000 (GMT)
Received: by mail-dl1-f71.google.com with SMTP id a92af1059eb24-1383723dfddso5209272c88.0
        for <linux-phy@lists.infradead.org>; Mon, 29 Jun 2026 05:14:42 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1782735281; x=1783340081; darn=lists.infradead.org;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:from:to
         :cc:subject:date:message-id:reply-to;
        bh=X9w1/QIKFq54QUd/LJpbv83to7SgFgUUozDIlNCAR9E=;
        b=Jw+LYqbnwbqACsbmz40EpQoV7EzE4DsOPkcZVUKF7Ig1NZ9DLntYQXV71Lqyf8L7tc
         pT00bwSm0nDvMSRmOAObqrSLVnkuBgxlZZfp9VT2F/kn/UZuX0OPImzcn8Okxgsgbn7T
         uTZh2/VvqdyxfkOza1fHT60WqsYOhhvJRfYAYSD30yZ9ipQG+xRDr2C8ebD8cbSXAma3
         2spiVx+/pYx4lMLTPqJO3X/2R7ctGe4nOGs1JspZj7A5HqO5SN/QXl0zPAv5/KxRsl/1
         IyRGcXzSzzx6Qgu1uY0G6vPjXIn6caVID5dLiDjhRPzPwLIXyhKSXDPtyy0hm04ots+b
         c33w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1782735281; x=1783340081;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=X9w1/QIKFq54QUd/LJpbv83to7SgFgUUozDIlNCAR9E=;
        b=rXha4qkzr80M7e44XcbqVEwOrpz33IjgGXQTHFPy8blJQrQeLNKnAIG0zPyQo8ICnW
         UPvyt33JuJw2UHSsWyaUYR1KOFlgnFlYiDkD9ePn7F3vP9re4t7PEXUqgqq2tErlSR8B
         4R7DJN94kYYPjLDTk8oUmz41DaXQYApQ6+GnyRvWYe5YEiSe/IileCiNUysG6i/VA+R8
         n7Wek3AYqMfuY7A7YxIlHAF36Wh99uAULCHEnOqbLS1RH5OAhUTW+aOigQ/99s5OeLV8
         ef+H+pKHxb1u/yYzG1oPWepZqkdfF5rTugKe2dG1C2lVr4y/jf9Kl3g+oCfBExSbHKj+
         t6VA==
X-Forwarded-Encrypted: i=1; AFNElJ9MqcdADsLwutazF7O0n52zjmnBpjSL0+NgsmBs+SIw2MKuptRfHeVjPkJQiAbtNP/RzABtouNAsyo=@lists.infradead.org
X-Gm-Message-State: AOJu0YxUI2iwWHU8qQ5cWM+H4x4Ehh6h6AT7yXft6w0dy049SE+FCW9q
	hI1n2r/33odpP0ZdNjQlL5YdzkL00kY3qEerzXVUWPS9WjpP0ZzAstcUkig5l7wmfkJ2V9o6e7Z
	Gu6J3476/Spxr+FHZfMGCgZX8Y6DeE37ipxvIF5iR0loANYjfkjgX8cqTa7EG9W5Vv4IPPomV+F
	mE
X-Gm-Gg: AfdE7cm3/RTvUAKAoYLCuLKztsrEKlw6DKyhkz0A1Czgqo00n9w0420bWfmT2A7zu5Y
	chSQSge/Z+yxXRW8Eg1KezuysRnlIAHBul5LVeF5+3ILJyMTCJ8PhttOmyNnPvLOfhSi1ZT7dGc
	iPOrdQe9NE7dfKwOuBg4fdAB4cP9xkm5D38h6IStJfWwzFY0ZSbM8SVnO5MJ1+x5iTvZtJcO6Y0
	8IvD7e02mH7v8D/aOlW2oc7jnCkDyJQSNPQgceeCxWFcFbRdvEMYRlaMVp69QE151Tq/9I5Kyiq
	fE2VPTDJL//vJicSyCIV3e9QTR3iTE4pYZCLEEiUkvJ6dk2zAKZy3ZcnVXehoHk7cdFrNAc31vH
	HPt/TuIJsnA+elrm04JsRggE9k+iEtUlU7RCb58BFLnWJjh3GzoHHJ3prLw==
X-Received: by 2002:a05:7022:ef08:b0:139:ed59:4b8e with SMTP id a92af1059eb24-139ed594d8emr6303127c88.50.1782735281458;
        Mon, 29 Jun 2026 05:14:41 -0700 (PDT)
X-Received: by 2002:a05:7022:ef08:b0:139:ed59:4b8e with SMTP id a92af1059eb24-139ed594d8emr6303104c88.50.1782735280907;
        Mon, 29 Jun 2026 05:14:40 -0700 (PDT)
Received: from hu-qianyu-lv.qualcomm.com (Global_NAT1.qualcomm.com. [129.46.96.20])
        by smtp.gmail.com with ESMTPSA id a92af1059eb24-139d912197bsm77382329c88.15.2026.06.29.05.14.39
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 29 Jun 2026 05:14:40 -0700 (PDT)
Date: Mon, 29 Jun 2026 05:14:38 -0700
From: Qiang Yu <qiang.yu@oss.qualcomm.com>
To: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
Cc: Vinod Koul <vkoul@kernel.org>, Neil Armstrong <neil.armstrong@linaro.org>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, linux-arm-msm@vger.kernel.org,
        linux-phy@lists.infradead.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
Subject: Re: [PATCH v2 0/3] phy: qcom: qmp-pcie: Add vdda-refgen supply
 support for Glymur
Message-ID: <akJhrpyMuLnoXzJM@hu-qianyu-lv.qualcomm.com>
References: <20260623-phy_refgen-v2-0-4d15983bf91d@oss.qualcomm.com>
 <8811c181-9caf-4797-8e17-52311702e292@oss.qualcomm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <8811c181-9caf-4797-8e17-52311702e292@oss.qualcomm.com>
X-Authority-Analysis: v=2.4 cv=R8Uz39RX c=1 sm=1 tr=0 ts=6a4261b2 cx=c_pps
 a=JYo30EpNSr/tUYqK9jHPoA==:117 a=ouPCqIW2jiPt+lZRy3xVPw==:17
 a=IkcTkHD0fZMA:10 a=FelO9ux0wxsA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=rJkE3RaqiGZ5pbrm-msn:22
 a=VwQbUJbxAAAA:8 a=EUspDBNiAAAA:8 a=HbeE6YyLVr5UAZUz1j0A:9 a=3ZKOabzyN94A:10
 a=QEXdDO2ut3YA:10 a=Fk4IpSoW4aLDllm1B1p-:22
X-Proofpoint-GUID: YsmfEs9x14yiidZ61L9Onleb8Hgme-Sx
X-Proofpoint-ORIG-GUID: YsmfEs9x14yiidZ61L9Onleb8Hgme-Sx
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwNjI5MDEwMCBTYWx0ZWRfX40dWTk9LmwU3
 o3z6Hp6vlWcqbodlxPj0qbD4tRNe0mP1GR9cVty9epI6UYgBK9I1r1dZt9WIcw5nweq+Gf4WeIy
 ehGcF4TUJXIz9UcQr4TyHty5O86VoGvRZxG+hKySrqCB1jbpL2Rp9QSvBRsPG4i8fQXdsSpYrB7
 myrGSR5uXGAZHwV2DTLjWJDvYGcTmO0eygB+sUg7SwUb4YCYfRFZnTWOIZuR6chUOWg30WtlSE/
 P6+STy2t0PX+KojQPj67Nrvt7MCtEOXb7GArKRERb8zTAsoNxoAI3MmtpE1VcZehTDlznjFz1mj
 PfmSJK+/qTixiEn6zG8wOoWuSS3L+ZzKniVIoezm9zfHZm15DtYZksbbc0+elA+IRwg4o2XqwQu
 NGNF7jxtc6qM6f+mq/TyS1aO+LPhzp6EW27XC3kjpY1ulwRnp1R+As1qpbVssb5IITSft4gk1L1
 AlCsnCdRhmDraSFRhqw==
X-Proofpoint-Spam-Info: AW1haW4tMjYwNjI5MDEwMCBTYWx0ZWRfX2XA8KaJbkWAg
 vswyI5jgqMd0dmEbcd+qmk/ic6Al2Y93qGe5Ghz+uNMMKZgROPYwSBFcL4ATpeXUeFrqsuDc2HQ
 e7XmJehC8NedfFsjSUtLkakKH4YYalY=
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.125,FMLib:17.12.100.49
 definitions=2026-06-29_03,2026-06-26_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 bulkscore=0 phishscore=0 clxscore=1015 lowpriorityscore=0 adultscore=0
 priorityscore=1501 impostorscore=0 suspectscore=0 malwarescore=0 spamscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2606150000 definitions=main-2606290100
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260629_051443_661987_D7DEB99A 
X-CRM114-Status: GOOD (  24.51  )
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
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-phy" <linux-phy-bounces@lists.infradead.org>
Errors-To: linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org

T24gTW9uLCBKdW4gMjksIDIwMjYgYXQgMTI6NTE6NTVQTSArMDIwMCwgS29ucmFkIER5YmNpbyB3
cm90ZToKPiBPbiA2LzIzLzI2IDM6MDUgUE0sIFFpYW5nIFl1IHdyb3RlOgo+ID4gVGhlIFBDSWUg
UU1QIFBIWXMgb24gR2x5bXVyIHJlcXVpcmUgYm90aCByZWZnZW4gZm9yIHN0YWJsZSByZWZlcmVu
Y2UKPiA+IHZvbHRhZ2UgYW5kIHFyZWYgZm9yIHN0YWJsZSByZWZlcmVuY2UgY2xvY2suIFRoZSBy
ZWZnZW4gcmVxdWlyZXMgdHdvIHBvd2VyCj4gPiBzdXBwbGllczogdmRkYS1yZWZnZW4wcDkgYW5k
IHZkZGEtcmVmZ2VuMXAyLgo+ID4gCj4gPiBjYW4gYmUgZXh0ZW5kZWQgaW4gdGhlIGZ1dHVyZS4K
PiA+IAo+ID4gVGhpcyBzZXJpZXMgY3JlYXRlcyBhIEdseW11ci1zcGVjaWZpYyBzdXBwbHkgbGlz
dCBpbmNsdWRpbmcgdGhlIHJlZmdlbgo+ID4gc3VwcGxpZXMgYW5kIHVwZGF0ZXMgYm90aCBHZW41
eDQgYW5kIEdlbjR4MiBjb25maWd1cmF0aW9ucyB0byB1c2UgaXQuCj4gPiAKPiA+IFNpZ25lZC1v
ZmYtYnk6IFFpYW5nIFl1IDxxaWFuZy55dUBvc3MucXVhbGNvbW0uY29tPgo+ID4gCj4gPiBDaGFu
Z2VzIGluIHYyOgo+ID4gLSBBZGQgZHRzIHBhdGNoIGluIHRoaXMgc2VyaWVzLgo+ID4gLSBSZXdv
cmQgY29tbWl0IG1zZyBvZiBkdGJpbmRpbmcgcGF0Y2guCj4gPiAtIExpbmsgdG8gdjE6IGh0dHBz
Oi8vbG9yZS5rZXJuZWwub3JnL2FsbC8yMDI2MDIwOC1yZWZnZW4tdjEtMC04N2NhODRmZDc4YjNA
b3NzLnF1YWxjb21tLmNvbS8gCj4gPiAKPiA+IC0tLQo+IAo+IElzIHRoaXMgbmVjZXNzYXJ5IChm
b3IgR2x5bXVyKSBub3cgdGhhdCB3ZSBjb3JyZWxhdGVkIHNvbWUgb2YgdGhlCj4gVENTUiBjbG9j
a3Mgd2l0aCB0aGUgcmlnaHQgbm9kZXM/CgpUaGlzIHBhdGNoIGlzIG5lY2Vzc2FyeSBmb3IgZ2x5
bXVyIGFuZCBtYWh1YSBhbmQgb3RoZXIgUXVhbGNvbW0gdGFyZ2V0cywKd2hpY2ggY2FuIGJlIHZl
cmlmaWVkIGZyb20gdGhlIFJFRkdFTiBwYWdlIGFuZCBwb3dlciBncmlkIHBhZ2Ugb24gaXBjYXQu
CgpUYWtlIEdseW11ciBQQ0llMyBQSFkgYXMgYW4gZXhhbXBsZTogaXQgcmVxdWlyZXMgdHdvIFJF
RkdFTnMg4oCUIFJFRkdFTjAgZm9yCnRoZSBQSFkgaXRzZWxmIGFuZCBSRUZHRU40IGZvciBRUkVG
LiBJbiB0aGUgVENTUiBkcml2ZXIsIG9ubHkgdGhlIExET3MgZm9yClJFRkdFTjQgYXJlIHZvdGVk
LCBub3QgUkVGR0VOMC4gVGhpcyBpcyBpbnRlbnRpb25hbDogZWFjaCBjb25zdW1lciBpcwpyZXNw
b25zaWJsZSBmb3Igdm90aW5nIHRoZSBMRE9zIG9mIHRoZSBSRUZHRU4gaXQgdXNlcy4gU2luY2Ug
UVJFRiB1c2VzClJFRkdFTjQsIHRoZSBUQ1NSIGRyaXZlciB2b3RlcyB0aGUgUkVGR0VONCBMRE9z
OyBzaW5jZSB0aGUgUEhZIHVzZXMKUkVGR0VOMCwgdGhlIFBIWSBkcml2ZXIgdm90ZXMgdGhlIFJF
RkdFTjAgTERPcy4KCkZvciBzb21lIFBIWSBpbnN0YW5jZXMgaW4gcG93ZXIgZ3JpZCwgeW91IGNh
biBvbmx5IHNlZSBvbmUgUkVGR0VOLCB0aGF0CmluZGljYXRlcyB0aGUgcGh5IGRvZXNuJ3QgcmVx
dWlyZSBRUkVGIG9yIHRoZSBwaHkgYW5kIHRoZSBRUkVGIGl0IHJlcXVpcmVzCnNoYXJlIHNhbWUg
UkVGR0VOLgo+IAo+IFBlcmhhcHMgdGhpcyB3b3VsZCBiZSBuZWNlc3NhcnkgZm9yIE1haHVhIHNp
bmNlIGl0cyBjbG9ja3MgZG9uJ3QKPiByZXF1aXJlIFFSRUYgKG9yIHdlIGNhbiBsaWUgYWJvdXQg
aXQgYW5kIGhhbmRsZSB0aGVtIHRoZXJlKT8KCkZvciBNYWh1YSBQQ0llNSBQSFksIGl0IGRvZXNu
J3QgcmVxdWlyZSBRUkVGLiBTbyB3ZSBkb24ndCBuZWVkIHRvIHZvdGUKUkVGR0VOIExET3MgZm9y
IFFSRUYgaW4gdGNzciBkcml2ZXIuIEJ1dCB0aGUgUEhZIHJlcXVpcmVzIFJFRkdFTi4gU28gd2UK
c3RpbGwgbmVlZCB0byB2b3RlIGluIFBIWSBkcml2ZXIuCgotIFFpYW5nIFl1CgotLSAKbGludXgt
cGh5IG1haWxpbmcgbGlzdApsaW51eC1waHlAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwczovL2xp
c3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1waHkK
