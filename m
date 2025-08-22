Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 3C8A2CA0EED
	for <linux-phy@archiver.kernel.org>; Fri, 22 Aug 2025 11:48:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=EXgSBRDnDYv9VBhbKcir19nWIBrWfMuXBMMEY0PMEDs=; b=s8U6kQHkIjk3mG
	HbaKgd+MaoOtTc6IxWNts7FoMKBlwmmpQL87+asHXp4ne27gDZk6Jns1romjD2fP2dkOTM0KjaIAu
	47nu2ZBvyRWSCQL2zryFDOd7w7iKwP33BW25Tuk8qudN8HCaRkc+lV7GLdRGuRzQyEqIEhTiGEuc1
	VZxqDcFzNVdF+4j8JlFEyhV7YbFABjY4teZlhoT/7o3VJhLxXftvZbD2zOb74hPbXfJx1yMtJTCSG
	ucjb5RoyZ49V3EKoQ4NVPgQtV7IRzbMoo2V5GAreo8X6LaDXipoLr5NnNoJe26kCzMQvcHq+ib0vL
	+LgVs6k9h4P0r2pvB2QQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1upQGM-00000002Nbb-20t4;
	Fri, 22 Aug 2025 11:48:54 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1upLki-00000001lEX-3Ygf
	for linux-phy@lists.infradead.org;
	Fri, 22 Aug 2025 06:59:57 +0000
Received: from pps.filterd (m0279867.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 57M6uQcU021364
	for <linux-phy@lists.infradead.org>; Fri, 22 Aug 2025 06:59:56 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	EvRSbSH/VoxM+9jiAgdHngTIpfLu8E8u5BFgwRNDeYw=; b=ft3q6sptkCQgZIvH
	X+ocxL8DKw1LaFTCRH3oXovsqFPtM3ECG5jSdO54qhWumdGzaRLc7txUhlWo0yM7
	p+nN1PDK+sXom5BuVh3bWH/Oo7eGNFh9BtOmVlah9L6ZCCiHutHN+ZjyNPzvziRq
	B2m2l22Z2d5rhjbKAF6UmL4yOGKXezMEoK1FkhaQpNP3zHx8Scz5bVbQJKSHrjtJ
	gmOFSdH/Ld7ddVIMKD5ZXaKgrSgTc9k0Z2GRk7FBJgakxKS/Nv7btUTN03hofBxE
	/dN99Z0whu7VZniV4GPrDK60bbtVHdKoZUWqLC3WgZbqt6boEWZRdXVA8yPN4YIK
	Qae0FQ==
Received: from mail-pl1-f197.google.com (mail-pl1-f197.google.com [209.85.214.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 48n52a86wy-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Fri, 22 Aug 2025 06:59:56 +0000 (GMT)
Received: by mail-pl1-f197.google.com with SMTP id d9443c01a7336-2462ea2ed58so1741125ad.3
        for <linux-phy@lists.infradead.org>; Thu, 21 Aug 2025 23:59:56 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1755845995; x=1756450795;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to:subject
         :user-agent:mime-version:date:message-id:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=EvRSbSH/VoxM+9jiAgdHngTIpfLu8E8u5BFgwRNDeYw=;
        b=J8J1A+kvnnNY+4p/ATyMtrH8HXQj+Os3jCtr/ZYpQwA9NJWcigvUpCjeXS0OVpFTLZ
         LUsffEGp8stF68BW//z3hZQhzz4qyAH/kHfGT73BpwHkXKg9G20JlPHG7eUUvnIHOEe/
         W9jOd5x4GjanlhSrWSIvZwi/wf4065CYXMx6sl8EyXBM2V71K2Do9MJpBDN53BvLHoLV
         cHjjUoEPYfWZYOo+6YVE7NK9K9sopU/OXNMoBnLtLkxmrnNyN+K9nVvScbjeFapqZfjx
         wmnCebhn1THChPaQ8+mn0ey4RpmJdf7847UsWrilmLPU6jwt8SxfwP48nNgZLzEdEILu
         RLzA==
X-Forwarded-Encrypted: i=1; AJvYcCWtz4c3ppmVuEjUNYKLU7XPq/gJ/cnA5XVETYsTy/m+Hj8azclRJ4Dtz3Dq8g5iJIBBMHNbOM2JKng=@lists.infradead.org
X-Gm-Message-State: AOJu0YwgW4FChxXSf9nKdGvy9FwmtN36Hw83xSG7Nr6kOau5mZGQ2dv/
	DEKXgr6LnnPDDDKBfW8IPYtr+eBgOsGintKkaad93sILMy5yaBpsjGDH5iR7j4lt3+10jqy64cE
	LcmiaY3TWC6X/ZC1rJlswGP0EWDPzj5N3I3vb/nE0KvRnTa7st0dzHB80jYNNqEoqsEUM
X-Gm-Gg: ASbGncv1Pyy1v2v/aIfZvG5C/CkI2MLGFf/Qw8dFrruLHs1mlT0oKF064C9IDnBT8dJ
	hsXNhKsGkhg7Rd8DoHs2xA5A/yZsmNp97trNGP2Vruj1x9jxcdU7TiO8RrYTir6ywCDbi6fTIBN
	nNqscNs7Qijzn9aXQlqH1CVhNq/qxZUqf8OhuyuFa1l3W8Xj4ea19xB3FiBDtTPzmDoMzRCY3a3
	023eL2JAcElrLhtJICwRlKH8aDh1YdNR4v9a8X4o1xC+w8yCFocDa8libN3Iow8UdShXnzAygrS
	ixH+F2lkH1AF0B3hXOo+fHzIJ6VguqZ2nzaXMPBSNqnNdIFFLT8JrDvORuKm/0WPpjuajjKdTEB
	QH0DV0JEGnkLS4g1saAl79Z/LIDmJ0g==
X-Received: by 2002:a17:902:e74d:b0:240:52d7:e8a4 with SMTP id d9443c01a7336-2462ef4956amr15460055ad.7.1755845995314;
        Thu, 21 Aug 2025 23:59:55 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IEuEJR2wzIWQjgd8kotlnM7HkI7wYOwYms8taKFwN/LIJRGxlF0bSt7nWjIb6zaFE9ywZO9Uw==
X-Received: by 2002:a17:902:e74d:b0:240:52d7:e8a4 with SMTP id d9443c01a7336-2462ef4956amr15459895ad.7.1755845994827;
        Thu, 21 Aug 2025 23:59:54 -0700 (PDT)
Received: from [10.133.33.119] (tpe-colo-wan-fw-bordernet.qualcomm.com. [103.229.16.4])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-245ed50352esm73974115ad.128.2025.08.21.23.59.47
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 21 Aug 2025 23:59:54 -0700 (PDT)
Message-ID: <8922ae6e-9be6-49f7-ac84-d4a1dd60421b@oss.qualcomm.com>
Date: Fri, 22 Aug 2025 14:59:45 +0800
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v3 05/14] phy: qcom: qmp-usbc: Add DP-related fields for
 USB/DP switchable PHY
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
        Konrad Dybcio <konradybcio@kernel.org>
References: <20250820-add-displayport-support-for-qcs615-platform-v3-0-a43bd25ec39c@oss.qualcomm.com>
 <20250820-add-displayport-support-for-qcs615-platform-v3-5-a43bd25ec39c@oss.qualcomm.com>
 <7b6utbnibia767bp55vhvg6ghdavb66ubdpabyguohuwtmz3mp@unvm36jttota>
From: Xiangxu Yin <xiangxu.yin@oss.qualcomm.com>
In-Reply-To: <7b6utbnibia767bp55vhvg6ghdavb66ubdpabyguohuwtmz3mp@unvm36jttota>
X-Authority-Analysis: v=2.4 cv=feD0C0QF c=1 sm=1 tr=0 ts=68a8156c cx=c_pps
 a=cmESyDAEBpBGqyK7t0alAg==:117 a=nuhDOHQX5FNHPW3J6Bj6AA==:17
 a=IkcTkHD0fZMA:10 a=2OwXVqhp2XgA:10 a=EUspDBNiAAAA:8 a=S4zsw1PvXi1YseiIK68A:9
 a=3ZKOabzyN94A:10 a=QEXdDO2ut3YA:10 a=1OuFwYUASf3TG4hYMiVC:22
X-Proofpoint-ORIG-GUID: Va9C2NTAeTNJ4EzxfzwSP2roCaqNJn53
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwODIwMDAxMyBTYWx0ZWRfXyAMxc0saLxuY
 r9EgVmp59nIwyCkxrJ/4qwuUhoEHkSlYwz0JEC/tzqdOxQCy0POf+Ly1UB27DZJ3udWjwxH0jK1
 aWTt+wHRCcl6SLlZiSOuE+AjiA0PRdJfoLU90touwwWZdgbP6EvzdNb0Ss6XC+8gweFjyg3qfW7
 Zxe4Q03EzhPkxquTj04EqdFRjW0ZYLQ6i15iHdr+dyR+vBZYTs/dbpx5YQIZmGqAX6UV6gnq+iP
 DSsadfN4bJ5XZnlSSMR/B0TSqCYiqZUO4pSGf4PbPBdmGcOd+6TfWUmtkCFQuEBQL311vLB+LCR
 7S/t15wW5QPLbrHkDA7MGhGUVF7jLm+HCE9wP0yOZUw/uK9jlQ4RAJJJjnipuBpIWvKEg21qZo2
 vx9AxiWWuPss24LnsIJa7tIU6PbQHA==
X-Proofpoint-GUID: Va9C2NTAeTNJ4EzxfzwSP2roCaqNJn53
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-08-22_02,2025-08-20_03,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 priorityscore=1501 phishscore=0 adultscore=0 malwarescore=0 bulkscore=0
 lowpriorityscore=0 spamscore=0 impostorscore=0 suspectscore=0 clxscore=1015
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.19.0-2508110000 definitions=main-2508200013
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250821_235956_890440_C9BCEFFC 
X-CRM114-Status: GOOD (  18.16  )
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

Ck9uIDgvMjAvMjAyNSA3OjQ3IFBNLCBEbWl0cnkgQmFyeXNoa292IHdyb3RlOgo+IE9uIFdlZCwg
QXVnIDIwLCAyMDI1IGF0IDA1OjM0OjQ3UE0gKzA4MDAsIFhpYW5neHUgWWluIHdyb3RlOgo+PiBF
eHRlbmQgcW1wX3VzYmNfb2Zmc2V0cyBhbmQgcW1wX3BoeV9jZmcgd2l0aCBEUC1zcGVjaWZpYyBm
aWVsZHMsCj4+IGluY2x1ZGluZyByZWdpc3RlciBvZmZzZXRzLCBpbml0IHRhYmxlcywgYW5kIGNh
bGxiYWNrIGhvb2tzLiBBbHNvCj4+IHVwZGF0ZSBxbXBfdXNiYyBzdHJ1Y3QgdG8gdHJhY2sgRFAt
cmVsYXRlZCByZXNvdXJjZXMgYW5kIHN0YXRlLgo+PiBUaGlzIGVuYWJsZXMgc3VwcG9ydCBmb3Ig
VVNCL0RQIHN3aXRjaGFibGUgVHlwZS1DIFBIWXMgdGhhdCBvcGVyYXRlCj4+IGluIGVpdGhlciBt
b2RlLgo+Pgo+PiBTaWduZWQtb2ZmLWJ5OiBYaWFuZ3h1IFlpbiA8eGlhbmd4dS55aW5Ab3NzLnF1
YWxjb21tLmNvbT4KPj4gLS0tCj4+ICBkcml2ZXJzL3BoeS9xdWFsY29tbS9waHktcWNvbS1xbXAt
dXNiYy5jIHwgNzMgKysrKysrKysrKysrKysrKysrKysrKysrLS0tLS0tLS0KPj4gIDEgZmlsZSBj
aGFuZ2VkLCA1NSBpbnNlcnRpb25zKCspLCAxOCBkZWxldGlvbnMoLSkKPj4KPj4gIAo+PiArCXN0
cnVjdCByZWdtYXAgKnRjc3JfbWFwOwo+PiArCXUzMiB2bHNfY2xhbXBfcmVnOwo+PiArCXUzMiBk
cF9waHlfbW9kZV9yZWc7Cj4+ICsKPj4gIAlzdHJ1Y3QgbXV0ZXggcGh5X211dGV4Owo+PiAgCj4+
ICsJc3RydWN0IHBoeSAqdXNiX3BoeTsKPiBTaG91bGQgYmUgYSBwYXJ0IG9mIHRoZSBwcmV2aW91
cyBwYXRjaC4KCgpPaywgd2lsbCBtb3ZlIHVzYl9waHkgcmVuYW1lIHRvIHBhdGNoICdSZW5hbWUg
VVNCLXNwZWNpZmljIG9wcycswqAKCnRoZW4gc2hhbGwgSSBuZWVkIGRyb3DCoHRoZcKgfFJldmll
d2VkLWJ5fMKgdGFnIGluIHRoYXQgcGF0Y2ggc2luY2UgaXQgd2lsbCBjaGFuZ2U/CgoKPj4gIAll
bnVtIHBoeV9tb2RlIG1vZGU7Cj4+ICAJdW5zaWduZWQgaW50IHVzYl9pbml0X2NvdW50Owo+PiAg
Cj4+IC0Jc3RydWN0IHBoeSAqcGh5Owo+IFNpbWlsYXJseS4KCgpBY2suCgoKPj4gLQo+PiAtCXN0
cnVjdCBjbGtfZml4ZWRfcmF0ZSBwaXBlX2Nsa19maXhlZDsKPj4gKwlzdHJ1Y3QgcGh5ICpkcF9w
aHk7Cj4+ICsJdW5zaWduZWQgaW50IGRwX2F1eF9jZmc7Cj4+ICsJc3RydWN0IHBoeV9jb25maWd1
cmVfb3B0c19kcCBkcF9vcHRzOwo+PiArCXVuc2lnbmVkIGludCBkcF9pbml0X2NvdW50Owo+PiAg
Cj4+ICAJc3RydWN0IHR5cGVjX3N3aXRjaF9kZXYgKnN3Owo+PiAgCWVudW0gdHlwZWNfb3JpZW50
YXRpb24gb3JpZW50YXRpb247Cj4+IEBAIC04NzQsMTEgKzkxMSwxMSBAQCBzdGF0aWMgaW50IHFt
cF91c2JjX3R5cGVjX3N3aXRjaF9zZXQoc3RydWN0IHR5cGVjX3N3aXRjaF9kZXYgKnN3LAo+PiAg
CXFtcC0+b3JpZW50YXRpb24gPSBvcmllbnRhdGlvbjsKPj4gIAo+PiAgCWlmIChxbXAtPnVzYl9p
bml0X2NvdW50KSB7Cj4+IC0JCXFtcF91c2JjX3VzYl9wb3dlcl9vZmYocW1wLT5waHkpOwo+PiAt
CQlxbXBfdXNiY19jb21fZXhpdChxbXAtPnBoeSk7Cj4+ICsJCXFtcF91c2JjX3VzYl9wb3dlcl9v
ZmYocW1wLT51c2JfcGh5KTsKPj4gKwkJcW1wX3VzYmNfY29tX2V4aXQocW1wLT51c2JfcGh5KTsK
Pj4gIAo+PiAtCQlxbXBfdXNiY19jb21faW5pdChxbXAtPnBoeSk7Cj4+IC0JCXFtcF91c2JjX3Vz
Yl9wb3dlcl9vbihxbXAtPnBoeSk7Cj4+ICsJCXFtcF91c2JjX2NvbV9pbml0KHFtcC0+dXNiX3Bo
eSk7Cj4+ICsJCXFtcF91c2JjX3VzYl9wb3dlcl9vbihxbXAtPnVzYl9waHkpOwo+IGFuZCB0aGVz
ZS4KCgpBY2suCgoKPj4gIAl9Cj4+ICAKPj4gIAltdXRleF91bmxvY2soJnFtcC0+cGh5X211dGV4
KTsKPj4gQEAgLTExMDYsMTQgKzExNDMsMTQgQEAgc3RhdGljIGludCBxbXBfdXNiY19wcm9iZShz
dHJ1Y3QgcGxhdGZvcm1fZGV2aWNlICpwZGV2KQo+PiAgCWlmIChyZXQpCj4+ICAJCWdvdG8gZXJy
X25vZGVfcHV0Owo+PiAgCj4+IC0JcW1wLT5waHkgPSBkZXZtX3BoeV9jcmVhdGUoZGV2LCBucCwg
JnFtcF91c2JjX3VzYl9waHlfb3BzKTsKPj4gLQlpZiAoSVNfRVJSKHFtcC0+cGh5KSkgewo+PiAt
CQlyZXQgPSBQVFJfRVJSKHFtcC0+cGh5KTsKPj4gKwlxbXAtPnVzYl9waHkgPSBkZXZtX3BoeV9j
cmVhdGUoZGV2LCBucCwgJnFtcF91c2JjX3VzYl9waHlfb3BzKTsKPj4gKwlpZiAoSVNfRVJSKHFt
cC0+dXNiX3BoeSkpIHsKPj4gKwkJcmV0ID0gUFRSX0VSUihxbXAtPnVzYl9waHkpOwo+PiAgCQlk
ZXZfZXJyKGRldiwgImZhaWxlZCB0byBjcmVhdGUgUEhZOiAlZFxuIiwgcmV0KTsKPj4gIAkJZ290
byBlcnJfbm9kZV9wdXQ7Cj4+ICAJfQo+PiAgCj4+IC0JcGh5X3NldF9kcnZkYXRhKHFtcC0+cGh5
LCBxbXApOwo+PiArCXBoeV9zZXRfZHJ2ZGF0YShxbXAtPnVzYl9waHksIHFtcCk7Cj4+ICAKPj4g
IAlvZl9ub2RlX3B1dChucCk7Cj4+ICAKPj4KPj4gLS0gCj4+IDIuMzQuMQo+PgoKLS0gCmxpbnV4
LXBoeSBtYWlsaW5nIGxpc3QKbGludXgtcGh5QGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cHM6Ly9s
aXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtcGh5Cg==
