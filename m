Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id BDFE5CA0FEC
	for <linux-phy@archiver.kernel.org>; Fri, 22 Aug 2025 11:48:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=vNTMMdfNwFAppugMkXDAZkZ2wryXt66OR5yivdNv5us=; b=tChqg5rWPiGrsJ
	aqQQPOLScqeefalYYgaMfqUk9KRmMY/mX7n0ld2fQmqLmYU9KB116ioj/mqLN/MNVCTtmqbHmG9dR
	F5S7Fj2orsf1/Rd9zftIFLwlj8uXSnWLqY4gXy+3G6XqebR6wDafuUlqndR6qqIm8mVfr/bc5kuHE
	7ijZS+fUScOi19YLISmuyPJA1OXMUNmlregWhEG13yhATm/lJTXcNoj13zzOYZGSCZujrj9O+GyXl
	A6+UNbFdh0UtLAVV5lRyoFolkKLRkgeXh9kIClnTFZKRwYNNyb9DzBUkjOgl/G2JlS017aioif4e6
	QDkZdGqz+AhegjkX1CmA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1upQGJ-00000002NVt-27Bj;
	Fri, 22 Aug 2025 11:48:51 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1upLWK-00000001jJC-2LS5
	for linux-phy@lists.infradead.org;
	Fri, 22 Aug 2025 06:45:06 +0000
Received: from pps.filterd (m0279864.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 57M6HAa5005640
	for <linux-phy@lists.infradead.org>; Fri, 22 Aug 2025 06:45:03 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	68E7HoEEPsN8r52rSpn4sYFWr4Hp7mhQ0BdhcIro7eo=; b=FLdEcBZOQdk8yONE
	lhrfBjCtxDx+GW6C1tCTAQNW+Mp9WqpydK3NSxxGxPtB3rS2yXEYyxv2dLeTcB0u
	KLdiEe910hb5Eqziw0aF6najaBt3fImRYWTSF0dqFfUG1tvp+lJGt6GX/Zvo2HVH
	91SZNxDNhzQ4bAYOSChzW9kxsp4D+Ug3WNijrXx3bSVMcSR0ayy61suRYge34UB3
	5mXxqCPxC5ELOzIT7eDUjOxN2D/CWzyGKk1HW3WeHjQIlNLDmtXBOtD64lhy0YDW
	pQNvw8JFJ78mtGDmdA3EQRZjTIPkl1b9Tyc6VLCXjsNMrlnEsRCBrITGt12eJa+T
	wR9K0Q==
Received: from mail-pl1-f200.google.com (mail-pl1-f200.google.com [209.85.214.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 48n52cr3k0-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Fri, 22 Aug 2025 06:45:03 +0000 (GMT)
Received: by mail-pl1-f200.google.com with SMTP id d9443c01a7336-244581cbf91so3499495ad.2
        for <linux-phy@lists.infradead.org>; Thu, 21 Aug 2025 23:45:03 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1755845103; x=1756449903;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to:subject
         :user-agent:mime-version:date:message-id:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=68E7HoEEPsN8r52rSpn4sYFWr4Hp7mhQ0BdhcIro7eo=;
        b=hN1Jm3eTw1aM5kmorXivOY4QI1nF6xREhh1al3CUET7a/WIk7OqZGmDqe0cFtO5b1d
         cNutprUqnMGTaj4tc7QHdSmJNUlATSTA4B5lxuZZvww2MdtgP0Q2zYSUYbcoCY4vWHIn
         HNjMTItXP9XtuU8ZtXo5rKOEvVEFz38HvMjAQ/nDoZUFSUG3wV/aVQomezCHLwsMnm37
         F0TJ4f+nFaz11eBiakzse5zEy8wSnY5nvbs9r8B5KLLLlC06WXXMWakOgFStR6v+1Lmb
         uMkBOpmQ/hUpjmqPZO4nyBZA4zTAN5Uchr2r7nfyLKwvnU6HFaO/8IE14/0SN807ZRxK
         0evA==
X-Forwarded-Encrypted: i=1; AJvYcCUKO+VLUYPbsKxj6k0XDueKzLBrQ7q7R8yro/CUXfFkZ4l1FcijXXyy7PKlBlndiDCRthVxGDE7gqU=@lists.infradead.org
X-Gm-Message-State: AOJu0YzQrOuuCMlPpfBCtcLlZLYOQuqktvq7Q0E7O//eAFphYVceCd8m
	8qhBqYHyjEdqGuFTeWAgEEeeO5XOxyEAWmm99tyBvNEwMzC4xeJUWh7octyVuyZpnQfjprBrjEm
	UJHgKAmQhv9GhvIr8N+JAfKB4NST0fnKKRFDmrDbooUKIgOWOHqaWA10CuiEIFxhx4Hlh
X-Gm-Gg: ASbGncs6qt6ntNhkIDdWWwj3w3Qb2QAwx5x/f9e4O7x3tyNYVfER3HjgtSmZ/SorQ3O
	RoK500Db7lkR6IX/l8/yG2bLNcNGR9Nv66ufd+i5DdxLQVJPXS8TqbV9ynN1C4PDOVO4pwJdxJl
	Cr531rkdzwn6LWKunBqMZeIQkfZrHIBfZYh7TSd4NkAqrZcGROeNhHyr92dZkLLjx0OMQEvgBPi
	AR22c6iRT7yABDjYN9v5G6ii5G3btDZGGyyINfB7Kbd8oLG6/rUmX1R4bKkwGMitYQ/AWeeqzGm
	KYhkaP9FapE9vPDDP0ujaaMdjttd6TzMzE+fb9dk3Rf949cVhkZRAZI75AG04fEfp/EIORWama4
	Pxb2GcuNS7IM2tj7KVvEfu9Gq6VAD7Q==
X-Received: by 2002:a17:902:ecc6:b0:240:3e72:ef98 with SMTP id d9443c01a7336-24630149490mr14840175ad.10.1755845102227;
        Thu, 21 Aug 2025 23:45:02 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IHTRC0qrO9ZsKmhumtwBi+xoakMJ8EF7G7365u0uhaKeGqNO2S7FCZeHLoYJ1Pg7dXN+9YNVw==
X-Received: by 2002:a17:902:ecc6:b0:240:3e72:ef98 with SMTP id d9443c01a7336-24630149490mr14839835ad.10.1755845101668;
        Thu, 21 Aug 2025 23:45:01 -0700 (PDT)
Received: from [10.133.33.119] (tpe-colo-wan-fw-bordernet.qualcomm.com. [103.229.16.4])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-245ed50352esm73541165ad.128.2025.08.21.23.44.54
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 21 Aug 2025 23:45:01 -0700 (PDT)
Message-ID: <1cb3803e-5617-41ff-bf3b-95b9f616fbca@oss.qualcomm.com>
Date: Fri, 22 Aug 2025 14:44:51 +0800
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v3 02/14] dt-bindings: phy: Add QMP USB3+DP PHY for QCS615
To: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
Cc: Rob Clark <robin.clark@oss.qualcomm.com>,
        Dmitry Baryshkov <lumag@kernel.org>,
        Abhinav Kumar
 <abhinav.kumar@linux.dev>,
        Jessica Zhang <jessica.zhang@oss.qualcomm.com>,
        Sean Paul <sean@poorly.run>,
        Marijn Suijten <marijn.suijten@somainline.org>,
        Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
        Maxime Ripard <mripard@kernel.org>,
        Thomas Zimmermann <tzimmermann@suse.de>,
        David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Kuogee Hsieh <quic_khsieh@quicinc.com>, Vinod Koul <vkoul@kernel.org>,
        Kishon Vijay Abraham I <kishon@kernel.org>,
        Philipp Zabel <p.zabel@pengutronix.de>, linux-arm-msm@vger.kernel.org,
        dri-devel@lists.freedesktop.org, freedreno@lists.freedesktop.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        linux-phy@lists.infradead.org, fange.zhang@oss.qualcomm.com,
        yongxing.mou@oss.qualcomm.com, tingwei.zhang@oss.qualcomm.com,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, quic_lliu6@quicinc.com
References: <20250820-add-displayport-support-for-qcs615-platform-v3-0-a43bd25ec39c@oss.qualcomm.com>
 <20250820-add-displayport-support-for-qcs615-platform-v3-2-a43bd25ec39c@oss.qualcomm.com>
 <3lodaz4t72vsxnstfe2msooo3dnwbqy6hxzdshcmyrgb3fbjnv@2afo5atezt24>
From: Xiangxu Yin <xiangxu.yin@oss.qualcomm.com>
In-Reply-To: <3lodaz4t72vsxnstfe2msooo3dnwbqy6hxzdshcmyrgb3fbjnv@2afo5atezt24>
X-Proofpoint-GUID: vaEDSxgtEsuZgH2bdaQEU6uzJlb36Afk
X-Proofpoint-ORIG-GUID: vaEDSxgtEsuZgH2bdaQEU6uzJlb36Afk
X-Authority-Analysis: v=2.4 cv=Xpij+VF9 c=1 sm=1 tr=0 ts=68a811ef cx=c_pps
 a=IZJwPbhc+fLeJZngyXXI0A==:117 a=nuhDOHQX5FNHPW3J6Bj6AA==:17
 a=IkcTkHD0fZMA:10 a=2OwXVqhp2XgA:10 a=gEfo2CItAAAA:8 a=EUspDBNiAAAA:8
 a=VwQbUJbxAAAA:8 a=H_21wVPlT9rzXepSeDcA:9 a=3ZKOabzyN94A:10 a=QEXdDO2ut3YA:10
 a=uG9DUKGECoFWVXl0Dc02:22 a=sptkURWiP4Gy88Gu7hUp:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwODIwMDAxMyBTYWx0ZWRfX0Cq8EDHnjhiz
 4hQuHDU8nUdB3aNpZKtpK/EYZcwpy0DeFbs9I1rPd5ACkufE3mnmIrxFzWSDf8bfy7d5rC+FRtq
 H0QF4IQ/WCx5spFPlaKq15sSenXrwRywa/KDoPNXhO4aIO/UZ4SRET8shEqoIOhkLTe2nBfawmb
 0uketFC9S6iC/6cEOPyFfirJly5ZFdL66WfjJrLl9D+b3kch0w2zkC7GvUx4A0LGw1lEO3WHBPs
 9BfXK5iAmdVaxNXU3KoKaxHONjMWxbkwcHr20p7JlPSX/czXgtcmatv/FT7rM4o2jG6dZA+Icjb
 1uRhby/trEX+IYr+G3VMSb3OF5OrfXNjyBT1+1YXzCEHOuPZ+orEvNt/CbJRYoyiLaCKETmP0x0
 RvbV331rZyxtxr/dZh4iBR0IysK+JA==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-08-22_02,2025-08-20_03,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 suspectscore=0 clxscore=1015 lowpriorityscore=0 bulkscore=0 impostorscore=0
 adultscore=0 spamscore=0 phishscore=0 malwarescore=0 priorityscore=1501
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.19.0-2508110000 definitions=main-2508200013
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250821_234504_608299_ED7705C3 
X-CRM114-Status: GOOD (  18.78  )
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

Ck9uIDgvMjAvMjAyNSA2OjA5IFBNLCBEbWl0cnkgQmFyeXNoa292IHdyb3RlOgo+IE9uIFdlZCwg
QXVnIDIwLCAyMDI1IGF0IDA1OjM0OjQ0UE0gKzA4MDAsIFhpYW5neHUgWWluIHdyb3RlOgo+PiBB
ZGQgZGV2aWNlIHRyZWUgYmluZGluZyBkb2N1bWVudGF0aW9uIGZvciB0aGUgUXVhbGNvbW0gUU1Q
IFVTQjMrRFAgUEhZCj4+IG9uIFFDUzYxNSBQbGF0Zm9ybS4gVGhpcyBQSFkgc3VwcG9ydHMgYm90
aCBVU0IzIGFuZCBEUCBmdW5jdGlvbmFsaXR5Cj4+IG92ZXIgVVNCLUMsIHdpdGggUEhZIG1vZGUg
c3dpdGNoaW5nIGNhcGFiaWxpdHkuIEl0IGRvZXMgbm90IHN1cHBvcnQKPj4gY29tYm8gbW9kZS4K
Pj4KPj4gU2lnbmVkLW9mZi1ieTogWGlhbmd4dSBZaW4gPHhpYW5neHUueWluQG9zcy5xdWFsY29t
bS5jb20+Cj4+IC0tLQo+PiAgLi4uL2JpbmRpbmdzL3BoeS9xY29tLHFjczYxNS1xbXAtdXNiM2Rw
LXBoeS55YW1sICAgfCAxMDggKysrKysrKysrKysrKysrKysrKysrCj4+ICAxIGZpbGUgY2hhbmdl
ZCwgMTA4IGluc2VydGlvbnMoKykKPj4KPj4gZGlmZiAtLWdpdCBhL0RvY3VtZW50YXRpb24vZGV2
aWNldHJlZS9iaW5kaW5ncy9waHkvcWNvbSxxY3M2MTUtcW1wLXVzYjNkcC1waHkueWFtbCBiL0Rv
Y3VtZW50YXRpb24vZGV2aWNldHJlZS9iaW5kaW5ncy9waHkvcWNvbSxxY3M2MTUtcW1wLXVzYjNk
cC1waHkueWFtbAo+PiBuZXcgZmlsZSBtb2RlIDEwMDY0NAo+PiBpbmRleCAwMDAwMDAwMDAwMDAw
MDAwMDAwMDAwMDAwMDAwMDAwMDAwMDAwMDAwLi5jMmIxZmJhYjI5MzBmMDY1M2Y0ZGRiOTVmN2I1
NGQ4ZmU5OTRmOTJkCj4+IC0tLSAvZGV2L251bGwKPj4gKysrIGIvRG9jdW1lbnRhdGlvbi9kZXZp
Y2V0cmVlL2JpbmRpbmdzL3BoeS9xY29tLHFjczYxNS1xbXAtdXNiM2RwLXBoeS55YW1sCj4+IEBA
IC0wLDAgKzEsMTA4IEBACj4+ICsjIFNQRFgtTGljZW5zZS1JZGVudGlmaWVyOiAoR1BMLTIuMCBP
UiBCU0QtMi1DbGF1c2UpCj4+ICslWUFNTCAxLjIKPj4gKy0tLQo+PiArJGlkOiBodHRwOi8vZGV2
aWNldHJlZS5vcmcvc2NoZW1hcy9waHkvcWNvbSxxY3M2MTUtcW1wLXVzYjNkcC1waHkueWFtbCMK
Pj4gKyRzY2hlbWE6IGh0dHA6Ly9kZXZpY2V0cmVlLm9yZy9tZXRhLXNjaGVtYXMvY29yZS55YW1s
Iwo+PiArCj4+ICt0aXRsZTogUXVhbGNvbW0gUU1QIFVTQjMtRFAgUEhZIGNvbnRyb2xsZXIgKERQ
LCBRQ1M2MTUpCj4+ICsKPj4gK21haW50YWluZXJzOgo+PiArICAtIFZpbm9kIEtvdWwgPHZrb3Vs
QGtlcm5lbC5vcmc+Cj4+ICsKPj4gK2Rlc2NyaXB0aW9uOgo+PiArICBUaGUgUU1QIFBIWSBjb250
cm9sbGVyIHN1cHBvcnRzIHBoeXNpY2FsIGxheWVyIGZ1bmN0aW9uYWxpdHkgZm9yIGJvdGgKPj4g
KyAgVVNCMyBhbmQgRGlzcGxheVBvcnQgb3ZlciBVU0ItQy4gV2hpbGUgaXQgZW5hYmxlcyBtb2Rl
IHN3aXRjaGluZwo+PiArICBiZXR3ZWVuIFVTQjMgYW5kIERpc3BsYXlQb3J0LCBidXQgZG9lcyBu
b3Qgc3VwcG9ydCBjb21ibyBtb2RlLgo+PiArCj4+ICtwcm9wZXJ0aWVzOgo+PiArICBjb21wYXRp
YmxlOgo+PiArICAgIGVudW06Cj4+ICsgICAgICAtIHFjb20scWNzNjE1LXFtcC11c2IzLWRwLXBo
eQo+PiArCj4+ICsgIHJlZzoKPj4gKyAgICBtYXhJdGVtczogMQo+PiArCj4+ICsgIGNsb2NrczoK
Pj4gKyAgICBtYXhJdGVtczogMgo+PiArCj4+ICsgIGNsb2NrLW5hbWVzOgo+PiArICAgIGl0ZW1z
Ogo+PiArICAgICAgLSBjb25zdDogY2ZnX2FoYgo+PiArICAgICAgLSBjb25zdDogcmVmCj4+ICsK
Pj4gKyAgcmVzZXRzOgo+PiArICAgIG1heEl0ZW1zOiAyCj4+ICsKPj4gKyAgcmVzZXQtbmFtZXM6
Cj4+ICsgICAgaXRlbXM6Cj4+ICsgICAgICAtIGNvbnN0OiBwaHlfcGh5Cj4+ICsgICAgICAtIGNv
bnN0OiBkcF9waHkKPj4gKwo+PiArICB2ZGRhLXBoeS1zdXBwbHk6IHRydWUKPj4gKwo+PiArICB2
ZGRhLXBsbC1zdXBwbHk6IHRydWUKPj4gKwo+PiArICAiI2Nsb2NrLWNlbGxzIjoKPj4gKyAgICBj
b25zdDogMQo+PiArICAgIGRlc2NyaXB0aW9uOgo+PiArICAgICAgU2VlIGluY2x1ZGUvZHQtYmlu
ZGluZ3MvcGh5L3BoeS1xY29tLXFtcC5oCj4+ICsKPj4gKyAgIiNwaHktY2VsbHMiOgo+PiArICAg
IGNvbnN0OiAxCj4+ICsgICAgZGVzY3JpcHRpb246Cj4+ICsgICAgICBTZWUgaW5jbHVkZS9kdC1i
aW5kaW5ncy9waHkvcGh5LXFjb20tcW1wLmgKPj4gKwo+PiArICBxY29tLHRjc3ItcmVnOgo+PiAr
ICAgICRyZWY6IC9zY2hlbWFzL3R5cGVzLnlhbWwjL2RlZmluaXRpb25zL3BoYW5kbGUtYXJyYXkK
Pj4gKyAgICBpdGVtczoKPj4gKyAgICAgIC0gaXRlbXM6Cj4+ICsgICAgICAgICAgLSBkZXNjcmlw
dGlvbjogcGhhbmRsZSB0byBUQ1NSIGhhcmR3YXJlIGJsb2NrCj4+ICsgICAgICAgICAgLSBkZXNj
cmlwdGlvbjogb2Zmc2V0IG9mIHRoZSBWTFMgQ0xBTVAgcmVnaXN0ZXIKPj4gKyAgICAgIC0gaXRl
bXM6Cj4+ICsgICAgICAgICAgLSBkZXNjcmlwdGlvbjogcGhhbmRsZSB0byBUQ1NSIGhhcmR3YXJl
IGJsb2NrCj4gV2h5IGRvIHdlIG5lZWQgdHdvIHBoYW5kbGVzPwoKwqBUaGFua3MgZm9yIHBvaW50
aW5nIHRoYXQgb3V0LiBXaWxsIHVwZGF0ZSB0byB1c2UgYSBzaW5nbGUgcGhhbmRsZSB3aXRoIG11
bHRpcGxlIHJlZ2lzdGVyIG9mZnNldHMgaW4gdGhlIG5leHQgcGF0Y2guCgoKPgo+PiArICAgICAg
ICAgIC0gZGVzY3JpcHRpb246IG9mZnNldCBvZiB0aGUgRFAgUEhZIG1vZGUgcmVnaXN0ZXIKPiBz
L0RQIFBIWS9QSFkvCgoKT2suIFdpbGwgdXBkYXRlIGluIHRoZSBuZXh0IHZlcnNpb24uCgoKPj4g
KyAgICBkZXNjcmlwdGlvbjogQ2xhbXAgYW5kIFBIWSBtb2RlIHJlZ2lzdGVyIHByZXNlbnQgaW4g
dGhlIFRDU1IKPj4gKwo+PiArcmVxdWlyZWQ6Cj4+ICsgIC0gY29tcGF0aWJsZQo+PiArICAtIHJl
Zwo+PiArICAtIGNsb2Nrcwo+PiArICAtIGNsb2NrLW5hbWVzCj4+ICsgIC0gcmVzZXRzCj4+ICsg
IC0gcmVzZXQtbmFtZXMKPj4gKyAgLSB2ZGRhLXBoeS1zdXBwbHkKPj4gKyAgLSB2ZGRhLXBsbC1z
dXBwbHkKPj4gKyAgLSAiI2Nsb2NrLWNlbGxzIgo+PiArICAtICIjcGh5LWNlbGxzIgo+PiArICAt
IHFjb20sdGNzci1yZWcKPj4gKwo+PiArYWRkaXRpb25hbFByb3BlcnRpZXM6IGZhbHNlCj4+ICsK
Pj4gK2V4YW1wbGVzOgo+PiArICAtIHwKPj4gKyAgICAjaW5jbHVkZSA8ZHQtYmluZGluZ3MvY2xv
Y2svcWNvbSxxY3M2MTUtZ2NjLmg+Cj4+ICsgICAgI2luY2x1ZGUgPGR0LWJpbmRpbmdzL2Nsb2Nr
L3Fjb20scnBtaC5oPgo+PiArCj4+ICsgICAgcGh5QDg4ZTgwMDAgewo+PiArICAgICAgY29tcGF0
aWJsZSA9ICJxY29tLHFjczYxNS1xbXAtdXNiMy1kcC1waHkiOwo+PiArICAgICAgcmVnID0gPDB4
ODhlODAwMCAweDIwMDA+Owo+PiArCj4+ICsgICAgICBjbG9ja3MgPSA8JmdjYyBHQ0NfQUhCMlBI
WV9XRVNUX0NMSz4sCj4+ICsgICAgICAgICAgICAgICA8JmdjYyBHQ0NfVVNCM19TRUNfQ0xLUkVG
X0NMSz47Cj4+ICsgICAgICBjbG9jay1uYW1lcyA9ICJjZmdfYWhiIiwKPj4gKyAgICAgICAgICAg
ICAgICAgICAgInJlZiI7Cj4+ICsKPj4gKyAgICAgIHJlc2V0cyA9IDwmZ2NjIEdDQ19VU0IzUEhZ
X1BIWV9TRUNfQkNSID4sCj4+ICsgICAgICAgICAgICAgICA8JmdjYyBHQ0NfVVNCM19EUF9QSFlf
U0VDX0JDUj47Cj4+ICsgICAgICByZXNldC1uYW1lcyA9ICJwaHlfcGh5IiwKPj4gKyAgICAgICAg
ICAgICAgICAgICAgImRwX3BoeSI7Cj4+ICsKPj4gKyAgICAgIHZkZGEtcGh5LXN1cHBseSA9IDwm
dnJlZ19sMTFhPjsKPj4gKyAgICAgIHZkZGEtcGxsLXN1cHBseSA9IDwmdnJlZ19sNWE+Owo+PiAr
Cj4+ICsgICAgICAjY2xvY2stY2VsbHMgPSA8MT47Cj4+ICsgICAgICAjcGh5LWNlbGxzID0gPDE+
Owo+PiArCj4+ICsgICAgICBxY29tLHRjc3ItcmVnID0gPCZ0Y3NyIDB4YmZmMD4sCj4+ICsgICAg
ICAgICAgICAgICAgICAgICAgPCZ0Y3NyIDB4YjI0Yz47Cj4+ICsgICAgfTsKPj4KPj4gLS0gCj4+
IDIuMzQuMQo+PgoKLS0gCmxpbnV4LXBoeSBtYWlsaW5nIGxpc3QKbGludXgtcGh5QGxpc3RzLmlu
ZnJhZGVhZC5vcmcKaHR0cHM6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8v
bGludXgtcGh5Cg==
