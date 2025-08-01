Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 39F0EC87FCB
	for <linux-phy@archiver.kernel.org>; Fri,  1 Aug 2025 03:58:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=p3pJu6BoCX+JXXa7ugoFWgoGv6a9AqvdHKSvncPcyjc=; b=4qepECvLAJ7VHo
	x+uVsXC2iD9K0huUz6AtJxCY3uAD4IMPEb0RBGq+OOoYdIMWIlYkOydG0VwLAXJi+nkRYp3ZtpUvq
	se/RFUhSFVqlQ1UZhnWZTLqvoSj34fYNDjSc/ancDkU9nnu+AExSRMUkF8iT9J5srezotqkfPVdnN
	Ro8/60gmYC+YENSjWsKKYSi/b8H2+HBnvvhuEz8+nwV2cqA57KL9kXIhD6RuZLQP9pmZXNcXBALrB
	U1l33ejz028jcZl+8wgGcAmilCMtAYMSSbywLMuoeELm2GKKCY5PIyMfN3BQkiZt71Yze24yKwl4F
	KNaT8d1RdYB+LsxlqROA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uhguF-00000004uGj-2KWE;
	Fri, 01 Aug 2025 03:58:07 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uhguC-00000004uGK-0I5r
	for linux-phy@lists.infradead.org;
	Fri, 01 Aug 2025 03:58:05 +0000
Received: from pps.filterd (m0279865.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 5710C9TX001423
	for <linux-phy@lists.infradead.org>; Fri, 1 Aug 2025 03:58:02 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	UO0lZMJPPhDxk7mSF7iGN6/wHbR5r3yzJBCSKwUDnJ0=; b=YhrG+NMw9LnX+yZD
	fjWuVqBI0etONNwrCljiYvVBZjGAO5LegkXcnHxSO2IFXP55OMppPjMbGGo44s8j
	Q1QZ/FZZCBADYFR7s2A3LTD/iJzC42AJtTmFQ+BU4Lyq/AKUs7OnkBdBxm1ll+UV
	RxFO/5YdrSEaS8qV7ydKLbmFYrOdTmVJ1DKK+lx4/HNIMJ0eE/+zZmZpYBYUxO9z
	WSwHjubuq25wAHq6QUsbgEjo/Dmo1Q6IKpZIhGwlOBwZoT7x52r17DCrLRYabqAA
	Eo8q82YjQ/5oaLSyvUdMwCl/wrvEgyPeI5c5X3qGi8vnCHVghMFaRG1Wmcn+1kW4
	oh9DJg==
Received: from mail-pl1-f199.google.com (mail-pl1-f199.google.com [209.85.214.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 484nyuar0d-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Fri, 01 Aug 2025 03:58:01 +0000 (GMT)
Received: by mail-pl1-f199.google.com with SMTP id d9443c01a7336-2406e9ed431so3720995ad.0
        for <linux-phy@lists.infradead.org>; Thu, 31 Jul 2025 20:58:01 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1754020681; x=1754625481;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to:subject
         :user-agent:mime-version:date:message-id:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=UO0lZMJPPhDxk7mSF7iGN6/wHbR5r3yzJBCSKwUDnJ0=;
        b=NLjrXTzHOxQSlCPcX66oPdbq4YOSs1/jnMpZF90M0iOY5YX4m0WXGi323uflHmhiKp
         x/ewfSEv7KoiKuiWuk1GW/8vU0Ng4N3HfHOAmbXl22B7xGxOM0i9sdq4AKNRqBgwroTm
         H+PZ0NpK0d2ZjZGsxQM0ElzhmoJqnaeM9+F5l0ILVwl42jq0zQj72AfG6lxsgEIzLl07
         17tOVpgR0YML2byuA1WXEypt2bY/drETHQpFsJTCG+54qF13F2BN95Rrnymccxf/ccpX
         DXf77UExba1yev5rJrT0T8uxP9gF5aojc7vtxKr3FbioqntkwqjlXhNl9Is49Kv1fyIx
         BVWQ==
X-Forwarded-Encrypted: i=1; AJvYcCXz3q1lCQHlNNEBjslHT5mayFQp7BvBUE/mY3HLdOSZ8ArJNeK03N9giQIz2bZ9LTBq6onqANCFjVE=@lists.infradead.org
X-Gm-Message-State: AOJu0YyAYEGywR+GJme82OvYG/5mNjis27edb0jxfQ01ORnBfPB1yCCg
	u4upQ7uIyK9w0if/1WqXthTmjDwBN///W2F943yEtjyB4uVVG8JyyBza4IvJe3GPvR9FzcjInQb
	hKtOoo04UyoAhQ2UfuLD4bsT+Podoh8V4yhMceoSqJ5xsbsY/TjBQeaPm4UrL7XPNr3Xd
X-Gm-Gg: ASbGnctD4sDRRgflc7YjY6WFU6PqdFon9Ym5QNPXmyy1UFmuU9zgMv24EhejIuzIby5
	z15ebN2Sj8AxhdK2ZJbNRngUsHRKj7cYyy1syudGUmB5u+HR3ri+nZ9QfdZ2JTLy8I4O3AMkpxB
	/PMQScBchdTRkRo6mkh82Ol/+M/DG9XECg6VFkCRq6eDyy6ZJCbO7t6oNrzdy00GDfU8ZlmNWTq
	Wie6BWbcnSMFQuKqXHXYhcxbroSxsUYmj4BN2rlBTJPiQDVyQWknXmi+XnPpqdweuaVxZuq27OL
	XEnmWk0VT2zrk3CYNGUhs1M9gXYkIPdMPIC8yQxG9yCkUnTQ1KnKD+g/lfv4KRDtM9zXSne2YRK
	3q4hsUAFRwEThHTEVNOc6xhenjTkikQ==
X-Received: by 2002:a17:903:1c6:b0:240:b9c0:bc6f with SMTP id d9443c01a7336-240b9c0bebfmr11099975ad.10.1754020680551;
        Thu, 31 Jul 2025 20:58:00 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IFhXyUs6B80q8wF4GT4SaS9kVxn1ul1R0VRcy26253GED8PXnyjNS/bSUEoCCQWMZ4c4Fv3iw==
X-Received: by 2002:a17:903:1c6:b0:240:b9c0:bc6f with SMTP id d9443c01a7336-240b9c0bebfmr11099775ad.10.1754020680014;
        Thu, 31 Jul 2025 20:58:00 -0700 (PDT)
Received: from [10.133.33.149] (tpe-colo-wan-fw-bordernet.qualcomm.com. [103.229.16.4])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-241d1f0e757sm31142185ad.55.2025.07.31.20.57.53
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 31 Jul 2025 20:57:59 -0700 (PDT)
Message-ID: <2de51bf2-baed-4bf9-a40c-1681b2efcf79@oss.qualcomm.com>
Date: Fri, 1 Aug 2025 11:57:50 +0800
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 02/13] dt-bindings: phy: Add binding for QCS615
 standalone QMP DP PHY
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
        linux-arm-msm@vger.kernel.org, dri-devel@lists.freedesktop.org,
        freedreno@lists.freedesktop.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, linux-phy@lists.infradead.org,
        konrad.dybcio@oss.qualcomm.com, fange.zhang@oss.qualcomm.com,
        quic_lliu6@quicinc.com, quic_yongmou@quicinc.com
References: <20250722-add-displayport-support-for-qcs615-platform-v2-0-42b4037171f8@oss.qualcomm.com>
 <20250722-add-displayport-support-for-qcs615-platform-v2-2-42b4037171f8@oss.qualcomm.com>
 <jemfu5sy7k4a2iar55im5bhyhxzlrwpftmpqmps3b2tco7r6a2@oodls7gi45yy>
 <e673a3a3-6924-49db-9040-e34b82199a43@oss.qualcomm.com>
 <w3rwao5wbmstdyics6qhp7beulbbp5ludqkwpfsmevgqmzz3d6@u2e533zlitkr>
 <e5a3f05f-9775-4e3d-ae7d-ebbca14b4df5@oss.qualcomm.com>
 <ffdvzupefzhqq7fqtloycc3xzu57i55ths73xcjftor2cifuzr@5vhq2hfmkvda>
 <bd8f8643-a8c8-43d7-b293-acdba5ff798a@oss.qualcomm.com>
 <ad4f53eb-2f4b-4e62-a162-461de431e3de@oss.qualcomm.com>
From: Xiangxu Yin <xiangxu.yin@oss.qualcomm.com>
In-Reply-To: <ad4f53eb-2f4b-4e62-a162-461de431e3de@oss.qualcomm.com>
X-Proofpoint-GUID: sYyd47aHHwcoEzmpooyVU_px47hzg32Q
X-Proofpoint-ORIG-GUID: sYyd47aHHwcoEzmpooyVU_px47hzg32Q
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwODAxMDAyNiBTYWx0ZWRfX5FFoJXU7UkyA
 Rta2VP5oMGiowxYlx1w0XDl8g9VaPBacrM6odlb4Wbf8o4rURAw8KTBw3YvD28o1qW05kPNmnWc
 PqMdUWSBhW2aniGXNd9/wMD6GyQ+ownY4gxqF4qmJB+5dSRpCPc33NCCsIyglnLHEZ4lP7dx933
 JgR1Q2WjbwDM5hoBqOhKQUWH6VKKoSa4Z3bbh6RXTnhcZobV3huIQ0gSkswDRKibexktJJICJRO
 UF2IiZ/XsUWPcTrDSKO9yuZpT3DQQXnVzRzj01IucFN+WA/rmZytWVDUtUEEZcClOpvn6DDuXa5
 1NHlxvPGX7lkGGbAloQCpvJt0EuRzlmunTrtVvvc83F69gOwR/nci6UJm+q4RZ0hclLWoCw/0In
 WNfkqb1TLy7v556ksjy9jbZxqBj0oYgmGQagHw5Z79e9p2RTPW8fb+kuiKoOjjLuyyPw7XwV
X-Authority-Analysis: v=2.4 cv=CLoqXQrD c=1 sm=1 tr=0 ts=688c3b49 cx=c_pps
 a=JL+w9abYAAE89/QcEU+0QA==:117 a=nuhDOHQX5FNHPW3J6Bj6AA==:17
 a=IkcTkHD0fZMA:10 a=2OwXVqhp2XgA:10 a=Oh2cFVv5AAAA:8 a=EUspDBNiAAAA:8
 a=74qhCITlYKpdjXRJ2hIA:9 a=3ZKOabzyN94A:10 a=QEXdDO2ut3YA:10
 a=324X-CrmTo6CU4MGRt3R:22 a=7KeoIwV6GZqOttXkcoxL:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-07-31_04,2025-07-31_03,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 mlxscore=0 adultscore=0 suspectscore=0 mlxlogscore=999 spamscore=0
 priorityscore=1501 phishscore=0 lowpriorityscore=0 malwarescore=0 bulkscore=0
 clxscore=1015 impostorscore=0 classifier=spam authscore=0 authtc=n/a authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.19.0-2505280000
 definitions=main-2508010026
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250731_205804_139302_13A3A1A6 
X-CRM114-Status: GOOD (  37.43  )
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

Ck9uIDgvMS8yMDI1IDE6MTMgQU0sIERtaXRyeSBCYXJ5c2hrb3Ygd3JvdGU6Cj4gT24gMzEvMDcv
MjAyNSAwODowNiwgWGlhbmd4dSBZaW4gd3JvdGU6Cj4+Cj4+IE9uIDcvMzEvMjAyNSAyOjM1IEFN
LCBEbWl0cnkgQmFyeXNoa292IHdyb3RlOgo+Pj4gT24gV2VkLCBKdWwgMzAsIDIwMjUgYXQgMDQ6
NTM6MTZQTSArMDgwMCwgWGlhbmd4dSBZaW4gd3JvdGU6Cj4+Pj4gT24gNy8yMi8yMDI1IDg6NDEg
UE0sIERtaXRyeSBCYXJ5c2hrb3Ygd3JvdGU6Cj4+Pj4+IE9uIFR1ZSwgSnVsIDIyLCAyMDI1IGF0
IDA4OjA1OjA2UE0gKzA4MDAsIFhpYW5neHUgWWluIHdyb3RlOgo+Pj4+Pj4gT24gNy8yMi8yMDI1
IDQ6MzggUE0sIERtaXRyeSBCYXJ5c2hrb3Ygd3JvdGU6Cj4+Pj4+Pj4gT24gVHVlLCBKdWwgMjIs
IDIwMjUgYXQgMDM6MjI6MDNQTSArMDgwMCwgWGlhbmd4dSBZaW4gd3JvdGU6Cj4+Pj4+Pj4+IElu
dHJvZHVjZSBkZXZpY2UgdHJlZSBiaW5kaW5nIGRvY3VtZW50YXRpb24gZm9yIHRoZSBRdWFsY29t
bSBRTVAgRFAgUEhZCj4+Pj4+Pj4+IG9uIFFDUzYxNSBTb0NzLiBUaGlzIFBIWSBzdXBwb3J0cyBE
aXNwbGF5UG9ydCBmdW5jdGlvbmFsaXR5IGFuZCBpcwo+Pj4+Pj4+PiBkZXNpZ25lZCB0byBvcGVy
YXRlIGluZGVwZW5kZW50bHkgZnJvbSB0aGUgVVNCMyBQSFkuCj4+Pj4+Pj4+Cj4+Pj4+Pj4+IFVu
bGlrZSBjb21ibyBQSFlzIGZvdW5kIG9uIG90aGVyIHBsYXRmb3JtcywgdGhlIFFDUzYxNSBEUCBQ
SFkgaXMKPj4+Pj4+Pj4gc3RhbmRhbG9uZSBhbmQgZG9lcyBub3Qgc3VwcG9ydCBVU0IvRFAgbXVs
dGlwbGV4aW5nLiBUaGUgYmluZGluZwo+Pj4+Pj4+PiBkZXNjcmliZXMgdGhlIHJlcXVpcmVkIGNs
b2NrcywgcmVzZXRzLCBUQ1NSIGNvbmZpZ3VyYXRpb24sIGFuZCBjbG9jay9QSFkKPj4+Pj4+Pj4g
Y2VsbHMgZm9yIHByb3BlciBpbnRlZ3JhdGlvbi4KPj4+Pj4+PiBTaW1wbHkgcHV0OiBubywgdGhp
cyBpcyBub3QgY29ycmVjdC4gRXZlbiBpZiB5b3UgZ28gdG8gdGhlIFNNNjE1MCBibG9jawo+Pj4+
Pj4+IGRpYWdyYW0sIGl0IHBvaW50cyBvdXQgdGhhdCBEUCB1c2VzIHRoZSBVU0IzIFBIWSwgbm90
IGEgc2VwYXJhdGUgRFAgUEhZLgo+Pj4+Pj4+Cj4+Pj4+Pj4gSSB0aG91Z2h0IHRoYXQgd2UgaGF2
ZSBkaXNjdXNzZWQgaXQgYmVmb3JlaGFuZC4KPj4+Pj4+Pgo+Pj4+Pj4+IEkgY2FuIHF1b3RlIG15
IGNvbW1lbnQgZnJvbSB0aGUgcHJldmlvdXMgdGhyZWFkOgo+Pj4+Pj4+Cj4+Pj4+Pj4+PiBOby4g
SXQgbWVhbnMgcmVwbGFjaW5nIGV4dGVuZGluZyBleGlzdGluZyBlbnRyaWVzIHdpdGggYmlnZ2Vy
IHJlZyBhbmQKPj4+Pj4+Pj4+ICNwaHktY2VsbHMgPSA8MT4uIFRoZSBkcml2ZXIgbXVzdCBrZWVw
IHdvcmtpbmcgd2l0aCBvbGQgbm9kZSBkZWZpbml0aW9ucwo+Pj4+Pj4+Pj4gYXMgaXMgdG8gZW5z
dXJlIGJhY2t3YXJkcyBjb21wYXRpYmlsaXR5LiBOZXcgbm9kZXMgc2hvdWxkIG1ha2UgaXQKPj4+
Pj4+Pj4+IHJlZ2lzdGVyIHR3byBQSFlzIChVU0IzIGFuZCBEUCkuIE9uIHRoZSBkcml2ZXIgc2lk
ZSBtb2RpZnkgZ2VuZXJpYyBjb2RlCj4+Pj4+Pj4+PiBwYXRocywgYWxsIHBsYXRmb3JtcyBzdXBw
b3J0ZWQgYnkgdGhlIGRyaXZlciBzaG91bGQgYmUgYWJsZSB0byBzdXBwb3J0Cj4+Pj4+Pj4+PiBV
U0IzK0RQIGNvbWJpbmF0aW9uLgo+Pj4+Pj4+IExvb2tpbmcgYXQgdGhlIGhhcmR3YXJlIG1lbW9y
eSBtYXBzOgo+Pj4+Pj4+Cj4+Pj4+Pj4gTVNNODk5ODogVVNCMyBQSFkgcmVncyBhdCAweGMwMTAw
MDAsIERQIFBIWSByZWdzIGF0IDB4YzAxMTAwMAo+Pj4+Pj4+IFNETTY2MDogVVNCMyBQSFkgcmVn
cyBhdCAweGMwMTAwMDAsIERQIFBIWSByZWdzIGF0IDB4YzAxMTAwMAo+Pj4+Pj4+IFFDTTIyOTA6
IFVTQjMgUEhZIHJlZ3MgYXQgMHgxNjE1MDAwLCBEUCBQSFkgcmVncyBhdCAweDE2MTYwMDAKPj4+
Pj4+PiBTTTYxMTU6IFVTQjMgUEhZIHJlZ3MgYXQgMHgxNjE1MDAwLCBEUCBQSFkgcmVncyBhdCAw
eDE2MTYwMDAKPj4+Pj4+Pgo+Pj4+Pj4+IE5vdzoKPj4+Pj4+PiBTTTYxNTA6IFVTQjMgUEhZIHJl
Z3MgYXQgMHg4OGU2MDAwCj4+Pj4+Pj4gwqDCoMKgwqDCoMKgwqDCoCBVU0IzIFBIWSByZWdzIGF0
IDB4ODhlODAwMCwgRFAgUEhZIHJlZ3MgYXQgMHg4OGU5MDAwCj4+Pj4+Pj4KPj4+Pj4+PiBJIGRv
IG5vdCBrbm93LCB3aHkgbXNtLTQuMTQgZGlkbid0IGRlc2NyaWJlIHNlY29uZCBVU0IzIFBIWS4g
TWF5YmUgeW91Cj4+Pj4+Pj4gY2FuIGNvbW1lbnQgb24gaXQuCj4+Pj4+Pj4KPj4+Pj4+PiBCdXQg
YmFzZWQgb24gdGhhdCBsaXN0LCB0aGUgb25seSBzcGVjaWFsIGNhc2UgdGhhdCB3ZSBuZWVkIHRv
IGhhbmRsZSBpcwo+Pj4+Pj4+IHRoZSBmaXJzdCBVU0IzIFBIWSwgd2hpY2ggZG9lc24ndCBoYXZl
IGEgY29ycmVzcG9uZGluZyBEUCBQSFkgYmxvY2suIEJ1dAo+Pj4+Pj4+IGl0IHdpbGwgYmUgaGFu
ZGxlZCBhbnl3YXkgYnkgdGhlIGNvZGUgdGhhdCBpbXBsZW1lbnRzIHN1cHBvcnQgZm9yIHRoZQo+
Pj4+Pj4+IGV4aXN0aW5nIERUIGVudHJpZXMuIEFsbCBvdGhlciBoYXJkd2FyZSBibG9ja3MgYXJl
IGNvbWJvIFVTQitEUCBQSFlzLgo+Pj4+Pj4+Cj4+Pj4+Pj4gSGF2aW5nIGFsbCBvZiB0aGF0IGlu
IG1pbmQsIHBsZWFzZSwgZm9yIHYzIHBhdGNoc2V0IGltcGxlbWVudCBVU0IrRFAKPj4+Pj4+PiBz
dXBwb3J0IGluIHRoZSBwaHktcWNvbS1xbXAtdXNiYyBkcml2ZXIgYW5kIGFkZCB0aGUgZm9sbG93
aW5nIGxvZ2ljCj4+Pj4+Pj4gdGhhdCBhbHNvIHdhcyByZXF1ZXN0ZWQgaW4gdjEgcmV2aWV3Ogo+
Pj4+Pj4+Cj4+Pj4+Pj4+PiBOb3QgcXVpdGUuIEJvdGggVVNCMyBhbmQgRFAgZHJpdmVycyBzaG91
bGQgYmUgY2FsbGluZyBwb3dlcl9vbiAvIF9vZmYuCj4+Pj4+Pj4+PiBJZiBVU0IzIGlzIG9uLCBw
b3dlcmluZyBvbiBEUCBQSFkgc2hvdWxkIGZhaWwuIFZpY2UgdmVyc2EsIGlmIERQIGlzIG9uLAo+
Pj4+Pj4+Pj4gcG93ZXJpbmcgb24gVVNCIHNob3VsZCBmYWlsLgo+Pj4+Pj4+IEkgdGhpbmsgb3Vy
IHVuZGVyc3RhbmRpbmcgbWlnaHQgbm90IGJlIGZ1bGx5IGFsaWduZWQuCj4+Pj4+IEkgZGlkIG5v
dCB3cml0ZSB0aGlzLiBQbGVhc2UgZml4IHlvdXIgbWFpbGVyIHRvIHF1b3RlIG1lc3NhZ2VzIHBy
b3Blcmx5Lgo+Pj4+PiBBcyB5b3UgYXJlIHVzaW5nIFRodW5kZXJiaXJkLCBJJ20gbm90IHN1cmUg
d2hlcmUgdGhlIGlzc3VlIGNvbWVzIGZyb20uCj4+Pj4+Cj4+Pj4+IEFsc28gcGxlYXNlIGZpeCBp
dCB0byB3cmFwIHlvdXIgcmVzcG9uc2VzIHNvbXdoZXJlIGxvZ2ljYWxseS4KPj4+Pj4KPj4+Pj4+
PiBQZXJoYXBzIHRoaXMgaXMgYmVjYXVzZSBJIGRpZG7igJl0IGFjY3VyYXRlbHkgdXBkYXRlIHRo
ZSBtdXR1YWwgZXhjbHVzaW9uIHJlbGF0aW9uc2hpcHMgYW5kIHRlc3QgcmVzdWx0cyBmb3IgdGhl
IGRpZmZlcmVudCBQSFlzLgo+Pj4+Pj4+IExldCBtZSBjbGFyaWZ5IG15IGxhdGVzdCBmaW5kaW5n
cyBhbmQgZXhwbGFpbiB3aHkgSSBiZWxpZXZlIHRoZXNlIGFyZSBzZXBhcmF0ZSBQSFlzIHRoYXQg
cmVxdWlyZSBtdXR1YWwgZXhjbHVzaW9uIHZpYSBUQ1NSLgo+Pj4+Pj4+Cj4+Pj4+Pj4gMS4gQWJv
dXQgdGhlIFRDU1IgRFBfUEhZTU9ERSBSZWdpc3RlcnMKPj4+Pj4+Pgo+Pj4+Pj4+IE1TTTg5OTgv
U0RNNjYwOgo+Pj4+Pj4+IMKgwqDCoMKgT25seSBvbmUgVENTUl9VU0IzX0RQX1BIWU1PREUgcmVn
aXN0ZXIgYXQgMHgxRkNCMjQ4Lgo+Pj4+Pj4+IFFDTTIyOTAvU002MTE1Ogo+Pj4+Pj4+IMKgwqDC
oMKgVENTUl9VU0IzXzBfRFBfUEhZTU9ERSBhdCAweDNDQjI0OAo+Pj4+Pj4+IMKgwqDCoMKgVENT
Ul9VU0IzXzFfRFBfUEhZTU9ERSBhdCAweDNDQjI0Qwo+Pj4+Pj4+IFNNNjE1MDoKPj4+Pj4+PiDC
oMKgwqDCoFRDU1JfVVNCM18wX0RQX1BIWU1PREUgYXQgMHgxRkNCMjQ4Cj4+Pj4+Pj4gwqDCoMKg
wqBUQ1NSX1VTQjNfMV9EUF9QSFlNT0RFIGF0IDB4MUZDQjI0Qwo+Pj4+PiBTTTYxNTAgaGFzIHR3
byBkaWZmZXJlbnQgc2V0cyBvZiBvdXRwdXQgcGlucywgc28gdGhlIGZpcnN0IHJlZ2lzdGVyCj4+
Pj4+IGNvdmVycyBmaXJzdCBzZXQgb2YgU1MgbGFuZXMgKHdoaWNoIGFyZSByb3V0ZWQgdG8gdGhl
IGRvY3VtZW50ZWQgU1MKPj4+Pj4gUEhZKSwgdGhlIHNlY29uZCByZWdpc3RlciBjb3ZlcnMgdGhl
IHNlY29uZCBzZXQgb2YgU1MgbGFuZXMgKHdoaWNoIGFyZQo+Pj4+PiByb3V0ZWQgdG8gdGhlIERQ
IGFuZCBzZWNvbmRhcnkgVVNCIFBIWSkuCj4+Pj4+Cj4+Pj4+IEkgY2FuIG9ubHkgYXNzdW1lIHRo
YXQgdGhlIHNhbWUgY29uZmlndXJhdGlvbiB3YXMgc3VwcG9zZWQgdG8gYmUKPj4+Pj4gYXBwbGlj
YWJsZSB0byBRQ00yMjkwIC8gU002MTE1LCBidXQgd2FzIGxhdGVyIHJlbW92ZWQgLyBkaXNhYmxl
ZCwgd2hpbGUKPj4+Pj4gdGhlIHJlZ2lzdGVycyB3ZXJlIGtlcHQgaW4gdGhlIFRDU1IgYmxvY2su
Cj4+Pj4+Cj4+Pj4+Pj4gRXZlbiB0aG91Z2ggTVNNODk5OCwgU0RNNjYwLCBRQ00yMjkwLCBhbmQg
U002MTE1IGFsbCBoYXZlIG9uZSBVU0IzIFBIWSBhbmQgb25lIERQIFBIWSwgdGhlIFRDU1IgRFBf
UEhZTU9ERSByZWdpc3RlciBjb25maWd1cmF0aW9uIGlzIGRpZmZlcmVudCBvbiBlYWNoIHBsYXRm
b3JtLgo+Pj4+Pj4+Cj4+Pj4+Pj4gQWRkaXRpb25hbGx5LCBJIGZvdW5kIHNvbWUgaW50ZXJlc3Rp
bmcgcmVnaXN0ZXIgZG9jdW1lbnRhdGlvbiBmb3IgUUNNMjI5MC9TTTYxMTU6Cj4+Pj4+Pj4gwqDC
oMKgwqBUQ1NSX1VTQjNfMF9EUF9QSFlNT0RFOiDigJxJbiBrYW1vcnRhIHRoaXMgb25lIGlzIGZv
ciBtb2JpbGUgdXNiLiBEUCBub3Qgc3VwcG9ydGVkLuKAnQo+Pj4+Pj4+IMKgwqDCoMKgVENTUl9V
U0IzXzFfRFBfUEhZTU9ERTog4oCcRFAgbW9kZSBzdXBwb3J0ZWQgZm9yIEF1dG8gdXNiIGluIGth
bW9ydGEu4oCdCj4+Pj4+Pj4gSSB0aGluayB0aGUgcmVhc29uIGZvciBoYXZpbmcgdHdvIGRpZmZl
cmVudCBUQ1NSIHJlZ2lzdGVycyBpcyB0byBhbGxvdyBib3RoIHRoZSBVU0IzLjAgYW5kIERQIFBI
WXMgdG8gYmUgdXNlZHMgYXQgdGhlIHNhbWUgdGltZSBpbiBjZXJ0YWluIHByb2R1Y3QgY29uZmln
dXJhdGlvbnMuCj4+Pj4+IFN1cmUuIE9uZSBmb3IgdGhlIGZpcnN0IFBIWSAoVVNCKSwgb25lIGZv
ciB0aGUgc2Vjb25kIFBIWSAoVVNCK0RQKS4KPj4+Pj4gSWYgeW91IGNoZWNrIHRoZSBtZW1vcnkg
bWFwLCB5b3Ugd2lsbCBmaW5kIHRoZSBzZWNvbmQgVkxTIENMQU1QIHJlZ2lzdGVyCj4+Pj4+IGZv
ciB0aGUgc2Vjb25kIFVTQiBQSFkuCj4+Pj4+Cj4+Pj4+Pj4gMi4gU002MTUwIFRlc3QgUmVzdWx0
cwo+Pj4+Pj4+IFdoZW4gVENTUl9EUF9QSFlNT0RFXzAgaXMgc3dpdGNoZWQgdG8gRFAsIHRoZSBV
U0IzIHByaW1hcnkgUEhZIGNhbm5vdCB3b3JrLCBhbmQgdGhlIERQIFBIWSBpcyBhbHNvIG5vdCBm
dW5jdGlvbmFsIChwb3NzaWJseSBkdWUgdG8gY2xvY2sgbGFjayBvciBvdGhlciBjb25maWd1cmF0
aW9uIG1pc21hdGNoIHdpdGggdGhpcyBUQ1NSIHNldHRpbmcpLgo+Pj4+Pj4+IFdoZW4gVENTUl9E
UF9QSFlNT0RFXzEgaXMgc3dpdGNoZWQgdG8gRFAsIGJvdGggdGhlIFVTQjMgcHJpbWFyeSBQSFkg
YW5kIHRoZSBEUCBQSFkgd29yayBub3JtYWxseS4KPj4+Pj4+PiBJIHRoaW5rICJ3aHkgbXNtLTQu
MTQgZGlkbid0IGRlc2NyaWJlIHNlY29uZCBVU0IzIFBIWSIsIGJlY2F1c2UgVENTUl9EUF9QSFlN
T0RFXzEgYWx3YXlzIHdvcmtzIGluIERQIG1vZGUuCj4+Pj4+Pj4gaHR0cHM6Ly9hbmRyb2lkLmdv
b2dsZXNvdXJjZS5jb20va2VybmVsL21zbS8rL2FmMDNlZWY3ZDRjM2NiZDFmZTI2YzY3ZDRmMTkx
NWIwNWQwYzE0ODgvZHJpdmVycy9ncHUvZHJtL21zbS9kcC9kcF9jYXRhbG9nX3YyMDAuYwo+Pj4+
PiBIZXJlIGl0IHN0aWxsIHByb2dyYW1zIHRoZSBUQ1NSIHJlZ2lzdGVyLgo+Pj4+Pgo+Pj4+Pj4+
IEJhc2VkIG9uIHRoZXNlIGluZm8sIEkgYmVsaWV2ZSB0aGVzZSBhcmUgc2VwYXJhdGUgUEhZcywg
YW5kIG9ubHkgdGhlCj4+Pj4+Pj4gVENTUiBEUF9QSFlNT0RFIHJlZ2lzdGVycyBkZXRlcm1pbmUg
d2hpY2ggVVNCMy9EUCBQSFlzIGFyZSBwYWlyZWQgb3IKPj4+Pj4+PiBtdXR1YWxseSBleGNsdXNp
dmUuIFRoaXMgaXMgd2h5IEkgaGF2ZSBtYWludGFpbmVkIHNlcGFyYXRlIHByaXZhdGUKPj4+Pj4+
PiBkYXRhIGZvciBlYWNoIFBIWSBhbmQgaW1wbGVtZW50ZWQgUG93ZXIgb24gbXV0ZXggY29udHJv
bCB2aWEgVENTUiwKPj4+Pj4+PiByYXRoZXIgdGhhbiB1c2luZyBhIHFtcF9jb21iby1saWtlIHN0
cnVjdHVyZS4KPj4+Pj4gU3RpbGwsIG5vLiBDaGVjayB0aGUgYmxvY2sgZGlhZ3JhbSBvZiBTTTYx
NTAuCj4+Pj4+Cj4+Pj4+Pj4gR2l2ZW4gdGhlIGFib3ZlLCBkbyB5b3UgdGhpbmsgd2Ugc3RpbGwg
bmVlZCB0byBmb3JjZSBVU0IgYW5kIERQIHRvIGJlIHN0cmljdGx5IGJvdW5kIHRvZ2V0aGVyIGxp
a2UgYSBjb21ibyBQSFk/Cj4+Pj4+IFllcy4KPj4+PiBJIGNoZWNrZWQgdGhlIHJlbGF0ZWQgUEhZ
IHNlcmllcyBhbmQgYmxvY2sgZGlhZ3JhbXMgYWdhaW4uCj4+Pj4KPj4+PiBQUkkgYW5kIFNFQyBn
byB0byBkaWZmZXJlbnQgbm9kZXMgYmFzZWQgb24gdGhlIFNvQyBkZXNpZ24sIGFuZCB0aGVyZSBh
cmUgdHdvIHR5cGVzIG9mIGNvbmZpZ3VyYXRpb25zOiBVU0IzLW9ubHkgYW5kIFVTQjMrRFAgcGFp
cmluZy4KPj4+Pgo+Pj4+IEJlZm9yZSBwcm9jZWVkIHRoZSB2MyBwYXRjaHNldCwgSeKAmWQgbGlr
ZSB0byBkb3VibGUtY29uZmlybSB3aGV0aGVyIHRoZSBmb2xsb3dpbmcgc3RydWN0dXJlIGlzIHdo
YXQgeW91IGV4cGVjdDoKPj4+Pgo+Pj4+IHVzYl9xbXBwaHlfMTogcGh5QDg4ZTYwMDAgewo+Pj4+
IMKgwqDCoMKgIGNvbXBhdGlibGUgPSAicWNvbSxzbTYxNTAtcW1wLXVzYjMtcHJpbS1waHkiOyA8
PT0gcmVuYW1lIHRvIFBSSU0KPj4+IE5vLCB3ZSBhbHJlYWR5IGhhdmUgYSBjb21wYXRpYmxlIG5h
bWUgYW5kIERUIHNjaGVtYSBmb3IgdGhpcyBkZXZpY2UuCj4+IFRoZW4gY3VycmVudCBjb21wYXRp
YmxlIG5hbWUgaXMgInFjb20scWNzNjE1LXFtcC11c2IzLXBoeSIgYW5kIHNoYWxsIHdlIG5lZWQg
dXBkYXRlIHRvICJxY29tLHNtNjE1MC1xbXAtdXNiMy1waHkiPwo+Cj4gV2h5PyBZb3UgX2FscmVh
ZHlfIGhhdmUgYSBjb21wYXRpYmxlIHN0cmluZy4gWW91IGRvbid0IG5lZWQgdG8gY2hhbmdlIGl0
IGp1c3QgdG8gZm9sbG93IHRoZSBTb0MgbmFtZS7CoAo+Ck9rLCBidXQganVzdCB0byBjb25maXJt
IOKAlCBpbiB0aGlzIGNhc2UsIHRoZSBVU0IzLURQIFBIWSB3b3VsZCB1c2UgInFjb20sc202MTUw
LXFtcC11c2IzLWRwLXBoeSIgd2hpbGUgdGhlIFVTQjMtb25seSBQSFkgc3RpbGwgdXNlcyAicWNv
bSxxY3M2MTUtcW1wLXVzYjMtcGh5Ij8KClNpbmNlIGJvdGggUEhZcyBhcmUgb24gdGhlIHNhbWUg
U29DLCB3b3VsZCBpdCBtYWtlIHNlbnNlIHRvIGtlZXAgdGhlIG5hbWluZyBjb25zaXN0ZW50IGFu
ZCB1c2UgInFjb20scWNzNjE1LS4uLiIgZm9yIGJvdGg/wqAKCj4+Pgo+Pj4+IMKgwqDCoMKgIC4u
Lgo+Pj4+IMKgwqDCoMKgIHFjb20sdGNzci1yZWcgPSA8JnRjc3IgMHhiMjQ0PiwgPCZ0Y3NyIDB4
YjI0OD47Cj4+Pj4gwqDCoMKgwqAgcWNvbSx0Y3NyLW5hbWVzID0gInZsc19jbGFtcCIsICJkcF9w
aHlfbW9kZSI7Cj4+PiBObyBuZWVkIGZvciBxY29tLHRjc3ItbmFtZXMuIFNlY29uZCBUQ1NSIHJl
Z2lzdGVyIHNob3VsZCBiZSBvcHRpb25hbCBpbgo+Pj4gdGhlIGRyaXZlci4KPj4gT2suCj4+Pgo+
Pj4+IMKgwqDCoMKgIMKgwqDCoMKgICNjbG9jay1jZWxscyA9IDwxPjsKPj4+PiDCoMKgwqDCoCAj
cGh5LWNlbGxzID0gPDE+Owo+Pj4gI2Nsb2NrLWNlbGxzID0gPDA+Owo+Pj4gI3BoeS1jZWxscyA9
IDwwPjsKPj4+Cj4+Pj4gwqDCoMKgwqAgLi4uCj4+Pj4gfTsKPj4+Pgo+Pj4+IHVzYl9xbXBwaHlf
MjogcGh5QDg4ZTgwMDAgewo+Pj4+IMKgwqDCoMKgIGNvbXBhdGlibGUgPSAicWNvbSxzbTYxNTAt
cW1wLXVzYjNkcC1zZWMtcGh5IjsgPD09IFNFQyBTUywgdXNlIHVzYjNkcCB0byBpbmRpY2F0ZSBE
UCBjYXBhYmlsaXR5Cj4+PiBxY29tLHNtNjE1MC1xbXAtdXNiMy1kcC1waHkKPj4gT2ssIGJ1dCBm
b3IgdGhpcyBwYXJ0LCBzaGFsbCB3ZSB1cGRhdGUgZHQtYmluZGluZyBpbiAicWNvbSxtc204OTk4
LXFtcC11c2IzLXBoeS55YW1sIiBvciBjcmVhdGUgYSBuZXcgb25lPwo+Cj4gSSB0aGluayAoSSBt
aWdodCBiZSB3cm9uZyBoZXJlKSBuZXcgb25lcyBpcyBhIGJldHRlciBmaXQuIFdlJ2xsIG1pZ3Jh
dGUgdGhlIHJlc3Qgb2YgUEhZcyB0byBuZXcgYmluZGluZ3MgbGF0ZXIgb24uwqAKPgpPaywgSeKA
mWxsIGtlZXAgdGhlIFVTQjMtRFAgUEhZIG5vZGUgZGVmaW5pdGlvbiBpbiBhIHNlcGFyYXRlIFlB
TUwgZmlsZSBpbiB2My4KPj4+Cj4+Pj4gwqDCoMKgwqAgcmVnID0gPDB4MCAweDA4OGU4MDAwIDB4
MCAweDIwMDA+OyA8PT0gU1MyIGJhc2UgYWRkcmVzcyBhbmQgb2Zmc2V0IGRlZmluZSBpbiBkcml2
ZXIgY29uZmlnCj4+Pj4KPj4+PiDCoMKgwqDCoCBjbG9ja3MgPSA8JmdjYyBHQ0NfQUhCMlBIWV9X
RVNUX0NMSz4sCj4+Pj4gwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIDwmZ2NjIEdDQ19VU0IzX1NF
Q19DTEtSRUZfQ0xLPjsgPD09IFRoaXMgU29DIGhhcyBubyBVU0IzLjAgU0VDIFNTIGNsawo+Pj4+
IMKgwqDCoMKgIGNsb2NrLW5hbWVzID0gImNmZ19haGIiLAo+Pj4+IMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgICJyZWYiOwo+Pj4+IMKgwqDCoMKgIGNsb2NrLW91dHB1dC1uYW1lcyA9
ICJkcF9waHlfbGlua19jbGsiLAo+Pj4+IMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqAgImRwX3BoeV92Y29fZGl2X2NsayI7Cj4+PiBObyBuZWVkIHRvLCB0aGUgZHJpdmVy
IGNhbiBnZW5lcmF0ZSBuYW1lcyBvbiBpdHMgb3duLgo+PiBPay4KPj4+Cj4+Pj4gwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCDCoMKgwqDCoCByZXNldHMgPSA8JmdjYyBH
Q0NfVVNCM1BIWV9QSFlfU0VDX0JDUiA+LAo+Pj4+IMKgwqDCoMKgwqDCoMKgwqDCoCA8JmdjYyBH
Q0NfVVNCM19EUF9QSFlfU0VDX0JDUj47Cj4+Pj4gwqDCoMKgwqAgcmVzZXQtbmFtZXMgPSAicGh5
IiwgInBoeV9waHkiOwo+Pj4gInBoeV9waHkiLCAiZHBfcGh5Ii4gSXMgdGhlcmUgbm8gR0NDX1VT
QjNfUEhZX1NFQ19CQ1I/Cj4+IFRoZXJlIGFyZSBvbmx5IEdDQ19VU0IyX1BIWV9TRUNfQkNSIGFu
ZCBHQ0NfVVNCM1BIWV9QSFlfU0VDX0JDUiwgbm8gR0NDX1VTQjNfUEhZX1NFQ19CQ1IuCj4KPiBB
Y2suCj4KPj4+PiDCoMKgwqDCoCBxY29tLHRjc3ItcmVnID0gPCZ0Y3NyIDB4YmZmMD4sIDwmdGNz
ciAweGIyNGM+Owo+Pj4+IMKgwqDCoMKgIHFjb20sdGNzci1uYW1lcyA9ICJ2bHNfY2xhbXAiLCAi
ZHBfcGh5X21vZGUiOyA8PT0gYWRkZWQgZm9yIGJhY2t3YXJkIGNvbXBhdGliaWxpdHkgd2l0aCBs
ZWdhY3kgY29uZmlncyB0aGF0IG9ubHkgaGFkIHZsc19jbGFtcAo+Pj4gTm8gbmVlZCBmb3IgcWNv
bSx0Y3NyLW5hbWVzLCBjb3JyZWN0IG90aGVyd2lzZS4KPj4+Cj4+Pj4gwqDCoMKgwqAgI2Nsb2Nr
LWNlbGxzID0gPDE+Owo+Pj4+IMKgwqDCoMKgICNwaHktY2VsbHMgPSA8MT47Cj4+Pj4KPj4+PiDC
oMKgwqDCoCBzdGF0dXMgPSAiZGlzYWJsZWQiOwo+Pj4+IH07Cj4+Pj4KPj4+Pj4+Pj4gU2lnbmVk
LW9mZi1ieTogWGlhbmd4dSBZaW4gPHhpYW5neHUueWluQG9zcy5xdWFsY29tbS5jb20+Cj4+Pj4+
Pj4+IC0tLQo+Pj4+Pj4+PiDCoCAuLi4vYmluZGluZ3MvcGh5L3Fjb20scWNzNjE1LXFtcC1kcC1w
aHkueWFtbMKgwqDCoMKgwqDCoCB8IDExMSArKysrKysrKysrKysrKysrKysrKysKPj4+Pj4+Pj4g
wqAgMSBmaWxlIGNoYW5nZWQsIDExMSBpbnNlcnRpb25zKCspCj4+Pj4+Pj4+Cj4KPgoKLS0gCmxp
bnV4LXBoeSBtYWlsaW5nIGxpc3QKbGludXgtcGh5QGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cHM6
Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtcGh5Cg==
