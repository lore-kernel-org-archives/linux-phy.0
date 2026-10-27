Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5C186606A31B
	for <linux-phy@archiver.kernel.org>; Tue, 27 Oct 2026 08:07:39 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key, unprotected) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=D1dpZy9m;
	dkim=fail reason="signature verification failed" (2048-bit key, unprotected) header.d=qualcomm.com header.i=@qualcomm.com header.a=rsa-sha256 header.s=qcppdkim1 header.b=ATRvnsLV;
	dkim=fail reason="signature verification failed" (2048-bit key, unprotected) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.a=rsa-sha256 header.s=google header.b=j+Q6kyS5
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:References:Cc:To:From:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Unsubscribe-Post:List-Owner;
	bh=nVmNFHawH4aXmbPsVKooFrRuhzC7RkvGPecEPQQUi8Q=; b=D1dpZy9mgUiG45oC+H3LaITJZV
	VVdjeCNgtT+/cBTXnOuMZf926MOJFvq83U2MVYbUNxJr9P2f1ugtINGRUO3SevwfcQQ67Z0IOXnn8
	2OMpYsZoNvVj/74kPxsEHmWCsGUNWToVufLadkkNTIQtSP+7UC7heC4YE4aVGBa7xtJgcqHJvL6bB
	yewvM8vuvq8D2AqMn+J3aswizqnEDJMvPiR2qR5lJGjC4feVT7DXfBH0bCl7H1rpVghrdegHpM8te
	MbIfVAqWyU72+ie+h9t8xeSrt3WWB3kYjPO4RiPDDcpKiwYlJ4TF2X+Y7pQMucsGh/Ta/ouIE8gcN
	UMdhYAzg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xLcDa-00000003zmA-3xcA;
	Tue, 27 Oct 2026 08:07:38 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xLcDY-00000003zlh-1JbH
	for linux-phy@lists.infradead.org;
	Tue, 27 Oct 2026 08:07:37 +0000
Received: from pps.filterd (m0279864.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 69R5ZJtw3950119
	for <linux-phy@lists.infradead.org>; Tue, 27 Oct 2026 08:07:35 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	SV5EvR4Qw3kXSOIY+z0ynS9HZeULhn5oEkX4RVcLmU0=; b=ATRvnsLVchYGE7qC
	kfzXVwjviKIQ0jax2poUAzUkZ0gFeo9Fe5mhF5XK8XUiHHsVF6Z+GGCea/InPQug
	Ntjma7L5TiRAB7MUCv4sKj+OjozXezIrBg39pAEAVBU47prrU95I1fjdcNe+WG9o
	hRuIhXKWl1gRxv22aQQWFX1BC2Aon9kl8Niyvb593AjssTTGIMYucagE7oF9U/JM
	pOOBCOJIDB32jAh0y7V2nENc/96IiQy1xAgHd0oSYwh+fQNoxUD/3RZheyLUUU84
	y727x0kJTeu5gnyVC7ZfMp8SkzmMTtexrMgs0RE4HdWF8OFWNEFKXh8Y6yRiO/E2
	ct1hJA==
Received: from mail-pj1-f71.google.com (mail-pj1-f71.google.com [209.85.216.71])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4hjb54js22-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Tue, 27 Oct 2026 08:07:34 +0000 (GMT)
Received: by mail-pj1-f71.google.com with SMTP id 98e67ed59e1d1-3ad436a9d00so3624831a91.0
        for <linux-phy@lists.infradead.org>; Tue, 27 Oct 2026 01:07:34 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1793088454; x=1793693254; darn=lists.infradead.org;
        h=content-transfer-encoding:content-type:in-reply-to:content-language
         :references:cc:to:from:subject:user-agent:mime-version:date
         :message-id:from:to:cc:subject:date:message-id:reply-to:content-type;
        bh=SV5EvR4Qw3kXSOIY+z0ynS9HZeULhn5oEkX4RVcLmU0=;
        b=j+Q6kyS5D31lktrSGlaIVeS8VhbzUVAyPKSh0XoV/j8u5LXTh7468mKG8mLxYyC4yf
         k5zeQ1/2p5ka2WWAZY5oaeBCsjcQMpS1/v33QGF4LzicYZVR7kCJ7O5M94EoQ894NHK/
         V9AZQELHfXlgUwqOicfTXLC9uyTg/LcWAnyG8Qe81M6Dj8abD9j32eytzdJKIDYLNVYd
         RGoHd62FW2b9LEpfslQT6zMAOZ3tpgBMVjHhK9a+LLu/TwnYW2K465zKLvUWsfqzef2Q
         Q3hC6jtYWoDiiycdYLOjU0nsm1x9bq16M5hQoczs1kwLg92swg1L1YwcJL4/mbo1TXHx
         j/qw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1793088454; x=1793693254;
        h=content-transfer-encoding:content-type:in-reply-to:content-language
         :references:cc:to:from:subject:user-agent:mime-version:date
         :message-id:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=SV5EvR4Qw3kXSOIY+z0ynS9HZeULhn5oEkX4RVcLmU0=;
        b=DYjJDO+Cr4X8wxrBVSOmXgjkCjwnNJ4iv1eE5yQjSeuBNhsQs/H/wup92Y2sRr1g/N
         PDSWWJS2aua5ck3hDuGvgQc1XFrl0KjWo1I3/GHajiF3OLJQM40s/3HZWP2OXy0F85dg
         G+lSzeRkROFWVORZafL2dK28eJD+qhvMa+QZTByhATs14VsN27K1W4myQ30++CXfaTOm
         hkzqlzh0yWCTA2j3S+EmOWB8dYDiKWrPWTxfLEnEm1X+9wcWDH2FTDyQY2XrWwKcsO4p
         sdWqlKUEqMKlQJLcnVpRxDkjOYPZX5rlxdFR7J7k6Xv97dL/IpiNjlWZ2y9PyuVYk4op
         fmYw==
X-Forwarded-Encrypted: i=1; AKwUvBwwx3gYA1R1bNPzGWBHx0Nz/3azaWKJ+Bqm2D5XlbxjVi/nLuiqLQ1y+ig/mKXRPVCg+atwgS+zyqQ=@lists.infradead.org
X-Gm-Message-State: AFq9FYLkmffLTJvlU2xZERPDVX4QzYob3ApUwMHM9CI1rN63fKe5hIA1
	YmlmIqPd8xMV1bZn1JMAm+CKJPS/ISAA2Y8jMSGDtq5qgFSywwg4aIUGeV889IhDQ9E10IIlWe7
	vPogfJcFexz70wK28NUxDKiYP7kyjNeBYG6GJUyj+EXs8ZSB+qQnyHmcedE3aY2GIjoJKoeRxFc
	lx
X-Gm-Gg: AYBFou1KfPAAllzSeT1Uf2anfRZGNK3twMIPBtu9kOGWuFS2q8geRQCHqlCcaeCbl4o
	OD87K+yL/IDS3v3bm809fa1B8ivfXFeujwk2ocq29DnIphJvmyuQfB7D+dA736mmqe8/OHRdYg5
	uLeuknFHQQSV+Y0d507FNAK8O6jGny8nodF7FGdOYstyRptxXUgHAwbHUDgzIDJodpd8reGIfGQ
	dnona+QqhPyDxej9IbL55kLKa4FTpjZurJreUzHH3zhjsYpWm665COQDSZkrnMsulT0Bn7SL/qC
	0+Ct01BXt7fF4pF5iXlW69Dcp2DE1AeoR25gNNd9iMCGicU8xepSz4dDZ1nVHSI5F7lRgxJGw5G
	nBXCYOKkM7bql4E6L0j36wfG+0j15bYcu5u6TBsQqsW2bRuQO2uRiMEYkUvIBoGK7DQU=
X-Received: by 2002:a17:90b:3d8e:b0:3ac:80dc:f40c with SMTP id 98e67ed59e1d1-3adea8985fdmr7019854a91.14.1793088454077;
        Tue, 27 Oct 2026 01:07:34 -0700 (PDT)
X-Received: by 2002:a17:90b:3d8e:b0:3ac:80dc:f40c with SMTP id 98e67ed59e1d1-3adea8985fdmr7019832a91.14.1793088453468;
        Tue, 27 Oct 2026 01:07:33 -0700 (PDT)
Received: from [10.217.219.121] ([202.46.22.19])
        by smtp.gmail.com with ESMTPSA id 98e67ed59e1d1-3ae4066aec8sm2585161a91.15.2026.10.27.01.07.29
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 27 Oct 2026 01:07:33 -0700 (PDT)
Message-ID: <033c8432-4a03-4f38-b0a3-28f5d551b0ef@oss.qualcomm.com>
Date: Tue, 27 Oct 2026 13:37:27 +0530
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v8 2/5] include: linux: phy: Add phy attribute "type" and
 associated helpers
From: Krishna Kurapati <krishna.kurapati@oss.qualcomm.com>
To: Vinod Koul <vkoul@kernel.org>
Cc: Neil Armstrong <neil.armstrong@linaro.org>,
        Manivannan Sadhasivam <mani@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley
 <conor+dt@kernel.org>,
        Thinh Nguyen <Thinh.Nguyen@synopsys.com>,
        Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
        linux-phy@lists.infradead.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, linux-arm-msm@vger.kernel.org,
        linux-usb@vger.kernel.org,
        Manivannan Sadhasivam <manivannan.sadhasivam@oss.qualcomm.com>
References: <20260913-eusb2-interrupt-v8-v8-0-0f505b9c394b@oss.qualcomm.com>
 <20260913-eusb2-interrupt-v8-v8-2-0f505b9c394b@oss.qualcomm.com>
 <asNji2_GUda8x245@parshuram>
 <3a3cf540-816f-41a3-b31d-2902e7f4cf01@oss.qualcomm.com>
Content-Language: en-US
In-Reply-To: <3a3cf540-816f-41a3-b31d-2902e7f4cf01@oss.qualcomm.com>
X-Proofpoint-Spam-Info: AW1haW4tMjYxMDI3MDAzMiBTYWx0ZWRfXzbaPeTy3H2eH
 +y+giTVRMIZtYadGP696b3i428uwSynXYKFer9wtkLyvsJzcXZVGVy3CqYYx/0q2xjZKfwFqw3V
 Lg41/8IDJf1R7rvBpHBkdytQabh3kfo=
X-Authority-Analysis: v=2.4 cv=bsnZl0ai c=1 sm=1 tr=0 ts=6ae05bc6 cx=c_pps
 a=UNFcQwm+pnOIJct1K4W+Mw==:117 a=fChuTYTh2wq5r3m49p7fHw==:17
 a=IkcTkHD0fZMA:10 a=660iZSQnnn4A:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=DJpcGTmdVt4CTyJn9g5Z:22
 a=jIQo8A4GAAAA:8 a=EUspDBNiAAAA:8 a=SNSdMoAXaN54LQpy3WIA:9 a=3ZKOabzyN94A:10
 a=QEXdDO2ut3YA:10 a=uKXjsCUrEbL0IQVhDsJ9:22
X-Proofpoint-ORIG-GUID: t3lTo0vzyYj7UYdkjx5ocbwOE3yxBzLv
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYxMDI3MDAzMiBTYWx0ZWRfX3QpFSe0JYnGq
 03ClglhlMWXlM73ph5JJVQk41ywC2QhR8XJDt7zpGMI4z3EqYseodfy8TLHEouP2rTzjoF4+os3
 /ReRsnkGHjDsXSTWuyCQVdnthn92uGhptUu2FR8WnTc3FvLOA7l7NiDz9NLv6YYi58aDK7TcYN7
 hakihat/M7Z21O1KDi5xoAj0NCb+GvSRF+mTcD3Pi5AV9NyDNjnMzIFdIVfiyOVXX2GCLoE/g1g
 pvc8Yc+C7G+33liedpmAESuMCebDwLLgwdn+I86b1cKdulFFZiidJ1PdLIlHcaBFc39ySi0JnEk
 S+U3wIf6P2U89pQCTxaUoYn/W3Ojwd97TNWP/qycBb0XwrQa98+Nr/YpapHf+UKPF99AIACFgPw
 Prx4bsphl0ArZhGjjB79/whJ/iqkK5iVKso9IMC59cEjts5CfhVU4eR9h6CkawJmmksE7rhpf9x
 uPZE2mlVzGi3Z4KE2lw==
X-Proofpoint-GUID: t3lTo0vzyYj7UYdkjx5ocbwOE3yxBzLv
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1176,Hydra:6.1.138,FMLib:17.12.100.49
 definitions=2026-10-27_02,2026-10-21_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 impostorscore=0 priorityscore=1501 spamscore=0 malwarescore=0
 lowpriorityscore=0 clxscore=1015 phishscore=0 suspectscore=0 adultscore=0
 bulkscore=0 classifier=typeunknown authscore=0 authtc= authcc= route=outbound
 adjust=0 reason=mlx scancount=1 engine=8.22.0-2610190000
 definitions=main-2610270032
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261027_010736_358087_AA73ED98 
X-CRM114-Status: GOOD (  21.87  )
X-Spam-Score: -2.8 (--)
X-BeenThere: linux-phy@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: Linux Phy Mailing list <linux-phy.lists.infradead.org>
List-Archive: <http://lists.infradead.org/pipermail/linux-phy/>
List-Post: <mailto:linux-phy@lists.infradead.org>
List-Help: <mailto:linux-phy-request@lists.infradead.org?subject=help>
List-Subscribe: <https://lists.infradead.org/mailman/listinfo/linux-phy>,
 <mailto:linux-phy-request@lists.infradead.org?subject=subscribe>
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Sender: "linux-phy" <linux-phy-bounces@lists.infradead.org>
X-Spam-Status: No, score=-15.7 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_EF,HEADER_FROM_DIFFERENT_DOMAINS,
	INCLUDES_CR_TRAILER,INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,
	SPF_PASS,USER_AGENT_SANE_1 autolearn=ham autolearn_force=no
	version=4.0.1
X-Spam-Checker-Version: SpamAssassin 4.0.1 (2024-03-26) on
	aws-us-west-2-korg-listserv-alma10-1

CgpPbiAxMC85LzIwMjYgMTA6MjkgUE0sIEtyaXNobmEgS3VyYXBhdGkgd3JvdGU6Cj4gCj4gCj4g
T24gMTAvNS8yMDI2IDI6MTQgUE0sIFZpbm9kIEtvdWwgd3JvdGU6Cj4+IE9uIDEzLTA5LTI2LCAy
MDoxMCwgS3Jpc2huYSBLdXJhcGF0aSB3cm90ZToKPj4+IEluIGNhc2VzIGxpa2UgVVNCIEhpZ2gt
c3BlZWQgcGh5cyB3aGljaCBjYW4gYmUgZWl0aGVyIFVTQjIgb3IgRVVTQjIsIAo+Pj4gaXQgaXMK
Pj4+IHJlcXVpcmVkIHRvIGtub3cgdGhlIHR5cGUgb2YgcGh5IChyYXRoZXIgdGhhbiB0aGUgb3Bl
cmF0aW5nIG1vZGUpIAo+Pj4gYmVjYXVzZQo+Pj4gRFAgYW5kIERNIGludGVycnVwdCBsaW5lcyBu
ZWVkIHRvIGJlIGNvbmZpZ3VyZWQgZGlmZmVyZW50bHkgZm9yIGVhY2ggb2YKPj4+IHRoZW0uCj4+
Cj4+IERvZXMgdGhlIGNvbnRyb2xsZXIgY2FyZT8gSW4gcHJlY2VkaW5nIHBhdGNoIHlvdSBkZWZp
bmVkIHRoZSBFVVNCMiBpbiBkdAo+PiB0eXBlLCBzbyB0aGlzIGRlc2NyaWJlcyB0aGUgaGFyZHdh
cmUuIFNvIHBoeSBrbm93cyBpdCBpcyB1c2Igb3IgZXVzYi4uLgo+Pj4KPiAKPiBDb250cm9sbGVy
IGlzIGFnbm9zdGljIG9mIHdoZXRoZXIgdGhlIHBoeSBpcyB1c2IyIG9yIGV1c2IyLiBQaHkgZG9l
cyBub3cgCj4gaXRzIHR5cGUsIGJ1dCBpdCBuZWVkcyB0byBjb21tdW5pY2F0ZSB0aGUgc2FtZSB0
byBjb250cm9sbGVyLgo+IAo+Pj4gQWRkIHN1cHBvcnQgdG8gY2FjaGUgdGhlIFBIWV9UWVBFIGFu
ZCBhZGQgdGhlIGZvbGxvd2luZyBoZWxwZXJzOgo+Pj4KPj4+IC0gcGh5X3NldF90eXBlKCkgZm9y
IHRoZSBwaHkgZHJpdmVycyAobGlrZSBtMzFfZXVzYjIgb3Igc25wcy1ldXNiMikgdG8KPj4+IGRl
Y2xhcmUgd2hhdCB0eXBlIG9mIFBIWSB0aGV5IGFyZSAoaW4gdGhpcyBjYXNlIFBIWV9UWVBFX0VV
U0IyKS4KPj4+Cj4+PiAtIHBoeV9nZXRfdHlwZSgpIGZvciB0aGUgY29uc3VtZXJzIChsaWtlIFVT
QiBjb250cm9sbGVycykgdG8gcXVlcnkgdGhlCj4+PiB0eXBlIG9mIHBoeSBjb25uZWN0ZWQgdG8g
dGhlbS4KPj4KPj4gSSBhbSBub3QgY29udmluY2VkIHRoYXQgdGhpcyBpcyB0aGUgd2F5IHRvIGdv
Li4uIERyaXZlciBhbHJlYWR5IGtub3dzCj4+IHRoZSB0eXBlIGFuZCBzaG91bGQgdXNlIGl0Li4u
Cj4+IHdlIGFscmVheWQgaGF2ZSBtb2RlLCBpIGFtIGluY2xpbmVkIHRvIG5vdCBzYXkgeWVzIHRv
IGFkZGluZyB0eXBlIGhlcmUKPj4KPiAKPiAiTW9kZSIgYXR0cmlidXRlIGRlc2NyaWJlcyB0aGUg
Y3VycmVudCBvcGVyYXRpbmcgc2NlbmFyaW8gb2YgdGhlIHBoeSAKPiAoZGV2aWNlIG1vZGUsIGhv
c3QgbW9kZSwgaGlnaCBzcGVlZCwgc3VwZXIgc3BlZWQgZXRjLiwpLiBCdXQgaXQgZG9lc24ndCAK
PiBkZXNjcmliZSB0aGUgdHlwZSBvZiBoYXJkd2FyZSBhbmQgaGVuY2UgYSBuZXcgYXR0cmlidXRl
Lgo+IAoKVmlub2QsIGNhbiB5b3UgcGxlYXNlIGxldCBrbm93IGlmIHlvdSBhcmUgZmluZSB3aXRo
IHRoaXMgYXBwcm9hY2guIElmIAp5ZXMsIEkgd2lsbCBzZW5kIHY5IHJlYmFzZWQgb24gdG9wIG9m
IHBoeS1uZXh0LgoKUmVnYXJkcywKS3Jpc2huYSwKCgo+IFJlZ2FyZHMsCj4gS3Jpc2huYSwKPiAK
Pj4+Cj4+PiBSZXZpZXdlZC1ieTogVGhpbmggTmd1eWVuIDxUaGluaC5OZ3V5ZW5Ac3lub3BzeXMu
Y29tPgo+Pj4gUmV2aWV3ZWQtYnk6IE1hbml2YW5uYW4gU2FkaGFzaXZhbSAKPj4+IDxtYW5pdmFu
bmFuLnNhZGhhc2l2YW1Ab3NzLnF1YWxjb21tLmNvbT4KPj4+IFNpZ25lZC1vZmYtYnk6IEtyaXNo
bmEgS3VyYXBhdGkgPGtyaXNobmEua3VyYXBhdGlAb3NzLnF1YWxjb21tLmNvbT4KPj4+IC0tLQo+
Pj4gwqAgaW5jbHVkZS9saW51eC9waHkvcGh5LmggfCAyNyArKysrKysrKysrKysrKysrKysrKysr
KysrKysKPj4+IMKgIDEgZmlsZSBjaGFuZ2VkLCAyNyBpbnNlcnRpb25zKCspCj4+Pgo+Pj4gZGlm
ZiAtLWdpdCBhL2luY2x1ZGUvbGludXgvcGh5L3BoeS5oIGIvaW5jbHVkZS9saW51eC9waHkvcGh5
LmgKPj4+IGluZGV4IGVhNDc5NzVlMjg4YS4uMDM4YzJiNThiYmUxIDEwMDY0NAo+Pj4gLS0tIGEv
aW5jbHVkZS9saW51eC9waHkvcGh5LmgKPj4+ICsrKyBiL2luY2x1ZGUvbGludXgvcGh5L3BoeS5o
Cj4+PiBAQCAtMjEsNiArMjEsOCBAQAo+Pj4gwqAgI2luY2x1ZGUgPGxpbnV4L3BoeS9waHktbHZk
cy5oPgo+Pj4gwqAgI2luY2x1ZGUgPGxpbnV4L3BoeS9waHktbWlwaS1kcGh5Lmg+Cj4+PiArI2lu
Y2x1ZGUgPGR0LWJpbmRpbmdzL3BoeS9waHkuaD4KPj4+ICsKPj4+IMKgIHN0cnVjdCBwaHk7Cj4+
PiDCoCBlbnVtIHBoeV9tb2RlIHsKPj4+IEBAIC0xNTIsMTEgKzE1NCwxMyBAQCBzdHJ1Y3QgcGh5
X29wcyB7Cj4+PiDCoMKgICogQGJ1c193aWR0aDogRGF0YSBwYXRoIHdpZHRoIGltcGxlbWVudGVk
IGJ5IFBIWQo+Pj4gwqDCoCAqIEBtYXhfbGlua19yYXRlOiBNYXhpbXVtIGxpbmsgcmF0ZSBzdXBw
b3J0ZWQgYnkgUEhZICh1bml0cyB0byBiZSAKPj4+IGRlY2lkZWQgYnkgcHJvZHVjZXIgYW5kIGNv
bnN1bWVyKQo+Pj4gwqDCoCAqIEBtb2RlOiBQSFkgbW9kZQo+Pj4gKyAqIEB0eXBlOiBQSFkgdHlw
ZQo+Pj4gwqDCoCAqLwo+Pj4gwqAgc3RydWN0IHBoeV9hdHRycyB7Cj4+PiDCoMKgwqDCoMKgIHUz
MsKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgYnVzX3dpZHRoOwo+Pj4gwqDCoMKgwqDCoCB1MzLCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgIG1heF9saW5rX3JhdGU7Cj4+PiDCoMKgwqDCoMKgIGVudW0gcGh5
X21vZGXCoMKgwqDCoMKgwqDCoCBtb2RlOwo+Pj4gK8KgwqDCoCBpbnTCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgIHR5cGU7Cj4+PiDCoCB9Owo+Pj4gwqAgLyoqCj4+PiBAQCAtMjYyLDYgKzI2NiwyMCBA
QCBzdGF0aWMgaW5saW5lIGVudW0gcGh5X21vZGUgcGh5X2dldF9tb2RlKHN0cnVjdCAKPj4+IHBo
eSAqcGh5KQo+Pj4gwqAgewo+Pj4gwqDCoMKgwqDCoCByZXR1cm4gcGh5LT5hdHRycy5tb2RlOwo+
Pj4gwqAgfQo+Pj4gKwo+Pj4gK3N0YXRpYyBpbmxpbmUgaW50IHBoeV9nZXRfdHlwZShzdHJ1Y3Qg
cGh5ICpwaHkpCj4+PiArewo+Pj4gK8KgwqDCoCBpZiAocGh5KQo+Pj4gK8KgwqDCoMKgwqDCoMKg
IHJldHVybiBwaHktPmF0dHJzLnR5cGU7Cj4+PiArCj4+PiArwqDCoMKgIHJldHVybiBQSFlfTk9O
RTsKPj4+ICt9Cj4+PiArCj4+PiArc3RhdGljIGlubGluZSB2b2lkIHBoeV9zZXRfdHlwZShzdHJ1
Y3QgcGh5ICpwaHksIGludCB0eXBlKQo+Pj4gK3sKPj4+ICvCoMKgwqAgcGh5LT5hdHRycy50eXBl
ID0gdHlwZTsKPj4+ICt9Cj4+PiArCj4+PiDCoCBpbnQgcGh5X3Jlc2V0KHN0cnVjdCBwaHkgKnBo
eSk7Cj4+PiDCoCBpbnQgcGh5X2NhbGlicmF0ZShzdHJ1Y3QgcGh5ICpwaHkpOwo+Pj4gwqAgaW50
IHBoeV9ub3RpZnlfY29ubmVjdChzdHJ1Y3QgcGh5ICpwaHksIGludCBwb3J0KTsKPj4+IEBAIC0z
OTMsNiArNDExLDE1IEBAIHN0YXRpYyBpbmxpbmUgZW51bSBwaHlfbW9kZSBwaHlfZ2V0X21vZGUo
c3RydWN0IAo+Pj4gcGh5ICpwaHkpCj4+PiDCoMKgwqDCoMKgIHJldHVybiBQSFlfTU9ERV9JTlZB
TElEOwo+Pj4gwqAgfQo+Pj4gK3N0YXRpYyBpbmxpbmUgaW50IHBoeV9nZXRfdHlwZShzdHJ1Y3Qg
cGh5ICpwaHkpCj4+PiArewo+Pj4gK8KgwqDCoCByZXR1cm4gUEhZX05PTkU7Cj4+PiArfQo+Pj4g
Kwo+Pj4gK3N0YXRpYyBpbmxpbmUgdm9pZCBwaHlfc2V0X3R5cGUoc3RydWN0IHBoeSAqcGh5LCBp
bnQgdHlwZSkKPj4+ICt7Cj4+PiArfQo+Pj4gKwo+Pj4gwqAgc3RhdGljIGlubGluZSBpbnQgcGh5
X3Jlc2V0KHN0cnVjdCBwaHkgKnBoeSkKPj4+IMKgIHsKPj4+IMKgwqDCoMKgwqAgaWYgKCFwaHkp
Cj4+Pgo+Pj4gLS0gCj4+PiAyLjM0LjEKPj4KPiAKCgotLSAKbGludXgtcGh5IG1haWxpbmcgbGlz
dApsaW51eC1waHlAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwczovL2xpc3RzLmluZnJhZGVhZC5v
cmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1waHkK
