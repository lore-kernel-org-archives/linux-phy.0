Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 99DE9CA0FED
	for <linux-phy@archiver.kernel.org>; Tue,  9 Sep 2025 10:10:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=bhVocc+S4R/clIIsSSSfVhn41c/4WpjQAeNBNmoHiVQ=; b=mYvoEzR05XUJXZ
	vrxPegSb+8Hv0u3dCiWw6sCikozCKcyZzRghpt94yXgElenDs+WyyuBbJZ5Afy9OZAWrzEjAY0ntB
	3MdvND/8Q/p7Sorl3MnS9hQ8gua2ItqSVc3lPowPFOFIS1KSy2K6JlXVvJ/kMZUzySL8hBMVqBxxr
	YIvVa3Ze0x5YbYb10HbDrEnevdbDZzyh3F8KKOLqPy4U1jZPexVzTKJRK5XGzwaTp5O6DHEQbMzDg
	ro2OGNvvaNYOdTv9tKtU3yUQwsZGYeKmPCsJaaEuZOa4vESdfWUIppeN5C2SqDABWw+rgzlBbfKWc
	xAQxWrV1iIqTaynvH7XA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uvvId-00000006GpR-1W9l;
	Tue, 09 Sep 2025 10:10:07 +0000
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uvtt7-00000005d9b-3wDV
	for linux-phy@lists.infradead.org;
	Tue, 09 Sep 2025 08:39:43 +0000
Received: from pps.filterd (m0279872.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 5896Spmr023595
	for <linux-phy@lists.infradead.org>; Tue, 9 Sep 2025 08:39:40 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	TDpymrykwq2D9vEJfSPg+EEbvFuEeU+GWf9UCfxacp4=; b=SamWdDe4fTtbgA9R
	SvvGuYQtNjyLflZYkoug3yceJxrIesUeSQEEtWJrQJpvjQfSWzSIBlPsD5h6IQXx
	0IrbpslAYVraUSdlu828cic2BkGX0/LrZpbvFAFQ1tcaVYm1F4x9fGNo1xxcCOZy
	BCc5vCmrgUgOCn0uVBtO4YWExFS9Zist3V6gRtOnX8paRmBWFV1ToqtlAM3opInu
	eO4xORvJRD+ZsGS0bDSiWfSbwTzRI5zlNamN17RzZyD0D7CHI1tSq+UARJ7qVmqV
	M7L6upjLJifW3ToswczWfx+DxFTyrCZSaCzUozoELgOFR6xrKT+K/I5P5GNxCyQV
	IS2jfg==
Received: from mail-pj1-f69.google.com (mail-pj1-f69.google.com [209.85.216.69])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 490db8fjrb-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Tue, 09 Sep 2025 08:39:39 +0000 (GMT)
Received: by mail-pj1-f69.google.com with SMTP id 98e67ed59e1d1-329be00e966so1441361a91.3
        for <linux-phy@lists.infradead.org>; Tue, 09 Sep 2025 01:39:39 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1757407178; x=1758011978;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to:subject
         :user-agent:mime-version:date:message-id:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=TDpymrykwq2D9vEJfSPg+EEbvFuEeU+GWf9UCfxacp4=;
        b=IKhpBKu9GwmKJqr8tRyTAX1uDvPkQdWAz58UuRmKmtKZBqrJw0y2T2Y4Xu5tZ/xV3u
         WdgLGIIhtCiV99zoTzyNsJd8ofdbfBeyKZwoqh/geTubV9yfKa8q1ZK8sZ03IfeDv+qf
         UpiyC0aWsFLIxgW9xj2TzjWLyHvpXtyt+lsxPL/L5M3ByBP2QuM6rflEo08nDf1Ibp1f
         C9KTgxcMast0nKxDhwOt6/p3JGCE5/p20sAB/DI87RJepdKV2r6WjR2vpokPwQrT7wn6
         LjiQ0fMIIrBq3kG+hn4wSaFa5uhn/HAYSn1tqDdNvGbniAyvZNc82m7Tgzv8gNP/r/7f
         a3JA==
X-Forwarded-Encrypted: i=1; AJvYcCVsryyRk7KL84bvaNhmSvs3fEo5t/dZlpGnlteoATGagoKDZBNusDYxeqaCOh8hEIxxzRCYuDodz6w=@lists.infradead.org
X-Gm-Message-State: AOJu0YxUEEWPcbWIXnY5BeAVv8jzfFM0Ic/JvkJszdFHgtb+WuCuPwlk
	7zSkazu4YjSS4uODjPB4/6or2lG8NqzNVl8FkcjXMyreXvlj32Uu9mLECganYc+9ekvI0Jns8Kv
	WGsILqpCkaRcesS9JpTnLoUYFIA0bW1dBjJBgAUCmhHwBAELVwcXmpT0HoZODo6OGV4b+
X-Gm-Gg: ASbGncuugqsjJQIDJZXHI0jogFdtSXpHsVMSR2GPfjiQNvWY11Bi9g4AXtojcydf/eQ
	k7OceqS5renXKnGV5KS7oMj+IaCvWpJdKaMVzLfWkrqs/M1T2yfLaGc52+GyNGijG7iqUcIIQpv
	iwC+EOdOWsIyiZkugQWubUpGTBRyekwhoGemgdqgr0vkBnfhIRbDZyMTgcqFrLniv5d3z0lYiQT
	zqvN+Q4ermdzZKhwzCHvO8S2iGFxa+K8+N/J6haUxQUUmrPHLxjfduYLTjW84oopbef6OaCt6WB
	q0jc2krXGs1SedcXskP8GLYM0gEnQr0USrLHiELLe3P59nXQVGzjcCG4yTguVOoHWn0AVMJgQwf
	I2pYPZlUHgonv6fJb0KGwxpfWzb0z5w==
X-Received: by 2002:a17:90b:4a92:b0:32b:87ef:5faa with SMTP id 98e67ed59e1d1-32d43f91aadmr7805298a91.4.1757407178374;
        Tue, 09 Sep 2025 01:39:38 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IF7QbVcmVO7aZqm/k5QXoWRXC9zn0nVpx+dXw+04HHeABOWQ0WWeFhtm+A8ZDuAd6zzUqgtWw==
X-Received: by 2002:a17:90b:4a92:b0:32b:87ef:5faa with SMTP id 98e67ed59e1d1-32d43f91aadmr7805263a91.4.1757407177787;
        Tue, 09 Sep 2025 01:39:37 -0700 (PDT)
Received: from [10.133.33.137] (tpe-colo-wan-fw-bordernet.qualcomm.com. [103.229.16.4])
        by smtp.gmail.com with ESMTPSA id 98e67ed59e1d1-3276f57b227sm39403466a91.6.2025.09.09.01.39.29
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 09 Sep 2025 01:39:37 -0700 (PDT)
Message-ID: <c4eeb8a8-2819-4ac5-8dc1-cce209d7cbc4@oss.qualcomm.com>
Date: Tue, 9 Sep 2025 16:39:26 +0800
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v3 01/14] dt-bindings: display/msm: dp-controller: Add
 sm6150
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
 <20250820-add-displayport-support-for-qcs615-platform-v3-1-a43bd25ec39c@oss.qualcomm.com>
 <xurpc3mk5kksx7lfpsdqgasov5gc4dpsmz6iv2hjhsp5tewbue@dvrupbjzgxle>
From: Xiangxu Yin <xiangxu.yin@oss.qualcomm.com>
In-Reply-To: <xurpc3mk5kksx7lfpsdqgasov5gc4dpsmz6iv2hjhsp5tewbue@dvrupbjzgxle>
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwOTA2MDAzMSBTYWx0ZWRfX230tS55G1ovq
 2bL61G7XPdnTXXP7qkJGPcTDnRgnuVvq2uN+YB06TIcgJY7OO2lFKAI+FmHhzau9M8N+EYHlEav
 eSEuvZZzozLDJ4V60UhbPquj8Pm1+8zh3qQdy/VhZBkumxQ+oqsa7g546UN6BC3y/M/jBycxZ5r
 +JfG++4vKfnhjpHPO3tJnEdOiRN3B/DvlEubKocQxTWwj2ZjJG+mH4q6/s51crfsqSCZxLqRh2L
 dmHVWIBFrS30PrvxZz8epaRP9qE+69XOzvvZC8wJeXUT4fznWOM8Y4Pp74JKnGKD5zqneIJPouG
 xT7eL8PCuXm/JkDDVBvxieyuXfk8FSDXnIozVP2JXqYViU4GMA5AfnpX7OW1VJasHxDCx0ymo2S
 D/EGj/CN
X-Proofpoint-ORIG-GUID: cdcoq6weOVTK8wcorP5wNtx6_hy6fQnM
X-Proofpoint-GUID: cdcoq6weOVTK8wcorP5wNtx6_hy6fQnM
X-Authority-Analysis: v=2.4 cv=VIDdn8PX c=1 sm=1 tr=0 ts=68bfe7cb cx=c_pps
 a=vVfyC5vLCtgYJKYeQD43oA==:117 a=nuhDOHQX5FNHPW3J6Bj6AA==:17
 a=IkcTkHD0fZMA:10 a=yJojWOMRYYMA:10 a=EUspDBNiAAAA:8 a=tCOpKogST-nIjDDcSvwA:9
 a=3ZKOabzyN94A:10 a=QEXdDO2ut3YA:10 a=rl5im9kqc5Lf4LNbBjHf:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1117,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-09-08_06,2025-09-08_02,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 priorityscore=1501 malwarescore=0 spamscore=0 suspectscore=0 bulkscore=0
 phishscore=0 adultscore=0 clxscore=1015 impostorscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.19.0-2507300000 definitions=main-2509060031
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250909_013942_090149_80B14D11 
X-CRM114-Status: GOOD (  20.85  )
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

Ck9uIDkvNC8yMDI1IDg6MzQgQU0sIERtaXRyeSBCYXJ5c2hrb3Ygd3JvdGU6Cj4gT24gV2VkLCBB
dWcgMjAsIDIwMjUgYXQgMDU6MzQ6NDNQTSArMDgwMCwgWGlhbmd4dSBZaW4gd3JvdGU6Cj4+IEFk
ZCBEaXNwbGF5UG9ydCBjb250cm9sbGVyIGZvciBRdWFsY29tbSBTTTYxNTAgU29DLgo+PiBXaGls
ZSBTTTYxNTAgY3VycmVudGx5IHNoYXJlcyB0aGUgc2FtZSBjb25maWd1cmF0aW9uIGFzIFNDNzE4
MCwKPj4gaXRzIGhhcmR3YXJlIGNhcGFiaWxpdGllcyBkaWZmZXIuIEV4cGxpY2l0bHkgbGlzdGlu
ZyBpdCBlbnN1cmVzIGNsYXJpdHkKPj4gYW5kIGF2b2lkcyBwb3RlbnRpYWwgaXNzdWVzIGlmIFND
NzE4MCBzdXBwb3J0IGV2b2x2ZXMgaW4gdGhlIGZ1dHVyZS4KPj4KPj4gU2lnbmVkLW9mZi1ieTog
WGlhbmd4dSBZaW4gPHhpYW5neHUueWluQG9zcy5xdWFsY29tbS5jb20+Cj4+IC0tLQo+PiAgRG9j
dW1lbnRhdGlvbi9kZXZpY2V0cmVlL2JpbmRpbmdzL2Rpc3BsYXkvbXNtL2RwLWNvbnRyb2xsZXIu
eWFtbCB8IDEgKwo+PiAgMSBmaWxlIGNoYW5nZWQsIDEgaW5zZXJ0aW9uKCspCj4+Cj4+IGRpZmYg
LS1naXQgYS9Eb2N1bWVudGF0aW9uL2RldmljZXRyZWUvYmluZGluZ3MvZGlzcGxheS9tc20vZHAt
Y29udHJvbGxlci55YW1sIGIvRG9jdW1lbnRhdGlvbi9kZXZpY2V0cmVlL2JpbmRpbmdzL2Rpc3Bs
YXkvbXNtL2RwLWNvbnRyb2xsZXIueWFtbAo+PiBpbmRleCA5OTIzYjA2NTMyM2JiYWI5OWRlNTA3
OWI2NzRhMDMxN2YzMDc0MzczLi45OTZkMDEzMmUwODRkNDAxZGI4NTAxNGExYTRlNDQ1ZDAwZDYy
ZWQ4IDEwMDY0NAo+PiAtLS0gYS9Eb2N1bWVudGF0aW9uL2RldmljZXRyZWUvYmluZGluZ3MvZGlz
cGxheS9tc20vZHAtY29udHJvbGxlci55YW1sCj4+ICsrKyBiL0RvY3VtZW50YXRpb24vZGV2aWNl
dHJlZS9iaW5kaW5ncy9kaXNwbGF5L21zbS9kcC1jb250cm9sbGVyLnlhbWwKPj4gQEAgLTI3LDYg
KzI3LDcgQEAgcHJvcGVydGllczoKPj4gICAgICAgICAgICAtIHFjb20sc2M4MjgweHAtZHAKPj4g
ICAgICAgICAgICAtIHFjb20sc2M4MjgweHAtZWRwCj4+ICAgICAgICAgICAgLSBxY29tLHNkbTg0
NS1kcAo+PiArICAgICAgICAgIC0gcWNvbSxzbTYxNTAtZHAKPiBUaGUgRFAgTVNUIGJpbmRpbmdz
IHdlcmUgQS1iJ2VkIGFuZCBSLWInZWQgYnkgUm9iLCBzbyBJIHBpY2tlZCB0aGVtIHVwCj4gaW50
byBtc20tbmV4dC1sdW1hZy4gUGxlYXNlIHJlYmFzZSB5b3VyIHBhdGNoc2V0IG9uIHRvcCBvZiBp
dCBhbmQKPiByZXNlbmQuIEF0IHRoaXMgcG9pbnQgSSdtIGludGVyZXN0ZWQgaW4gRFAgYmluZGlu
Z3MgYW5kIERQIGRyaXZlcgo+IHBhdGNoZXMsIHRoZSBQSFkgcGFydCBjYW4gY29tZSB1cCBzZXBh
cmF0ZWx5Lgo+Cj4gQXMgZm9yIHRoZSBjb21wYXRpYmlsaXRpZXMsIEkgdGhpbmsgRFAgb24gU002
MTUwIHNob3VsZCBiZSBjb21wYXRpYmxlCj4gd2l0aCBlaXRoZXIgRFAgb24gU0RNODQ1IG9yIERQ
IG9uIFNNODM1MC4gUGxlYXNlIGNob29zZSBvbmUgd2hpY2ggc3VpdHMKPiBiZXR0ZXIuCgoKU3Vy
ZSwgSeKAmWxsIHNwbGl0IG91dCB0aGUgRFAgYmluZGluZyBhbmQgY29udHJvbGxlciBjb21wYXRp
YmxlIHBhcnRzIGludG8gYcKgCnNlcGFyYXRlIHBhdGNoIHNlcmllcy4KClNETTg0NSBzZWVtcyBu
b3Qgc3VwcG9ydCB3aWRlX2J1cywgd2hpbGUgU004MzUwIGxvb2tzIGNsb3NlciB0byBTTTYxNTAu
CkJ1dCBJIG5vdGljZWQgU004MzUwIGlzIHN0aWxsIGNvbmZpZ3VyZWQgYXMgU0M3MTgwIHVuZGVy
IGRwX2Rpc3BsYXkgaW4KbXNtLW5leHQtbHVtYWfigJlzIHRvcCwgc28gdGhpcyBjaGFuZ2Ugd2ls
bCBtYWlubHkgYWJvdXQgdGhlIGJpbmRpbmcsIHJpZ2h0PwoKCj4+ICAgICAgICAgICAgLSBxY29t
LHNtODM1MC1kcAo+PiAgICAgICAgICAgIC0gcWNvbSxzbTg2NTAtZHAKPj4gICAgICAgIC0gaXRl
bXM6Cj4+Cj4+IC0tIAo+PiAyLjM0LjEKPj4KCi0tIApsaW51eC1waHkgbWFpbGluZyBsaXN0Cmxp
bnV4LXBoeUBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHBzOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9t
YWlsbWFuL2xpc3RpbmZvL2xpbnV4LXBoeQo=
