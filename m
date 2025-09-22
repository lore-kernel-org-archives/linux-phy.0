Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 24E65CAC592
	for <linux-phy@archiver.kernel.org>; Mon, 22 Sep 2025 08:04:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=YUrjLLEhNokvF53er7zzQshGx6p/4vEwBiRJHy31++4=; b=euKunP8gCFPZMq
	az+LKGZst+cM6fzAwHo93TKc8hzNcz+lvyaGJx44Rd6aPbNOtSJSzc7SJDENfzqnjjbNjgqEPsd/l
	P9N2F7iqhubXRU2E5b1nLz1o8RNwt4q3ifkWIKP20ShmuWUx72C8yai2Ux48eH6H3qXxHG5xjGlU/
	3ItR+zCL23RJc6Z2NSpdM1IOMWZKYGC5CiSyO6mbcTNQyhso0d/uaT+3qI/47qsf9rTDaEFD1r85K
	nptoA6sRliz4h7TU4npKOr1BoXTa+nODovI4c8A/JhF6uhg4XvlW/602VbHpDwuNE/v1BNcRJudps
	91ci+VkGJc1nQTeuel6A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1v0bXd-00000009bJL-3dSC;
	Mon, 22 Sep 2025 08:04:57 +0000
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1v0bXb-00000009bIE-0kSX
	for linux-phy@lists.infradead.org;
	Mon, 22 Sep 2025 08:04:56 +0000
Received: from pps.filterd (m0279873.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 58LNtOeq004892
	for <linux-phy@lists.infradead.org>; Mon, 22 Sep 2025 08:04:54 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	OBOlNt0KylCLkmD2DPMzP/dcM42JfiU2PW1abyinKzQ=; b=pHqe234Qr4hfKtip
	8vFbscrqsNDOJhQB6RrHpm3aVnDYgX+Z/kJlOKRtpAQS+BmMCNPZbbIgYBX8TWmQ
	71izMGieIm6StRm2fZ+V6HPEQ+Xtxw34Oiss6v1xpQNjc2WBCerD++Gfil98f04E
	fLRJZhDAIbe7ZeXi4quiOU2HYvvDZo+BFPKdadiCebtgvq1//aAkVZaq2fiVzvX7
	LUbcaVOsO7rmVQrDTnvEyWTE/d+sNF9k4VYg7y6R3hHIGVZf2zIKCI9+KRWrswdk
	pQey1qYAsRpdNYPhW/nKj7pWdqbRa+dKC5OZxs2lNSrOtrDrN3A9vEa/HyuSGWRq
	TB8gPA==
Received: from mail-pl1-f198.google.com (mail-pl1-f198.google.com [209.85.214.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 499hmnm4jy-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Mon, 22 Sep 2025 08:04:53 +0000 (GMT)
Received: by mail-pl1-f198.google.com with SMTP id d9443c01a7336-2728a359f2aso5733975ad.3
        for <linux-phy@lists.infradead.org>; Mon, 22 Sep 2025 01:04:53 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1758528292; x=1759133092;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to:subject
         :user-agent:mime-version:date:message-id:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=OBOlNt0KylCLkmD2DPMzP/dcM42JfiU2PW1abyinKzQ=;
        b=KUiSSj5rsf0w0rKj3IJSdob80SBS214/1BZMA8IedEjfNxrHuwuLIvPuQRmrOg/aEi
         A+ACyG+UckIR/tzsYBEpRBRSzX50g38707jtHymY5sMWeFESK3wN3RMT+jOo9rrwgoLO
         A8Amp3S+P0rcxvuYvyMYOn4uUdlBh/MzBJc0I8exdPrwQHfy8bKlkpX4yFdnhGlTQ8qK
         pRfebhZbT09fVhysVv9izHX+9FrmKyjIh4R6WyabiKScqdqHFj3aFMQhgP7ar8xQQXTy
         jns063U+RPX+Jkw9SdahYTPQecbovlqQVSgl5QGZ1N/8O1HjBRbODOQdr9ar5m9nWfpP
         +hbA==
X-Forwarded-Encrypted: i=1; AJvYcCUnU6ADlGHdbeffnX0hvgBnMCJxPTa3GUahB2L3MBKGrWtrKBNDIXrJXhbyvttwwNtOiDwM6d5xF7o=@lists.infradead.org
X-Gm-Message-State: AOJu0Ywjt0eYXw5L7soYKNFmG8k4nFyQbtbSCq3rtNebExN4DhgKjrpw
	CbVZYmNBQHFnVsxPm2Bv+mIIlHl0DfVnXfZmmhy8Wpdza9S2H3+3/xRpqDDq9LdQm4464G94L+B
	YzoyzOSafzhQOAa21Pi00sI7L/VN+5hkiMhjII2qc7YGeh9pv/9UBDHK9KFsOKozQgp7a
X-Gm-Gg: ASbGncuF4WUHQLSH1tjHHo7EfjxcnBgCRecLEehGTOTnP6uPKtwUoeB2DIBXQ3Si6jU
	l0/sFKn/Q/Tu1WXhrGAjMS5X4jEgwCwk9Ys/hbFrCF84ecG/LLUfK6q5nwQCY8VizUAdZRMlKMk
	AOhF0oJ3KOWLClRo6V7cCtZ0eXvbnq51sj/tL81hkjwzEVdhHsSL0SikZ3j00aB15CZWqep5+er
	MWmyfAu9zafTRgxxHREF/HjHEM5mDL6RJo1TqW6OT20+H0F9or1/pfmY6eJoWWaulAuSzzVM3x7
	I7ASxPoGe/jv5LacbqfrtcX1dlcjoG9wgLukU5TU2kHG4CAwerbNTLeH7de+t+hBLnmzUEjEqc2
	16iuS5htNz8MwXO0HGKoGsPpPk6AHytv1zw==
X-Received: by 2002:a17:902:8f90:b0:269:85aa:3776 with SMTP id d9443c01a7336-269ba565f84mr64992115ad.11.1758528292453;
        Mon, 22 Sep 2025 01:04:52 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IETp7wbXt+1gQikMI1ABo2kP9bbRyManwLPmYcLYXRvB4adBdDDjXk0Op1hW4hh5H/vg0jXlQ==
X-Received: by 2002:a17:902:8f90:b0:269:85aa:3776 with SMTP id d9443c01a7336-269ba565f84mr64991965ad.11.1758528292012;
        Mon, 22 Sep 2025 01:04:52 -0700 (PDT)
Received: from [10.133.33.87] (tpe-colo-wan-fw-bordernet.qualcomm.com. [103.229.16.4])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-2698035cd39sm124460975ad.146.2025.09.22.01.04.45
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 22 Sep 2025 01:04:51 -0700 (PDT)
Message-ID: <83b5a265-1c5f-49f5-a89e-22f466df3304@oss.qualcomm.com>
Date: Mon, 22 Sep 2025 16:04:42 +0800
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v5 05/14] phy: qcom: qmp-usbc: Move reset config into PHY
 cfg
To: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
Cc: Vinod Koul <vkoul@kernel.org>, Kishon Vijay Abraham I
 <kishon@kernel.org>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley
 <conor+dt@kernel.org>,
        Rob Clark <robin.clark@oss.qualcomm.com>,
        Dmitry Baryshkov <lumag@kernel.org>,
        Abhinav Kumar
 <abhinav.kumar@linux.dev>,
        Jessica Zhang <jessica.zhang@oss.qualcomm.com>,
        Sean Paul <sean@poorly.run>,
        Marijn Suijten <marijn.suijten@somainline.org>,
        David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>,
        linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        dri-devel@lists.freedesktop.org, freedreno@lists.freedesktop.org,
        fange.zhang@oss.qualcomm.com, yongxing.mou@oss.qualcomm.com,
        li.liu@oss.qualcomm.com, Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>
References: <20250919-add-displayport-support-for-qcs615-platform-v5-0-eae6681f4002@oss.qualcomm.com>
 <20250919-add-displayport-support-for-qcs615-platform-v5-5-eae6681f4002@oss.qualcomm.com>
 <z3phuuokrhonbukct2siz3ujear5ymtnoviea2epxzvjdmsvkj@w4puf4c44tmk>
From: Xiangxu Yin <xiangxu.yin@oss.qualcomm.com>
In-Reply-To: <z3phuuokrhonbukct2siz3ujear5ymtnoviea2epxzvjdmsvkj@w4puf4c44tmk>
X-Authority-Analysis: v=2.4 cv=YPqfyQGx c=1 sm=1 tr=0 ts=68d10325 cx=c_pps
 a=MTSHoo12Qbhz2p7MsH1ifg==:117 a=nuhDOHQX5FNHPW3J6Bj6AA==:17
 a=IkcTkHD0fZMA:10 a=yJojWOMRYYMA:10 a=EUspDBNiAAAA:8 a=M2ADfI_v5YemfhxMpdoA:9
 a=3ZKOabzyN94A:10 a=QEXdDO2ut3YA:10 a=GvdueXVYPmCkWapjIL-Q:22
X-Proofpoint-ORIG-GUID: Vlq118KHvM3BtVva7YEo5LmFKiGOzNw5
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwOTIwMDAwMCBTYWx0ZWRfX6nscznyWUWKj
 YBGqf4MCW3KWHbjh+Hn/EMGn/Nus0n7w8GV8NwTSWC0Ad7yAn4tdw4ov+PNMA3oB3Dj+A1Z6E9V
 Jo7wOrp+8hJKqtwOBJafLjgAETmBcatCxmRLS2N9M3Kb4LAoFAqVx+lttE0Q3Ed8U6x4+od6Unu
 qlKjtClIBjyqPTY4MES9xWC8lWW246JvDjA3n5etXREc3T94JsGA/lTtp8svptRXEOlcidN5VE+
 1IZJK76tx9uZ0x7RgoBHVwkTE1FH5puyZ8cMx1GYRli6rJXI689huiqR8m3/FE0uoseXyrj6af7
 oUKiToQq+YZqO5kYJeMZOVHnnOBBxxRBUc5q+3uQFYjtVbLC+JI7r1BzZWJVd4guk7OFJtRETuE
 4Ca6yTzW
X-Proofpoint-GUID: Vlq118KHvM3BtVva7YEo5LmFKiGOzNw5
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1117,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-09-22_01,2025-09-19_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 suspectscore=0 bulkscore=0 priorityscore=1501 phishscore=0 adultscore=0
 clxscore=1015 impostorscore=0 spamscore=0 malwarescore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.19.0-2507300000 definitions=main-2509200000
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250922_010455_344164_4929654C 
X-CRM114-Status: GOOD (  14.32  )
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

Ck9uIDkvMjAvMjAyNSAxMjo0NSBBTSwgRG1pdHJ5IEJhcnlzaGtvdiB3cm90ZToKPiBPbiBGcmks
IFNlcCAxOSwgMjAyNSBhdCAxMDoyNDoyMlBNICswODAwLCBYaWFuZ3h1IFlpbiB3cm90ZToKPj4g
TW92ZSByZXNldHMgdG8gcW1wX3BoeV9jZmcgZm9yIHBlci1QSFkgY3VzdG9taXphdGlvbi4gS2Vl
cCBsZWdhY3kgRFQKPj4gcGF0aCBvbiB0aGUgb2xkIGhhcmRjb2RlZCBsaXN0OyBub24tbGVnYWN5
IHBhdGggdXNlcyBjZmctPnJlc2V0X2xpc3QuCj4gV2h5PyBTdGFydCB5b3VyIGNvbW1pdCBtZXNz
YWdlcyB3aXRoIHRoZSBkZXNjcmlwdGlvbiBvZiB0aGUgaXNzdWUgdGhhdAo+IHlvdSBhcmUgdHJ5
aW5nIHRvIHNvbHZlLgoKClRoZSBvcmlnaW5hbCByZXNldCBsaXN0IG9ubHkgd29ya3MgZm9yIFVT
Qi1vbmx5IFBIWXMuIFVTQjNEUCBQSFlzIG5lZWQgZGlmZmVyZW50CnJlc2V0IG5hbWVzIGxpa2Ug
ImRwX3BoeSIsIHNvIHRoZXkgdXNlIGEgc2VwYXJhdGUgbGlzdC4gTW92aW5nIHJlc2V0cyB0bwpx
bXBfcGh5X2NmZyBlbmFibGVzIHBlci1QSFkgY29uZmlnIHdpdGhvdXQgc3BlY2lhbC1jYXNlIGxv
Z2ljIGluIERUIHBhcnNpbmcuCkkgd2lsbCB1cGRhdGUgY29tbWl0IG1zZyB3aXRoIGlzc3VlwqBk
ZXNjcmlwdGlvbi4KCk9yIGRvIHlvdSBzdWdnZXN0IHVzaW5nIChvZmZzLT5kcF9zZXJkZXMgIT0g
MCkgdG8gY2hvb3NlIHRoZSByZXNldCBsaXN0IGluc3RlYWQKdXNpbmcgbmV3IGF0dHJpYnV0ZXM/
CgoKPj4gU2lnbmVkLW9mZi1ieTogWGlhbmd4dSBZaW4gPHhpYW5neHUueWluQG9zcy5xdWFsY29t
bS5jb20+Cj4+IC0tLQo+PiAgZHJpdmVycy9waHkvcXVhbGNvbW0vcGh5LXFjb20tcW1wLXVzYmMu
YyB8IDE4ICsrKysrKysrKysrKysrKy0tLQo+PiAgMSBmaWxlIGNoYW5nZWQsIDE1IGluc2VydGlv
bnMoKyksIDMgZGVsZXRpb25zKC0pCj4+CgotLSAKbGludXgtcGh5IG1haWxpbmcgbGlzdApsaW51
eC1waHlAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwczovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFp
bG1hbi9saXN0aW5mby9saW51eC1waHkK
