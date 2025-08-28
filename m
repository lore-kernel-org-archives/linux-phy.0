Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 2EDCBC8303F
	for <linux-phy@archiver.kernel.org>; Thu, 28 Aug 2025 17:23:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=fZxBtOgVc43X05l3/MYRvXAZm1qJrF2HCt3CwE8Yn4k=; b=3wC1kn2Rjltl8x
	oBU904Voz18QZMR9IsDGAzD2pQbBvqjZdEiJLztC7Pnb4Cznxq8PGXeBMi6SwI5UA/nXkpyls3L4O
	kDhsj1kN3y+c+pWfwuFnq4GT7DwT/DmHQDEDcXRLn6qk1ifu2QelcgDrir2yGIMXdWyGxjF40faDN
	Hmt5ZGAe0DE6UGnkCtycLWMfMn16/i4nO+o+tK4j0kmveVckImAAL+WCKGF5xvPToSUiPVID6qZ6U
	jnKC0ILH1VVPo/MVi/+7qvYWbYZYI+P45cXl8sJRh553GWZjbhuEybK9JA6NSMk1xxYtCgceTe1E3
	ffSoAVJx2oYqUe2J2bpQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1urgLP-00000002PhO-3Rmp;
	Thu, 28 Aug 2025 17:23:27 +0000
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uraRP-00000001HOb-3bSK
	for linux-phy@lists.infradead.org;
	Thu, 28 Aug 2025 11:05:17 +0000
Received: from pps.filterd (m0279870.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 57S9UQcI005840
	for <linux-phy@lists.infradead.org>; Thu, 28 Aug 2025 11:05:14 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	GWz4EmxyWXf7dXG5o/SW5rNMyyXGmYaGBN9NZMKjXjw=; b=dkzNktIes08QLczO
	hlxo3ShN3hIS6b4EPWNK7XpY0ycS08KtG+q8doSF83aKpqd8BIjg9xWQfREPwSgH
	MQNIkYh6KYv64gvNZgoCoJKybu/BjmFW3o+p7V0K78upoKCyHZ2Bw2f6Ak14MLdK
	HGUgeeSx5sYiI6+kuCH31IWr/5fNHnVVi4iPifl//6dCEHs2spk8IfxR3r96dODv
	jfXHjwiWOdPTWCYQT7zTp+2bCJqHQQ8Xs1ZProWWlP3TLDlGCvVlz7COfXqLDPhD
	2gtdzc08CYCrgXLmuh8p25hghTl8KsKLuHAfPfMY1dahPyKzPoDYFu7Jqxb5PZrK
	EVWzdw==
Received: from mail-qv1-f69.google.com (mail-qv1-f69.google.com [209.85.219.69])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 48tbpghqes-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Thu, 28 Aug 2025 11:05:14 +0000 (GMT)
Received: by mail-qv1-f69.google.com with SMTP id 6a1803df08f44-70db892e7b2so17153696d6.1
        for <linux-phy@lists.infradead.org>; Thu, 28 Aug 2025 04:05:14 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1756379114; x=1756983914;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=GWz4EmxyWXf7dXG5o/SW5rNMyyXGmYaGBN9NZMKjXjw=;
        b=bp12mNTY6lT3PZK1j+fIFp+L50gjITmfBf3IFoLeRNTm3U71fyj2YWbu8FC4Qg9AKS
         JlDTXddL1B93uGDPjE6GzEMGT9/u86w8FoNhkXW9s97jkqV+ECdAXsPMpIDHZAQATkmN
         KIuQSjLXYckUqm9SVBtEgHGTRWTiBCAaZaoB5iPYF3pXQUbINVWVUr2TtxP7sAqnE+iq
         wjpbbYFcEeMF5ulF0eSR5zJ6wC6gFLz8kFdCo9eRt9X8NnEdJXhD5O6oxmaXwc08KgLa
         QgB9inj9cmFGhhQx3Zg25t0U6qgdASWafkjh7tJ+wXdO/Z+KCC6C24BH0V2mD/BdWofq
         3qvA==
X-Forwarded-Encrypted: i=1; AJvYcCXDWeXh3iX3p2d3pxu+AT+0KlJcriWuqs2NgkweCDM/puaFBPCwp67uMne0vk6CPAEMzwZPSI1n5Sc=@lists.infradead.org
X-Gm-Message-State: AOJu0YwQiCKBlku9S/oe2NG8CCvAc2KDKlJRULY7tkBvVNDRbiFwcBRZ
	UU0u+nvlu1FnzJINXisOyejf7QZTYvVst1RgFn+FmEZFFgh8Fmc5ebttrtwePwfSfYUwNId3mxM
	lb9WT1ZpTRec6+FPm1CCy9NMuaLmhFhWxhVZPWHDeEDlNERZ+BcGx5V1QxNA1rTq4c+Xj
X-Gm-Gg: ASbGncuq6emxjD26LrQy1wapaCdNwFWOWgrUbhiWqFZ5o77pEouWN0RVR0A6T8U52TI
	VjifbgawPlqNftgSqNiu/pc0IFx+fyt7KuURUf/j7IgGhkm4ahyyZR1Zt7qvlzYtjUp2nfz3XL2
	/zlgRS6eahREKbjckvu72EnSvCApiQBZAI44SD/z+FixkBMsipY0elcCwx79rhvnuY6/ohHQ9Em
	F78UW+FKctWDYYzMlyvcEoqm49vpf8ADhu12bxBXEnCT4kngf5r7MjGcnOd9j+Y/74huwdjKfnm
	/gRv6OarChhbGsZQHzsG1GOt2EJbQIjgKvzYGffEvkvvdi68pt+EBmRNSZTPQq3C/4yFwG15xJ1
	agAPjIYYCA0h6LworFOxPg5KVYWQIu4RCNp4hLN+I0Q4=
X-Received: by 2002:a05:6214:1312:b0:70d:9291:bdd8 with SMTP id 6a1803df08f44-70d97109866mr271525676d6.30.1756379113201;
        Thu, 28 Aug 2025 04:05:13 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IGLnBHAxYeOFUCjvzXXjJoPfriPl5kZ9soekFn2bdbrOltVRygzUC2PVtjW1wYnOgDWaHGQnQ==
X-Received: by 2002:a05:6214:1312:b0:70d:9291:bdd8 with SMTP id 6a1803df08f44-70d97109866mr271524786d6.30.1756379112368;
        Thu, 28 Aug 2025 04:05:12 -0700 (PDT)
Received: from ?IPV6:2001:14ba:a0c3:3a00::4c9? (2001-14ba-a0c3-3a00--4c9.rev.dnainternet.fi. [2001:14ba:a0c3:3a00::4c9])
        by smtp.gmail.com with ESMTPSA id 38308e7fff4ca-3365e5da244sm30163331fa.58.2025.08.28.04.05.09
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 28 Aug 2025 04:05:10 -0700 (PDT)
Message-ID: <28b33851-24eb-428f-b046-b145342fd982@oss.qualcomm.com>
Date: Thu, 28 Aug 2025 14:05:09 +0300
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v3 01/14] dt-bindings: display/msm: dp-controller: Add
 sm6150
To: Xiangxu Yin <xiangxu.yin@oss.qualcomm.com>
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
 <75ra2ofecqu6tid6kr4hnyuztpl6jjaq2ksyquafyajhq2sa4d@4tkggrdqky7y>
 <8918feef-219e-4e69-8901-367189f5066d@oss.qualcomm.com>
Content-Language: en-US
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
In-Reply-To: <8918feef-219e-4e69-8901-367189f5066d@oss.qualcomm.com>
X-Proofpoint-GUID: Xk-SlVE_ic77yvwwejUwnHADIFWdH6ye
X-Proofpoint-ORIG-GUID: Xk-SlVE_ic77yvwwejUwnHADIFWdH6ye
X-Authority-Analysis: v=2.4 cv=G7gcE8k5 c=1 sm=1 tr=0 ts=68b037ea cx=c_pps
 a=wEM5vcRIz55oU/E2lInRtA==:117 a=xqWC_Br6kY4A:10 a=IkcTkHD0fZMA:10
 a=2OwXVqhp2XgA:10 a=EUspDBNiAAAA:8 a=KSO3TaR41uafEWVwNF4A:9 a=3ZKOabzyN94A:10
 a=QEXdDO2ut3YA:10 a=OIgjcC2v60KrkQgK7BGD:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwODI3MDE5OSBTYWx0ZWRfX1OSh8uOjMZ8L
 Ik+/4iaeF4CvIVf57pE2IBpRk60pQZraZOTGvHWTRKw9Y0wIRn2IURdMfAYimhQ7ipMB1wd8n5F
 Ko5jA4/fTFTZsQ4CVwYpsxcYe1ZmME4hJKS/piYn4NpoOPWIWysoZE8n6juELYp9h14D/04syUc
 SqSIQPRYtO7OgYlMmeVZmaC8wWdbgmMyGlm2vLgHqCB+4VZkOXQPwSl2hFy7KjDqiYkqloYE/Ta
 b9HT56h5/HVEMw1vo47BIHXF/23pz0RITRnENvvJJllxhFpeiDB1eP6nBSj4FrgQZX/RpuOtfco
 0RkBcWHO/1RUvCASBDwV2YlHTHXNETwT6oMAbim04Mc2Uu45SC3Q11cvc/2TrVvG+SX6ayM33gU
 bvaATas2
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-08-28_03,2025-08-28_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 malwarescore=0 phishscore=0 priorityscore=1501 adultscore=0 impostorscore=0
 bulkscore=0 suspectscore=0 clxscore=1015 spamscore=0 classifier=typeunknown
 authscore=0 authtc= authcc= route=outbound adjust=0 reason=mlx scancount=1
 engine=8.19.0-2507300000 definitions=main-2508270199
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250828_040516_012969_9FA9A3BD 
X-CRM114-Status: GOOD (  17.56  )
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

T24gMjgvMDgvMjAyNSAwNzo1MSwgWGlhbmd4dSBZaW4gd3JvdGU6Cj4gCj4gT24gOC8yMC8yMDI1
IDY6MTggUE0sIERtaXRyeSBCYXJ5c2hrb3Ygd3JvdGU6Cj4+IE9uIFdlZCwgQXVnIDIwLCAyMDI1
IGF0IDA1OjM0OjQzUE0gKzA4MDAsIFhpYW5neHUgWWluIHdyb3RlOgo+Pj4gQWRkIERpc3BsYXlQ
b3J0IGNvbnRyb2xsZXIgZm9yIFF1YWxjb21tIFNNNjE1MCBTb0MuCj4+PiBXaGlsZSBTTTYxNTAg
Y3VycmVudGx5IHNoYXJlcyB0aGUgc2FtZSBjb25maWd1cmF0aW9uIGFzIFNDNzE4MCwKPj4+IGl0
cyBoYXJkd2FyZSBjYXBhYmlsaXRpZXMgZGlmZmVyLiBFeHBsaWNpdGx5IGxpc3RpbmcgaXQgZW5z
dXJlcyBjbGFyaXR5Cj4+PiBhbmQgYXZvaWRzIHBvdGVudGlhbCBpc3N1ZXMgaWYgU0M3MTgwIHN1
cHBvcnQgZXZvbHZlcyBpbiB0aGUgZnV0dXJlLgo+PiBJIGFzc3VtZSwgaXQgaGFzIG5vIE1TVCBz
dXBwb3J0LiBBbSBJIHJpZ2h0Pwo+IAo+IAo+ICBGcm9tIHNtNjE1MCBpcGNhdCwgSSBmb3VuZCBN
U1QtcmVsYXRlZCByZWdpc3RlcnMgYW5kIHBpeGVsMSBjbGvCoGRlZmluaXRpb24uCgpUaGVuIHBs
ZWFzZSBkZXNjcmliZSBNU1QgYXMgdGhlIG1haW4gZGlmZmVyZW5jZSBiZXR3ZWVuIFNNNjE1MCBh
bmQgClNDNzE4MCAod2hpY2ggZG9lc24ndCBoYXZlIE1TVCkuCgpBbHNvIHRoaXMgbmVlZHMgdG8g
YmUgcmViYXNlZCBvbiB0b3Agb2YgdGhlIE1TVCBiaW5kaW5ncy4gSSd2ZSBwaWNrZWQgdXAgCnRo
ZSBsYXRlc3QgcG9zdGVkIHJldmlzaW9uLCBidXQgYmFzaW5nIG9uIHRoZSBvbi1saXN0IGRpc2N1
c3Npb24gSSBtaWdodCAKbmVlZCB0byBkcm9wIGl0IGFuZCBwb3N0IGFub3RoZXIgaXRlcmF0aW9u
LgoKPiAKPiBBY2NvcmRpbmcgdG8gdGhlIGhhcmR3YXJlIHNwZWMsIE1TVCBpcyBzdXBwb3J0ZWQs
IGJ1dCBkdWUgdG8gbGltaXRhdGlvbnMgaW4gY2xvY2sgYW5kIHBpcGUgcmVzb3VyY2VzLAo+IAo+
IHRoZSBtYXhpbXVtIGNvbmN1cnJlbmN5IGNhcGFiaWxpdHkgaXMgcmVzdHJpY3RlZCB0byAxOTIw
eDEyMDBANjAgKyAxMjgweDcyMEA2MC4KPiAKPiAKPj4+IFNpZ25lZC1vZmYtYnk6IFhpYW5neHUg
WWluIDx4aWFuZ3h1LnlpbkBvc3MucXVhbGNvbW0uY29tPgo+Pj4gLS0tCj4+PiAgIERvY3VtZW50
YXRpb24vZGV2aWNldHJlZS9iaW5kaW5ncy9kaXNwbGF5L21zbS9kcC1jb250cm9sbGVyLnlhbWwg
fCAxICsKPj4+ICAgMSBmaWxlIGNoYW5nZWQsIDEgaW5zZXJ0aW9uKCspCj4+Pgo+Pj4gZGlmZiAt
LWdpdCBhL0RvY3VtZW50YXRpb24vZGV2aWNldHJlZS9iaW5kaW5ncy9kaXNwbGF5L21zbS9kcC1j
b250cm9sbGVyLnlhbWwgYi9Eb2N1bWVudGF0aW9uL2RldmljZXRyZWUvYmluZGluZ3MvZGlzcGxh
eS9tc20vZHAtY29udHJvbGxlci55YW1sCj4+PiBpbmRleCA5OTIzYjA2NTMyM2JiYWI5OWRlNTA3
OWI2NzRhMDMxN2YzMDc0MzczLi45OTZkMDEzMmUwODRkNDAxZGI4NTAxNGExYTRlNDQ1ZDAwZDYy
ZWQ4IDEwMDY0NAo+Pj4gLS0tIGEvRG9jdW1lbnRhdGlvbi9kZXZpY2V0cmVlL2JpbmRpbmdzL2Rp
c3BsYXkvbXNtL2RwLWNvbnRyb2xsZXIueWFtbAo+Pj4gKysrIGIvRG9jdW1lbnRhdGlvbi9kZXZp
Y2V0cmVlL2JpbmRpbmdzL2Rpc3BsYXkvbXNtL2RwLWNvbnRyb2xsZXIueWFtbAo+Pj4gQEAgLTI3
LDYgKzI3LDcgQEAgcHJvcGVydGllczoKPj4+ICAgICAgICAgICAgIC0gcWNvbSxzYzgyODB4cC1k
cAo+Pj4gICAgICAgICAgICAgLSBxY29tLHNjODI4MHhwLWVkcAo+Pj4gICAgICAgICAgICAgLSBx
Y29tLHNkbTg0NS1kcAo+Pj4gKyAgICAgICAgICAtIHFjb20sc202MTUwLWRwCj4+PiAgICAgICAg
ICAgICAtIHFjb20sc204MzUwLWRwCj4+PiAgICAgICAgICAgICAtIHFjb20sc204NjUwLWRwCj4+
PiAgICAgICAgIC0gaXRlbXM6Cj4+Pgo+Pj4gLS0gCj4+PiAyLjM0LjEKPj4+CgoKLS0gCldpdGgg
YmVzdCB3aXNoZXMKRG1pdHJ5CgotLSAKbGludXgtcGh5IG1haWxpbmcgbGlzdApsaW51eC1waHlA
bGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwczovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9s
aXN0aW5mby9saW51eC1waHkK
