Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id D20CACA0FFF
	for <linux-phy@archiver.kernel.org>; Mon,  1 Sep 2025 16:35:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Aqj0MuVUQLStcZHMKQVcwzJIrnUuQ3cySrLxefUWSFM=; b=grFLfdy0RuTRum
	SPmUUYoJ2rVlSsWptbgnbfDesR5Vhm8zz/dcVB38z/JVD8e2bf9yvlbBrxSoGYyxhltU0k1CW45X1
	MLN75wVg8iJTUBOHmWCp5/8PoegSF6hIk/6aeEszlOlRg1fySd3mhdHZMZXnSyoV54pdW3EiDTrPR
	YMvIE2ygzXRwByDnW6h8Z43PxRBKT4uJLUGiNn8OViEXoRdiIGTegGTFOZrJXX7QUKbzwdRb+NtU+
	rDDkwA5i7v1crBzl5hzC0QNAwGPN07My9rBTXeBx+UA/lsSa5lMUSRcWRCiGRwi4SgPL18JgQKxne
	z6rkjm4YK/GJ1Ktd35rw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1ut7VK-0000000DGsk-2JvS;
	Mon, 01 Sep 2025 16:35:38 +0000
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1ut3oR-0000000CYCS-1D0G
	for linux-phy@lists.infradead.org;
	Mon, 01 Sep 2025 12:39:09 +0000
Received: from pps.filterd (m0279870.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 581B4DOH008825
	for <linux-phy@lists.infradead.org>; Mon, 1 Sep 2025 12:39:06 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	Ag+uc2sfSISlJdM0Nw82xpwB7MNtUR0GdzbeqIRcIGA=; b=WkV3fYSIlVrcFM2Q
	IZe+oZy7wvsT7uLcQpkSKNJpdIfj5VXYmI5Bf4jwrwSjZHOZLvxx283DBy8YoJ5Z
	o5N0LHt97jEiriRn8qt/G/apE6Bxg5XEHB2DXDp83U/EM6jhzeDSDyB+9+AIww6X
	Db0gDmfkYh7DR1QWBFvD3iOrTmLTzBbYWHKBB9eDNFilJcur074t5jsncIa4Pf8g
	17uq7FUtQ4KvRqMv/9TJUvWwW6DlcVAmFcQl1zWcoCpCVRvlQrzmapq2D7zhD4j+
	e1S5WXiIubJsugnSCXjw7PiipAnBrcEIzuFIW3gTi1+x7NrByEIeRTscDdb5JcPq
	SqPptQ==
Received: from mail-pl1-f198.google.com (mail-pl1-f198.google.com [209.85.214.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 48uscuvtkv-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Mon, 01 Sep 2025 12:39:06 +0000 (GMT)
Received: by mail-pl1-f198.google.com with SMTP id d9443c01a7336-244581a191bso7110995ad.2
        for <linux-phy@lists.infradead.org>; Mon, 01 Sep 2025 05:39:06 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1756730345; x=1757335145;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to:subject
         :user-agent:mime-version:date:message-id:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=Ag+uc2sfSISlJdM0Nw82xpwB7MNtUR0GdzbeqIRcIGA=;
        b=em2djeY+w6RkphfqkSfVPx7ERB+Qo0bFpQkqVm9QYCEHk+pEg5CzQojEYvDU8XmD7Q
         ExOns0dY7XOSsq3mRTW561LHyT8OW2BwUPpIZJ7yM8J2Aa7lL9iP4iTGGvfbeJ7DSqUQ
         VzvnGuiSMKZ0QNZobkakUOO2QmoX3WKIk1OZt7WQN301sdVmoSh384pahTCzrgG0oxtz
         p/0mNwocivdxaRgBZeGKyy4VwAH68NR+334J59mJ0g7H69XulYXALTi6BqjHq4otyCun
         nEJEe3htYEoatYhIP6IyInXwXry2iTcf667DTZNqO4Zx5mNV90cegDmSAsrZdPqj83qP
         +m3g==
X-Forwarded-Encrypted: i=1; AJvYcCWYUCsW7DCT/4+RTJVzYt7FClPDXRlI/F8gCH2z3ED1vGmcRFpBlkDgO/cIuuqDnG2rYTaQMS7cuqc=@lists.infradead.org
X-Gm-Message-State: AOJu0Yz7kaRNO+gzlmkk1nEzTtQfZLbGit2YmZ8f1pxxDPZ5CQgSSI94
	252Gy/5LHaa2yXTGg9z0riDB217BBEm8LWk5VoJXZ7dE66gpiBvIE8eduxP7dJmtz56f5PQzr6i
	UVHXPcKFvianpKemghGLjPiln01Uvs7T87BU8qrRtxGsmLUWxD8VhAqr9guDDEkyvQFnT
X-Gm-Gg: ASbGnctSOWWjLd6DI/A4YZRVpKaRTPHsUD6MgXNpf2Toz4zA4fQcqUF4tyV5wnoU62d
	6vbUO5D+ha646U3wMcdTTkluxzpp6A3KwA0bhHA7Kn07CVK5Lmjdmgv4YM8MxZOP3laLUxwmWRj
	bnmvNkjWeIDMW6ILJF6s5c9KmfMKsjY7bE17I9Bj8Js0tfHKBxh5h7WounhYmtaPMWI5sAvroZ3
	GY+qTumZv2JvcJs+mQAAnx2sdmv9QOI0f63tzow7kfGt0FemTHaEGq3cmKImDkyApw0VnENw7Ko
	epKtTr83+YuPvFgvPT2T8C0MkSVl/w+Qo8m3bafHGYbV2LLqKE51+DDA2rhF95yt+T3J+YW8nv2
	7ins3Tvt4IAbUX3LtgRRn9UtyXlPMQQ==
X-Received: by 2002:a17:902:d488:b0:248:ff48:8779 with SMTP id d9443c01a7336-2491e1ed5d2mr67831035ad.2.1756730345021;
        Mon, 01 Sep 2025 05:39:05 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IGenErKxO5/yYfNFbGUt4G6q+mh/TfyItFjo8JNUx5mpoIN5ZQtB3b2C6jXNrrW8UUGRc9ZyA==
X-Received: by 2002:a17:902:d488:b0:248:ff48:8779 with SMTP id d9443c01a7336-2491e1ed5d2mr67830675ad.2.1756730344486;
        Mon, 01 Sep 2025 05:39:04 -0700 (PDT)
Received: from [10.133.33.251] (tpe-colo-wan-fw-bordernet.qualcomm.com. [103.229.16.4])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-2490658999fsm101472765ad.112.2025.09.01.05.38.58
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 01 Sep 2025 05:39:04 -0700 (PDT)
Message-ID: <04549ce5-fa14-440d-b5b9-f8ff059f632a@oss.qualcomm.com>
Date: Mon, 1 Sep 2025 20:38:56 +0800
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v3 02/14] dt-bindings: phy: Add QMP USB3+DP PHY for QCS615
To: Rob Herring <robh@kernel.org>
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
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley
 <conor+dt@kernel.org>,
        Kuogee Hsieh <quic_khsieh@quicinc.com>, Vinod Koul <vkoul@kernel.org>,
        Kishon Vijay Abraham I <kishon@kernel.org>,
        Philipp Zabel <p.zabel@pengutronix.de>, linux-arm-msm@vger.kernel.org,
        dri-devel@lists.freedesktop.org, freedreno@lists.freedesktop.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        linux-phy@lists.infradead.org, fange.zhang@oss.qualcomm.com,
        yongxing.mou@oss.qualcomm.com, tingwei.zhang@oss.qualcomm.com,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>,
        Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
References: <20250820-add-displayport-support-for-qcs615-platform-v3-0-a43bd25ec39c@oss.qualcomm.com>
 <20250820-add-displayport-support-for-qcs615-platform-v3-2-a43bd25ec39c@oss.qualcomm.com>
 <20250822142230.GA3591699-robh@kernel.org>
From: Xiangxu Yin <xiangxu.yin@oss.qualcomm.com>
In-Reply-To: <20250822142230.GA3591699-robh@kernel.org>
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwODMwMDAzMSBTYWx0ZWRfX/xyMATK3ZhWa
 1J5STK6o8wPkuOT/60K0s5jj4ILKMB9DCMSgXduoik47CSNFtb7YD7hnv8fgALx3bGuYf8cjOjP
 8jADl/3y8orODbE1CooPLu6wFeitbNZ1U7S9KoLJBQE+F3v/6hCcM29djs7uiGTrKCuv6M8KRwx
 poh7rNTRl0O7/rYdhOt5tWcAutXGZ6vnzU4GJCz1NwPM9vI6yGVTYsdWQygDfberK+zEBC+wfWF
 F/Bpw0kO+P3c34qXmpXL6rq+39Rrh/HqhXZJv4khJCdE15b95W3q8AyEJth2Kz2wszxdVokxyz9
 7ANtc3tTOiwkCJGlZg4xuMU1tqKVPY0jWP3n46iCoRRAC1RGk5po0tK+KRcYjNDFZqjx/V5xG7K
 f54TP+IV
X-Authority-Analysis: v=2.4 cv=A8xsP7WG c=1 sm=1 tr=0 ts=68b593ea cx=c_pps
 a=MTSHoo12Qbhz2p7MsH1ifg==:117 a=nuhDOHQX5FNHPW3J6Bj6AA==:17
 a=IkcTkHD0fZMA:10 a=yJojWOMRYYMA:10 a=gEfo2CItAAAA:8 a=EUspDBNiAAAA:8
 a=VwQbUJbxAAAA:8 a=mavVfetI76m9BAqSKQsA:9 a=3ZKOabzyN94A:10 a=QEXdDO2ut3YA:10
 a=GvdueXVYPmCkWapjIL-Q:22 a=sptkURWiP4Gy88Gu7hUp:22
X-Proofpoint-ORIG-GUID: HCvuNBXHXO-SU-FwDJjbfEXzZKDW7ddo
X-Proofpoint-GUID: HCvuNBXHXO-SU-FwDJjbfEXzZKDW7ddo
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-09-01_05,2025-08-28_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 adultscore=0 spamscore=0 impostorscore=0 bulkscore=0 clxscore=1015
 suspectscore=0 malwarescore=0 priorityscore=1501 phishscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.19.0-2507300000 definitions=main-2508300031
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250901_053907_448771_FD5479C4 
X-CRM114-Status: GOOD (  18.41  )
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

Ck9uIDgvMjIvMjAyNSAxMDoyMiBQTSwgUm9iIEhlcnJpbmcgd3JvdGU6Cj4gT24gV2VkLCBBdWcg
MjAsIDIwMjUgYXQgMDU6MzQ6NDRQTSArMDgwMCwgWGlhbmd4dSBZaW4gd3JvdGU6Cj4+IEFkZCBk
ZXZpY2UgdHJlZSBiaW5kaW5nIGRvY3VtZW50YXRpb24gZm9yIHRoZSBRdWFsY29tbSBRTVAgVVNC
MytEUCBQSFkKPj4gb24gUUNTNjE1IFBsYXRmb3JtLiBUaGlzIFBIWSBzdXBwb3J0cyBib3RoIFVT
QjMgYW5kIERQIGZ1bmN0aW9uYWxpdHkKPj4gb3ZlciBVU0ItQywgd2l0aCBQSFkgbW9kZSBzd2l0
Y2hpbmcgY2FwYWJpbGl0eS4gSXQgZG9lcyBub3Qgc3VwcG9ydAo+PiBjb21ibyBtb2RlLgo+Pgo+
PiBTaWduZWQtb2ZmLWJ5OiBYaWFuZ3h1IFlpbiA8eGlhbmd4dS55aW5Ab3NzLnF1YWxjb21tLmNv
bT4KPj4gLS0tCj4+ICAuLi4vYmluZGluZ3MvcGh5L3Fjb20scWNzNjE1LXFtcC11c2IzZHAtcGh5
LnlhbWwgICB8IDEwOCArKysrKysrKysrKysrKysrKysrKysKPj4gIDEgZmlsZSBjaGFuZ2VkLCAx
MDggaW5zZXJ0aW9ucygrKQo+Pgo+PiBkaWZmIC0tZ2l0IGEvRG9jdW1lbnRhdGlvbi9kZXZpY2V0
cmVlL2JpbmRpbmdzL3BoeS9xY29tLHFjczYxNS1xbXAtdXNiM2RwLXBoeS55YW1sIGIvRG9jdW1l
bnRhdGlvbi9kZXZpY2V0cmVlL2JpbmRpbmdzL3BoeS9xY29tLHFjczYxNS1xbXAtdXNiM2RwLXBo
eS55YW1sCj4+IG5ldyBmaWxlIG1vZGUgMTAwNjQ0Cj4+IGluZGV4IDAwMDAwMDAwMDAwMDAwMDAw
MDAwMDAwMDAwMDAwMDAwMDAwMDAwMDAuLmMyYjFmYmFiMjkzMGYwNjUzZjRkZGI5NWY3YjU0ZDhm
ZTk5NGY5MmQKPj4gLS0tIC9kZXYvbnVsbAo+PiArKysgYi9Eb2N1bWVudGF0aW9uL2RldmljZXRy
ZWUvYmluZGluZ3MvcGh5L3Fjb20scWNzNjE1LXFtcC11c2IzZHAtcGh5LnlhbWwKPj4gQEAgLTAs
MCArMSwxMDggQEAKPj4gKyMgU1BEWC1MaWNlbnNlLUlkZW50aWZpZXI6IChHUEwtMi4wIE9SIEJT
RC0yLUNsYXVzZSkKPj4gKyVZQU1MIDEuMgo+PiArLS0tCj4+ICskaWQ6IGh0dHA6Ly9kZXZpY2V0
cmVlLm9yZy9zY2hlbWFzL3BoeS9xY29tLHFjczYxNS1xbXAtdXNiM2RwLXBoeS55YW1sIwo+PiAr
JHNjaGVtYTogaHR0cDovL2RldmljZXRyZWUub3JnL21ldGEtc2NoZW1hcy9jb3JlLnlhbWwjCj4+
ICsKPj4gK3RpdGxlOiBRdWFsY29tbSBRTVAgVVNCMy1EUCBQSFkgY29udHJvbGxlciAoRFAsIFFD
UzYxNSkKPj4gKwo+PiArbWFpbnRhaW5lcnM6Cj4+ICsgIC0gVmlub2QgS291bCA8dmtvdWxAa2Vy
bmVsLm9yZz4KPiBObywgdGhpcyBzaG91bGQgYmUgc29tZW9uZSB3aG8gaGFzIHRoZSBoL3cuCgoK
SSBoYXZlIGRpc2N1c3NlZCB3aXRoIEJqb3JuIG9mZmxpbmUuIEluIHRoZSBuZXh0IHZlcnNpb24s
IEnigJlsbCB1cGRhdGUgbXlzZWxmIGFzCnRoZSBtYWludGFpbmVyIGZvciB0aGlzIGR0LWJpbmRp
bmcuCgoKPj4gKwo+PiArZGVzY3JpcHRpb246Cj4+ICsgIFRoZSBRTVAgUEhZIGNvbnRyb2xsZXIg
c3VwcG9ydHMgcGh5c2ljYWwgbGF5ZXIgZnVuY3Rpb25hbGl0eSBmb3IgYm90aAo+PiArICBVU0Iz
IGFuZCBEaXNwbGF5UG9ydCBvdmVyIFVTQi1DLiBXaGlsZSBpdCBlbmFibGVzIG1vZGUgc3dpdGNo
aW5nCj4+ICsgIGJldHdlZW4gVVNCMyBhbmQgRGlzcGxheVBvcnQsIGJ1dCBkb2VzIG5vdCBzdXBw
b3J0IGNvbWJvIG1vZGUuCj4gV3JhcCBhdCA4MCBjaGFycy4KCgpPaywgd2lsbCB1cGRhdGUgbmV4
dCBwYXRjaC4KCgo+PiArCj4+ICtwcm9wZXJ0aWVzOgo+PiArICBjb21wYXRpYmxlOgo+PiArICAg
IGVudW06Cj4+ICsgICAgICAtIHFjb20scWNzNjE1LXFtcC11c2IzLWRwLXBoeQo+PiArCj4+ICsg
IHJlZzoKPj4gKyAgICBtYXhJdGVtczogMQo+PiArCj4+ICsgIGNsb2NrczoKPj4gKyAgICBtYXhJ
dGVtczogMgo+PiArCj4+ICsgIGNsb2NrLW5hbWVzOgo+PiArICAgIGl0ZW1zOgo+PiArICAgICAg
LSBjb25zdDogY2ZnX2FoYgo+PiArICAgICAgLSBjb25zdDogcmVmCj4+ICsKPj4gKyAgcmVzZXRz
Ogo+PiArICAgIG1heEl0ZW1zOiAyCj4+ICsKPj4gKyAgcmVzZXQtbmFtZXM6Cj4+ICsgICAgaXRl
bXM6Cj4+ICsgICAgICAtIGNvbnN0OiBwaHlfcGh5Cj4gcGh5X3BoeT8KPgo+PiArICAgICAgLSBj
b25zdDogZHBfcGh5Cj4+ICsKPj4gKyAgdmRkYS1waHktc3VwcGx5OiB0cnVlCj4+ICsKPj4gKyAg
dmRkYS1wbGwtc3VwcGx5OiB0cnVlCj4+ICsKPj4gKyAgIiNjbG9jay1jZWxscyI6Cj4+ICsgICAg
Y29uc3Q6IDEKPj4gKyAgICBkZXNjcmlwdGlvbjoKPj4gKyAgICAgIFNlZSBpbmNsdWRlL2R0LWJp
bmRpbmdzL3BoeS9waHktcWNvbS1xbXAuaAo+PiArCj4+ICsgICIjcGh5LWNlbGxzIjoKPj4gKyAg
ICBjb25zdDogMQo+PiArICAgIGRlc2NyaXB0aW9uOgo+PiArICAgICAgU2VlIGluY2x1ZGUvZHQt
YmluZGluZ3MvcGh5L3BoeS1xY29tLXFtcC5oCj4+ICsKPj4gKyAgcWNvbSx0Y3NyLXJlZzoKPj4g
KyAgICAkcmVmOiAvc2NoZW1hcy90eXBlcy55YW1sIy9kZWZpbml0aW9ucy9waGFuZGxlLWFycmF5
Cj4+ICsgICAgaXRlbXM6Cj4+ICsgICAgICAtIGl0ZW1zOgo+PiArICAgICAgICAgIC0gZGVzY3Jp
cHRpb246IHBoYW5kbGUgdG8gVENTUiBoYXJkd2FyZSBibG9jawo+PiArICAgICAgICAgIC0gZGVz
Y3JpcHRpb246IG9mZnNldCBvZiB0aGUgVkxTIENMQU1QIHJlZ2lzdGVyCj4+ICsgICAgICAtIGl0
ZW1zOgo+PiArICAgICAgICAgIC0gZGVzY3JpcHRpb246IHBoYW5kbGUgdG8gVENTUiBoYXJkd2Fy
ZSBibG9jawo+PiArICAgICAgICAgIC0gZGVzY3JpcHRpb246IG9mZnNldCBvZiB0aGUgRFAgUEhZ
IG1vZGUgcmVnaXN0ZXIKPj4gKyAgICBkZXNjcmlwdGlvbjogQ2xhbXAgYW5kIFBIWSBtb2RlIHJl
Z2lzdGVyIHByZXNlbnQgaW4gdGhlIFRDU1IKPj4gKwo+PiArcmVxdWlyZWQ6Cj4+ICsgIC0gY29t
cGF0aWJsZQo+PiArICAtIHJlZwo+PiArICAtIGNsb2Nrcwo+PiArICAtIGNsb2NrLW5hbWVzCj4+
ICsgIC0gcmVzZXRzCj4+ICsgIC0gcmVzZXQtbmFtZXMKPj4gKyAgLSB2ZGRhLXBoeS1zdXBwbHkK
Pj4gKyAgLSB2ZGRhLXBsbC1zdXBwbHkKPj4gKyAgLSAiI2Nsb2NrLWNlbGxzIgo+PiArICAtICIj
cGh5LWNlbGxzIgo+PiArICAtIHFjb20sdGNzci1yZWcKPj4gKwo+PiArYWRkaXRpb25hbFByb3Bl
cnRpZXM6IGZhbHNlCj4+ICsKPj4gK2V4YW1wbGVzOgo+PiArICAtIHwKPj4gKyAgICAjaW5jbHVk
ZSA8ZHQtYmluZGluZ3MvY2xvY2svcWNvbSxxY3M2MTUtZ2NjLmg+Cj4+ICsgICAgI2luY2x1ZGUg
PGR0LWJpbmRpbmdzL2Nsb2NrL3Fjb20scnBtaC5oPgo+PiArCj4+ICsgICAgcGh5QDg4ZTgwMDAg
ewo+PiArICAgICAgY29tcGF0aWJsZSA9ICJxY29tLHFjczYxNS1xbXAtdXNiMy1kcC1waHkiOwo+
PiArICAgICAgcmVnID0gPDB4ODhlODAwMCAweDIwMDA+Owo+PiArCj4+ICsgICAgICBjbG9ja3Mg
PSA8JmdjYyBHQ0NfQUhCMlBIWV9XRVNUX0NMSz4sCj4+ICsgICAgICAgICAgICAgICA8JmdjYyBH
Q0NfVVNCM19TRUNfQ0xLUkVGX0NMSz47Cj4+ICsgICAgICBjbG9jay1uYW1lcyA9ICJjZmdfYWhi
IiwKPj4gKyAgICAgICAgICAgICAgICAgICAgInJlZiI7Cj4+ICsKPj4gKyAgICAgIHJlc2V0cyA9
IDwmZ2NjIEdDQ19VU0IzUEhZX1BIWV9TRUNfQkNSID4sCj4+ICsgICAgICAgICAgICAgICA8Jmdj
YyBHQ0NfVVNCM19EUF9QSFlfU0VDX0JDUj47Cj4+ICsgICAgICByZXNldC1uYW1lcyA9ICJwaHlf
cGh5IiwKPj4gKyAgICAgICAgICAgICAgICAgICAgImRwX3BoeSI7Cj4+ICsKPj4gKyAgICAgIHZk
ZGEtcGh5LXN1cHBseSA9IDwmdnJlZ19sMTFhPjsKPj4gKyAgICAgIHZkZGEtcGxsLXN1cHBseSA9
IDwmdnJlZ19sNWE+Owo+PiArCj4+ICsgICAgICAjY2xvY2stY2VsbHMgPSA8MT47Cj4+ICsgICAg
ICAjcGh5LWNlbGxzID0gPDE+Owo+PiArCj4+ICsgICAgICBxY29tLHRjc3ItcmVnID0gPCZ0Y3Ny
IDB4YmZmMD4sCj4+ICsgICAgICAgICAgICAgICAgICAgICAgPCZ0Y3NyIDB4YjI0Yz47Cj4+ICsg
ICAgfTsKPj4KPj4gLS0gCj4+IDIuMzQuMQo+PgoKLS0gCmxpbnV4LXBoeSBtYWlsaW5nIGxpc3QK
bGludXgtcGh5QGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cHM6Ly9saXN0cy5pbmZyYWRlYWQub3Jn
L21haWxtYW4vbGlzdGluZm8vbGludXgtcGh5Cg==
