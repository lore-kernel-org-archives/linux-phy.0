Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 15C1DC87FDA
	for <linux-phy@archiver.kernel.org>; Fri,  1 Aug 2025 07:49:48 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=kLmRuxD88PptZzMZoykYOOr/m3hgZR5MiczSrelG2K8=; b=OoRwCm6nsv1ncJ
	OHxQ5t1XtgFVoLS2A9R1NJBaIfY7taan4q6w+5AtUitY1sVm1L9Zsu1mM4JnnzPEbxKOrxYVS8/NU
	+Ay9qeRevoylULZpL4yZzM6SE1eTKOfgP/xtiimlpj5oQ8aQfOc+GQ7LIt08J5F58io9K1wBr97um
	nCzaFbdURtn6qz14fublsOAgUcKgP3MCLsAiMoveXTOtyS1fV+rkZ3dU6rHLmWyLEv27wyJFbVPvC
	SP4gJussIuituKclf8dMD8bwGY66gAx/JHVnDrM+9eJGfhNgdu9FGChVATLCCeswJXMnuGQuAoFQX
	No0QEGrhE7j3rQ9WA7SQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uhkWR-00000005Amf-3QYY;
	Fri, 01 Aug 2025 07:49:47 +0000
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uhkLr-000000059oN-1omo
	for linux-phy@lists.infradead.org;
	Fri, 01 Aug 2025 07:38:52 +0000
Received: from pps.filterd (m0279872.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 5710lnYE018840
	for <linux-phy@lists.infradead.org>; Fri, 1 Aug 2025 07:38:50 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	ZNM55YfUl9xp2ZSYJcQSU6AfmSKr/O5GZtEj4E9ArwM=; b=J3U0IvTxb5MLEnJQ
	PRrdnr/FwfRHXckOy9HIUtdMTPVCzaNvKkIUIfiRmVMUqz+PVsSSpEKebj4O7Ym9
	XlJJCriRT666zMQEXsxU+GfECmfAiTH5jEahOipKko3etXInUW6lTFI4pKLJ+IAK
	NJ2oUjByg3yYUYwJpR1FR1mhOIs608mqm2EX+EVMSWM8p4S6E/vmrJSmmGGVCngj
	YCRN0wkWAT+Iq4wwiLwtuc4tar0GdGjayrTsbSHISCuoMgAuQqQpTBUog8dBRv0k
	ptu8DaMbM+rMYMA1C/gFXv/MYDASt0d610Vxq08g8dxeyMArMDTtqd7X0wblksWT
	24akog==
Received: from mail-pj1-f69.google.com (mail-pj1-f69.google.com [209.85.216.69])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 484qdaas7e-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Fri, 01 Aug 2025 07:38:49 +0000 (GMT)
Received: by mail-pj1-f69.google.com with SMTP id 98e67ed59e1d1-31eebb88a82so572033a91.1
        for <linux-phy@lists.infradead.org>; Fri, 01 Aug 2025 00:38:49 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1754033928; x=1754638728;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to:subject
         :user-agent:mime-version:date:message-id:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=ZNM55YfUl9xp2ZSYJcQSU6AfmSKr/O5GZtEj4E9ArwM=;
        b=TEQWtPMkITlGNNWB5rHCmhQLOJIR5MtLqr9tKd7m1CUjckhlEzEAplc12bAzZVtYk3
         ekPkjN/FB0LJ4BE0aBIJANbNSs1i4jRySf39zFGXS6hMlDgMdUFTRAK6Yd8vLORkZLYs
         HcAzQSOvBUrly3cKn7Z2QTZTzydoS6s7N0az5tW06vmVEEto/5/81MoIkLr+Sgav93WC
         DqvCtLkjDY/VYtYnEodxljNrLl7j3ReZpRyIKAkI9ML6H0Auiy0+SA0g1NgkvPuQmqSZ
         F7eJ8ll+2zs4G1hg1u6T3zL1E2jfJGiID7bs+YnXrCV7X8os8zDB8woe5sASeZqnUtRV
         SCuA==
X-Forwarded-Encrypted: i=1; AJvYcCXdZX71UebDPC69g08hvJsWPwOuzpiYX2jBNMW9y2FbSfEWivzqE2lc2nrIrJWt82m45NYcFfs5WAc=@lists.infradead.org
X-Gm-Message-State: AOJu0YwGkFI88Li/YJO5X3mV2fm8iAwZBzlpxG2ezhmWtT1O+xXNvrAg
	UuqiQ09W+grmglqepKr2mB++YEzbWSNG9QNnXn6pavnSuCBmPe2ZDPmRbgs0hKmRW2pEIbU5Zzm
	6lW666uXp7pgp147CBbsclS088U5Gb23B/H6h2CTkCelkX5nurbl+uxoi0h3NFwyrXeu4
X-Gm-Gg: ASbGncubRH/Km9MI88gGBfxyOBLCa2l3ZGJGm5exg3EElHhJxnlJxNfrqhOHq+woZf6
	1pW7+GxaylmD9AO1IiJWq5J4kWmkboQku78TYY1vaA6M1UOHRPfDrePZk/N6KgQaK6a4YW2WzW3
	JRrCAlj6iRFuV7gXZmJiNbQGUofPzZd/drehudu1+NfeKsQ5nBHKdKKlInz0MTPT0yiZ+A0nqJe
	M+0Rg3Li38eV1txH83eqQ3zpebIMh+pfQ5Fl4wHZ+JB2Wf2zO8SFzR6r0S5QK/mwXHoXrLhscRF
	YoI6wXaKBR1oNSNn86U69/OdvbalZGH0xCpJrhVzZ4Hb3qTL/fWLR/GU9IDP+kHvMjoXR/YuMZY
	o0j8lVOQeDnQIei+Naozi/u1ehcpZBA==
X-Received: by 2002:a17:90b:1b48:b0:31e:cdc1:999e with SMTP id 98e67ed59e1d1-31f5dda821cmr6238975a91.1.1754033928348;
        Fri, 01 Aug 2025 00:38:48 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IHM0h4u47OKSZmyNwaHGa0yV5M9Yp5I0Yk+dyJ89VWmvfIRnuW3gw2qmcHYwbcIoh+J2GMIAQ==
X-Received: by 2002:a17:90b:1b48:b0:31e:cdc1:999e with SMTP id 98e67ed59e1d1-31f5dda821cmr6238958a91.1.1754033927851;
        Fri, 01 Aug 2025 00:38:47 -0700 (PDT)
Received: from [10.133.33.149] (tpe-colo-wan-fw-bordernet.qualcomm.com. [103.229.16.4])
        by smtp.gmail.com with ESMTPSA id 98e67ed59e1d1-3207ebc3266sm3898449a91.13.2025.08.01.00.38.41
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 01 Aug 2025 00:38:47 -0700 (PDT)
Message-ID: <80c59c45-e010-4ec2-8ec5-9ebc2884e282@oss.qualcomm.com>
Date: Fri, 1 Aug 2025 15:38:39 +0800
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
 <2de51bf2-baed-4bf9-a40c-1681b2efcf79@oss.qualcomm.com>
 <x4ozwgcti2vrgorgow6nttcjmduk5e4kkd3pjj6xfsgihk6u4n@klfpypor6ya6>
From: Xiangxu Yin <xiangxu.yin@oss.qualcomm.com>
In-Reply-To: <x4ozwgcti2vrgorgow6nttcjmduk5e4kkd3pjj6xfsgihk6u4n@klfpypor6ya6>
X-Proofpoint-ORIG-GUID: g3eWeAtnPEapOXXG3gU_QXa9uDuXtZoc
X-Authority-Analysis: v=2.4 cv=Pfv/hjhd c=1 sm=1 tr=0 ts=688c6f0a cx=c_pps
 a=vVfyC5vLCtgYJKYeQD43oA==:117 a=nuhDOHQX5FNHPW3J6Bj6AA==:17
 a=IkcTkHD0fZMA:10 a=2OwXVqhp2XgA:10 a=Oh2cFVv5AAAA:8 a=6kdnFUR2qZRIvO1OxKUA:9
 a=3ZKOabzyN94A:10 a=QEXdDO2ut3YA:10 a=rl5im9kqc5Lf4LNbBjHf:22
 a=7KeoIwV6GZqOttXkcoxL:22
X-Proofpoint-GUID: g3eWeAtnPEapOXXG3gU_QXa9uDuXtZoc
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwODAxMDA1MyBTYWx0ZWRfX1v5gbU1Rq73H
 Cy/B0ZdYQsu3K2tFIxV0MrV6Fbnvk7p3dG3t4s8Qv3GBgMbF8wdWr6hNcd/FwtfTC23te7iFVBf
 BOAv74ZBia3z5ptBT6s+asE6bKMDzr7gkmMFS+hXltT+ZW9BAbM9j0zUqZoIqtVDfqoj3XEBGxG
 Ud+BpgMx08VbQZpO2RdQKYjEo1bV3072zhrMp5thnSxoNi15oa70b06MqPLdm3XpbwzyCGANXO2
 jCXryvxI/v1pgbr4/rVPsqq4q55lFE3jtD1oO0mbFi+c2rXtQUThAIW6vau9EDdaG4mHwuPE3TU
 ayGIvMOrmCwCmwXkDwqkIy4/Hsn9o0vUnTbMk3gSLe5Pgzk6CYhu6zQgJCUxMqdvgCAxwtV+8UI
 Tm6eJRk6478fGa0W7cV9WIM5+fM5IiCvhP0LNWD0z//UzQWEqiZwM/u4P0rBAFj2DnbsWxJb
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-08-01_02,2025-07-31_03,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 mlxlogscore=999 clxscore=1015 adultscore=0 priorityscore=1501 mlxscore=0
 spamscore=0 suspectscore=0 phishscore=0 lowpriorityscore=0 malwarescore=0
 impostorscore=0 bulkscore=0 classifier=spam authscore=0 authtc=n/a authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.19.0-2505280000
 definitions=main-2508010053
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250801_003851_612030_AF1D7986 
X-CRM114-Status: GOOD (  35.44  )
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

Ck9uIDgvMS8yMDI1IDM6MzAgUE0sIERtaXRyeSBCYXJ5c2hrb3Ygd3JvdGU6Cj4gT24gRnJpLCBB
dWcgMDEsIDIwMjUgYXQgMTE6NTc6NTBBTSArMDgwMCwgWGlhbmd4dSBZaW4gd3JvdGU6Cj4+IE9u
IDgvMS8yMDI1IDE6MTMgQU0sIERtaXRyeSBCYXJ5c2hrb3Ygd3JvdGU6Cj4+PiBPbiAzMS8wNy8y
MDI1IDA4OjA2LCBYaWFuZ3h1IFlpbiB3cm90ZToKPj4+PiBPbiA3LzMxLzIwMjUgMjozNSBBTSwg
RG1pdHJ5IEJhcnlzaGtvdiB3cm90ZToKPj4+Pj4gT24gV2VkLCBKdWwgMzAsIDIwMjUgYXQgMDQ6
NTM6MTZQTSArMDgwMCwgWGlhbmd4dSBZaW4gd3JvdGU6Cj4+Pj4+PiBPbiA3LzIyLzIwMjUgODo0
MSBQTSwgRG1pdHJ5IEJhcnlzaGtvdiB3cm90ZToKPj4+Pj4+PiBPbiBUdWUsIEp1bCAyMiwgMjAy
NSBhdCAwODowNTowNlBNICswODAwLCBYaWFuZ3h1IFlpbiB3cm90ZToKPj4+Pj4+Pj4gT24gNy8y
Mi8yMDI1IDQ6MzggUE0sIERtaXRyeSBCYXJ5c2hrb3Ygd3JvdGU6Cj4+Pj4+Pj4+PiBPbiBUdWUs
IEp1bCAyMiwgMjAyNSBhdCAwMzoyMjowM1BNICswODAwLCBYaWFuZ3h1IFlpbiB3cm90ZToKPj4+
Pj4+Pj4+PiBJbnRyb2R1Y2UgZGV2aWNlIHRyZWUgYmluZGluZyBkb2N1bWVudGF0aW9uIGZvciB0
aGUgUXVhbGNvbW0gUU1QIERQIFBIWQo+Pj4+Pj4+Pj4+IG9uIFFDUzYxNSBTb0NzLiBUaGlzIFBI
WSBzdXBwb3J0cyBEaXNwbGF5UG9ydCBmdW5jdGlvbmFsaXR5IGFuZCBpcwo+Pj4+Pj4+Pj4+IGRl
c2lnbmVkIHRvIG9wZXJhdGUgaW5kZXBlbmRlbnRseSBmcm9tIHRoZSBVU0IzIFBIWS4KPj4+Pj4+
Pj4+Pgo+Pj4+Pj4+Pj4+IFVubGlrZSBjb21ibyBQSFlzIGZvdW5kIG9uIG90aGVyIHBsYXRmb3Jt
cywgdGhlIFFDUzYxNSBEUCBQSFkgaXMKPj4+Pj4+Pj4+PiBzdGFuZGFsb25lIGFuZCBkb2VzIG5v
dCBzdXBwb3J0IFVTQi9EUCBtdWx0aXBsZXhpbmcuIFRoZSBiaW5kaW5nCj4+Pj4+Pj4+Pj4gZGVz
Y3JpYmVzIHRoZSByZXF1aXJlZCBjbG9ja3MsIHJlc2V0cywgVENTUiBjb25maWd1cmF0aW9uLCBh
bmQgY2xvY2svUEhZCj4+Pj4+Pj4+Pj4gY2VsbHMgZm9yIHByb3BlciBpbnRlZ3JhdGlvbi4KPj4+
Pj4+Pj4+IFNpbXBseSBwdXQ6IG5vLCB0aGlzIGlzIG5vdCBjb3JyZWN0LiBFdmVuIGlmIHlvdSBn
byB0byB0aGUgU002MTUwIGJsb2NrCj4+Pj4+Pj4+PiBkaWFncmFtLCBpdCBwb2ludHMgb3V0IHRo
YXQgRFAgdXNlcyB0aGUgVVNCMyBQSFksIG5vdCBhIHNlcGFyYXRlIERQIFBIWS4KPj4+Pj4+Pj4+
Cj4+Pj4+Pj4+PiBJIHRob3VnaHQgdGhhdCB3ZSBoYXZlIGRpc2N1c3NlZCBpdCBiZWZvcmVoYW5k
Lgo+Pj4+Pj4+Pj4KPj4+Pj4+Pj4+IEkgY2FuIHF1b3RlIG15IGNvbW1lbnQgZnJvbSB0aGUgcHJl
dmlvdXMgdGhyZWFkOgo+Pj4+Pj4+Pj4KPj4+Pj4+Pj4+Pj4gTm8uIEl0IG1lYW5zIHJlcGxhY2lu
ZyBleHRlbmRpbmcgZXhpc3RpbmcgZW50cmllcyB3aXRoIGJpZ2dlciByZWcgYW5kCj4+Pj4+Pj4+
Pj4+ICNwaHktY2VsbHMgPSA8MT4uIFRoZSBkcml2ZXIgbXVzdCBrZWVwIHdvcmtpbmcgd2l0aCBv
bGQgbm9kZSBkZWZpbml0aW9ucwo+Pj4+Pj4+Pj4+PiBhcyBpcyB0byBlbnN1cmUgYmFja3dhcmRz
IGNvbXBhdGliaWxpdHkuIE5ldyBub2RlcyBzaG91bGQgbWFrZSBpdAo+Pj4+Pj4+Pj4+PiByZWdp
c3RlciB0d28gUEhZcyAoVVNCMyBhbmQgRFApLiBPbiB0aGUgZHJpdmVyIHNpZGUgbW9kaWZ5IGdl
bmVyaWMgY29kZQo+Pj4+Pj4+Pj4+PiBwYXRocywgYWxsIHBsYXRmb3JtcyBzdXBwb3J0ZWQgYnkg
dGhlIGRyaXZlciBzaG91bGQgYmUgYWJsZSB0byBzdXBwb3J0Cj4+Pj4+Pj4+Pj4+IFVTQjMrRFAg
Y29tYmluYXRpb24uCj4+Pj4+Pj4+PiBMb29raW5nIGF0IHRoZSBoYXJkd2FyZSBtZW1vcnkgbWFw
czoKPj4+Pj4+Pj4+Cj4+Pj4+Pj4+PiBNU004OTk4OiBVU0IzIFBIWSByZWdzIGF0IDB4YzAxMDAw
MCwgRFAgUEhZIHJlZ3MgYXQgMHhjMDExMDAwCj4+Pj4+Pj4+PiBTRE02NjA6IFVTQjMgUEhZIHJl
Z3MgYXQgMHhjMDEwMDAwLCBEUCBQSFkgcmVncyBhdCAweGMwMTEwMDAKPj4+Pj4+Pj4+IFFDTTIy
OTA6IFVTQjMgUEhZIHJlZ3MgYXQgMHgxNjE1MDAwLCBEUCBQSFkgcmVncyBhdCAweDE2MTYwMDAK
Pj4+Pj4+Pj4+IFNNNjExNTogVVNCMyBQSFkgcmVncyBhdCAweDE2MTUwMDAsIERQIFBIWSByZWdz
IGF0IDB4MTYxNjAwMAo+Pj4+Pj4+Pj4KPj4+Pj4+Pj4+IE5vdzoKPj4+Pj4+Pj4+IFNNNjE1MDog
VVNCMyBQSFkgcmVncyBhdCAweDg4ZTYwMDAKPj4+Pj4+Pj4+IMKgwqDCoMKgwqDCoMKgwqAgVVNC
MyBQSFkgcmVncyBhdCAweDg4ZTgwMDAsIERQIFBIWSByZWdzIGF0IDB4ODhlOTAwMAo+Pj4+Pj4+
Pj4KPj4+Pj4+Pj4+IEkgZG8gbm90IGtub3csIHdoeSBtc20tNC4xNCBkaWRuJ3QgZGVzY3JpYmUg
c2Vjb25kIFVTQjMgUEhZLiBNYXliZSB5b3UKPj4+Pj4+Pj4+IGNhbiBjb21tZW50IG9uIGl0Lgo+
Pj4+Pj4+Pj4KPj4+Pj4+Pj4+IEJ1dCBiYXNlZCBvbiB0aGF0IGxpc3QsIHRoZSBvbmx5IHNwZWNp
YWwgY2FzZSB0aGF0IHdlIG5lZWQgdG8gaGFuZGxlIGlzCj4+Pj4+Pj4+PiB0aGUgZmlyc3QgVVNC
MyBQSFksIHdoaWNoIGRvZXNuJ3QgaGF2ZSBhIGNvcnJlc3BvbmRpbmcgRFAgUEhZIGJsb2NrLiBC
dXQKPj4+Pj4+Pj4+IGl0IHdpbGwgYmUgaGFuZGxlZCBhbnl3YXkgYnkgdGhlIGNvZGUgdGhhdCBp
bXBsZW1lbnRzIHN1cHBvcnQgZm9yIHRoZQo+Pj4+Pj4+Pj4gZXhpc3RpbmcgRFQgZW50cmllcy4g
QWxsIG90aGVyIGhhcmR3YXJlIGJsb2NrcyBhcmUgY29tYm8gVVNCK0RQIFBIWXMuCj4+Pj4+Pj4+
Pgo+Pj4+Pj4+Pj4gSGF2aW5nIGFsbCBvZiB0aGF0IGluIG1pbmQsIHBsZWFzZSwgZm9yIHYzIHBh
dGNoc2V0IGltcGxlbWVudCBVU0IrRFAKPj4+Pj4+Pj4+IHN1cHBvcnQgaW4gdGhlIHBoeS1xY29t
LXFtcC11c2JjIGRyaXZlciBhbmQgYWRkIHRoZSBmb2xsb3dpbmcgbG9naWMKPj4+Pj4+Pj4+IHRo
YXQgYWxzbyB3YXMgcmVxdWVzdGVkIGluIHYxIHJldmlldzoKPj4+Pj4+Pj4+Cj4+Pj4+Pj4+Pj4+
IE5vdCBxdWl0ZS4gQm90aCBVU0IzIGFuZCBEUCBkcml2ZXJzIHNob3VsZCBiZSBjYWxsaW5nIHBv
d2VyX29uIC8gX29mZi4KPj4+Pj4+Pj4+Pj4gSWYgVVNCMyBpcyBvbiwgcG93ZXJpbmcgb24gRFAg
UEhZIHNob3VsZCBmYWlsLiBWaWNlIHZlcnNhLCBpZiBEUCBpcyBvbiwKPj4+Pj4+Pj4+Pj4gcG93
ZXJpbmcgb24gVVNCIHNob3VsZCBmYWlsLgo+Pj4+Pj4+Pj4gSSB0aGluayBvdXIgdW5kZXJzdGFu
ZGluZyBtaWdodCBub3QgYmUgZnVsbHkgYWxpZ25lZC4KPj4+Pj4+PiBJIGRpZCBub3Qgd3JpdGUg
dGhpcy4gUGxlYXNlIGZpeCB5b3VyIG1haWxlciB0byBxdW90ZSBtZXNzYWdlcyBwcm9wZXJseS4K
Pj4+Pj4+PiBBcyB5b3UgYXJlIHVzaW5nIFRodW5kZXJiaXJkLCBJJ20gbm90IHN1cmUgd2hlcmUg
dGhlIGlzc3VlIGNvbWVzIGZyb20uCj4+Pj4+Pj4KPj4+Pj4+PiBBbHNvIHBsZWFzZSBmaXggaXQg
dG8gd3JhcCB5b3VyIHJlc3BvbnNlcyBzb213aGVyZSBsb2dpY2FsbHkuCj4+Pj4+Pj4KPj4+Pj4+
Pj4+IFBlcmhhcHMgdGhpcyBpcyBiZWNhdXNlIEkgZGlkbuKAmXQgYWNjdXJhdGVseSB1cGRhdGUg
dGhlIG11dHVhbCBleGNsdXNpb24gcmVsYXRpb25zaGlwcyBhbmQgdGVzdCByZXN1bHRzIGZvciB0
aGUgZGlmZmVyZW50IFBIWXMuCj4+Pj4+Pj4+PiBMZXQgbWUgY2xhcmlmeSBteSBsYXRlc3QgZmlu
ZGluZ3MgYW5kIGV4cGxhaW4gd2h5IEkgYmVsaWV2ZSB0aGVzZSBhcmUgc2VwYXJhdGUgUEhZcyB0
aGF0IHJlcXVpcmUgbXV0dWFsIGV4Y2x1c2lvbiB2aWEgVENTUi4KPj4+Pj4+Pj4+Cj4+Pj4+Pj4+
PiAxLiBBYm91dCB0aGUgVENTUiBEUF9QSFlNT0RFIFJlZ2lzdGVycwo+Pj4+Pj4+Pj4KPj4+Pj4+
Pj4+IE1TTTg5OTgvU0RNNjYwOgo+Pj4+Pj4+Pj4gwqDCoMKgwqBPbmx5IG9uZSBUQ1NSX1VTQjNf
RFBfUEhZTU9ERSByZWdpc3RlciBhdCAweDFGQ0IyNDguCj4+Pj4+Pj4+PiBRQ00yMjkwL1NNNjEx
NToKPj4+Pj4+Pj4+IMKgwqDCoMKgVENTUl9VU0IzXzBfRFBfUEhZTU9ERSBhdCAweDNDQjI0OAo+
Pj4+Pj4+Pj4gwqDCoMKgwqBUQ1NSX1VTQjNfMV9EUF9QSFlNT0RFIGF0IDB4M0NCMjRDCj4+Pj4+
Pj4+PiBTTTYxNTA6Cj4+Pj4+Pj4+PiDCoMKgwqDCoFRDU1JfVVNCM18wX0RQX1BIWU1PREUgYXQg
MHgxRkNCMjQ4Cj4+Pj4+Pj4+PiDCoMKgwqDCoFRDU1JfVVNCM18xX0RQX1BIWU1PREUgYXQgMHgx
RkNCMjRDCj4+Pj4+Pj4gU002MTUwIGhhcyB0d28gZGlmZmVyZW50IHNldHMgb2Ygb3V0cHV0IHBp
bnMsIHNvIHRoZSBmaXJzdCByZWdpc3Rlcgo+Pj4+Pj4+IGNvdmVycyBmaXJzdCBzZXQgb2YgU1Mg
bGFuZXMgKHdoaWNoIGFyZSByb3V0ZWQgdG8gdGhlIGRvY3VtZW50ZWQgU1MKPj4+Pj4+PiBQSFkp
LCB0aGUgc2Vjb25kIHJlZ2lzdGVyIGNvdmVycyB0aGUgc2Vjb25kIHNldCBvZiBTUyBsYW5lcyAo
d2hpY2ggYXJlCj4+Pj4+Pj4gcm91dGVkIHRvIHRoZSBEUCBhbmQgc2Vjb25kYXJ5IFVTQiBQSFkp
Lgo+Pj4+Pj4+Cj4+Pj4+Pj4gSSBjYW4gb25seSBhc3N1bWUgdGhhdCB0aGUgc2FtZSBjb25maWd1
cmF0aW9uIHdhcyBzdXBwb3NlZCB0byBiZQo+Pj4+Pj4+IGFwcGxpY2FibGUgdG8gUUNNMjI5MCAv
IFNNNjExNSwgYnV0IHdhcyBsYXRlciByZW1vdmVkIC8gZGlzYWJsZWQsIHdoaWxlCj4+Pj4+Pj4g
dGhlIHJlZ2lzdGVycyB3ZXJlIGtlcHQgaW4gdGhlIFRDU1IgYmxvY2suCj4+Pj4+Pj4KPj4+Pj4+
Pj4+IEV2ZW4gdGhvdWdoIE1TTTg5OTgsIFNETTY2MCwgUUNNMjI5MCwgYW5kIFNNNjExNSBhbGwg
aGF2ZSBvbmUgVVNCMyBQSFkgYW5kIG9uZSBEUCBQSFksIHRoZSBUQ1NSIERQX1BIWU1PREUgcmVn
aXN0ZXIgY29uZmlndXJhdGlvbiBpcyBkaWZmZXJlbnQgb24gZWFjaCBwbGF0Zm9ybS4KPj4+Pj4+
Pj4+Cj4+Pj4+Pj4+PiBBZGRpdGlvbmFsbHksIEkgZm91bmQgc29tZSBpbnRlcmVzdGluZyByZWdp
c3RlciBkb2N1bWVudGF0aW9uIGZvciBRQ00yMjkwL1NNNjExNToKPj4+Pj4+Pj4+IMKgwqDCoMKg
VENTUl9VU0IzXzBfRFBfUEhZTU9ERTog4oCcSW4ga2Ftb3J0YSB0aGlzIG9uZSBpcyBmb3IgbW9i
aWxlIHVzYi4gRFAgbm90IHN1cHBvcnRlZC7igJ0KPj4+Pj4+Pj4+IMKgwqDCoMKgVENTUl9VU0Iz
XzFfRFBfUEhZTU9ERTog4oCcRFAgbW9kZSBzdXBwb3J0ZWQgZm9yIEF1dG8gdXNiIGluIGthbW9y
dGEu4oCdCj4+Pj4+Pj4+PiBJIHRoaW5rIHRoZSByZWFzb24gZm9yIGhhdmluZyB0d28gZGlmZmVy
ZW50IFRDU1IgcmVnaXN0ZXJzIGlzIHRvIGFsbG93IGJvdGggdGhlIFVTQjMuMCBhbmQgRFAgUEhZ
cyB0byBiZSB1c2VkcyBhdCB0aGUgc2FtZSB0aW1lIGluIGNlcnRhaW4gcHJvZHVjdCBjb25maWd1
cmF0aW9ucy4KPj4+Pj4+PiBTdXJlLiBPbmUgZm9yIHRoZSBmaXJzdCBQSFkgKFVTQiksIG9uZSBm
b3IgdGhlIHNlY29uZCBQSFkgKFVTQitEUCkuCj4+Pj4+Pj4gSWYgeW91IGNoZWNrIHRoZSBtZW1v
cnkgbWFwLCB5b3Ugd2lsbCBmaW5kIHRoZSBzZWNvbmQgVkxTIENMQU1QIHJlZ2lzdGVyCj4+Pj4+
Pj4gZm9yIHRoZSBzZWNvbmQgVVNCIFBIWS4KPj4+Pj4+Pgo+Pj4+Pj4+Pj4gMi4gU002MTUwIFRl
c3QgUmVzdWx0cwo+Pj4+Pj4+Pj4gV2hlbiBUQ1NSX0RQX1BIWU1PREVfMCBpcyBzd2l0Y2hlZCB0
byBEUCwgdGhlIFVTQjMgcHJpbWFyeSBQSFkgY2Fubm90IHdvcmssIGFuZCB0aGUgRFAgUEhZIGlz
IGFsc28gbm90IGZ1bmN0aW9uYWwgKHBvc3NpYmx5IGR1ZSB0byBjbG9jayBsYWNrIG9yIG90aGVy
IGNvbmZpZ3VyYXRpb24gbWlzbWF0Y2ggd2l0aCB0aGlzIFRDU1Igc2V0dGluZykuCj4+Pj4+Pj4+
PiBXaGVuIFRDU1JfRFBfUEhZTU9ERV8xIGlzIHN3aXRjaGVkIHRvIERQLCBib3RoIHRoZSBVU0Iz
IHByaW1hcnkgUEhZIGFuZCB0aGUgRFAgUEhZIHdvcmsgbm9ybWFsbHkuCj4+Pj4+Pj4+PiBJIHRo
aW5rICJ3aHkgbXNtLTQuMTQgZGlkbid0IGRlc2NyaWJlIHNlY29uZCBVU0IzIFBIWSIsIGJlY2F1
c2UgVENTUl9EUF9QSFlNT0RFXzEgYWx3YXlzIHdvcmtzIGluIERQIG1vZGUuCj4+Pj4+Pj4+PiBo
dHRwczovL2FuZHJvaWQuZ29vZ2xlc291cmNlLmNvbS9rZXJuZWwvbXNtLysvYWYwM2VlZjdkNGMz
Y2JkMWZlMjZjNjdkNGYxOTE1YjA1ZDBjMTQ4OC9kcml2ZXJzL2dwdS9kcm0vbXNtL2RwL2RwX2Nh
dGFsb2dfdjIwMC5jCj4+Pj4+Pj4gSGVyZSBpdCBzdGlsbCBwcm9ncmFtcyB0aGUgVENTUiByZWdp
c3Rlci4KPj4+Pj4+Pgo+Pj4+Pj4+Pj4gQmFzZWQgb24gdGhlc2UgaW5mbywgSSBiZWxpZXZlIHRo
ZXNlIGFyZSBzZXBhcmF0ZSBQSFlzLCBhbmQgb25seSB0aGUKPj4+Pj4+Pj4+IFRDU1IgRFBfUEhZ
TU9ERSByZWdpc3RlcnMgZGV0ZXJtaW5lIHdoaWNoIFVTQjMvRFAgUEhZcyBhcmUgcGFpcmVkIG9y
Cj4+Pj4+Pj4+PiBtdXR1YWxseSBleGNsdXNpdmUuIFRoaXMgaXMgd2h5IEkgaGF2ZSBtYWludGFp
bmVkIHNlcGFyYXRlIHByaXZhdGUKPj4+Pj4+Pj4+IGRhdGEgZm9yIGVhY2ggUEhZIGFuZCBpbXBs
ZW1lbnRlZCBQb3dlciBvbiBtdXRleCBjb250cm9sIHZpYSBUQ1NSLAo+Pj4+Pj4+Pj4gcmF0aGVy
IHRoYW4gdXNpbmcgYSBxbXBfY29tYm8tbGlrZSBzdHJ1Y3R1cmUuCj4+Pj4+Pj4gU3RpbGwsIG5v
LiBDaGVjayB0aGUgYmxvY2sgZGlhZ3JhbSBvZiBTTTYxNTAuCj4+Pj4+Pj4KPj4+Pj4+Pj4+IEdp
dmVuIHRoZSBhYm92ZSwgZG8geW91IHRoaW5rIHdlIHN0aWxsIG5lZWQgdG8gZm9yY2UgVVNCIGFu
ZCBEUCB0byBiZSBzdHJpY3RseSBib3VuZCB0b2dldGhlciBsaWtlIGEgY29tYm8gUEhZPwo+Pj4+
Pj4+IFllcy4KPj4+Pj4+IEkgY2hlY2tlZCB0aGUgcmVsYXRlZCBQSFkgc2VyaWVzIGFuZCBibG9j
ayBkaWFncmFtcyBhZ2Fpbi4KPj4+Pj4+Cj4+Pj4+PiBQUkkgYW5kIFNFQyBnbyB0byBkaWZmZXJl
bnQgbm9kZXMgYmFzZWQgb24gdGhlIFNvQyBkZXNpZ24sIGFuZCB0aGVyZSBhcmUgdHdvIHR5cGVz
IG9mIGNvbmZpZ3VyYXRpb25zOiBVU0IzLW9ubHkgYW5kIFVTQjMrRFAgcGFpcmluZy4KPj4+Pj4+
Cj4+Pj4+PiBCZWZvcmUgcHJvY2VlZCB0aGUgdjMgcGF0Y2hzZXQsIEnigJlkIGxpa2UgdG8gZG91
YmxlLWNvbmZpcm0gd2hldGhlciB0aGUgZm9sbG93aW5nIHN0cnVjdHVyZSBpcyB3aGF0IHlvdSBl
eHBlY3Q6Cj4+Pj4+Pgo+Pj4+Pj4gdXNiX3FtcHBoeV8xOiBwaHlAODhlNjAwMCB7Cj4+Pj4+PiDC
oMKgwqDCoCBjb21wYXRpYmxlID0gInFjb20sc202MTUwLXFtcC11c2IzLXByaW0tcGh5IjsgPD09
IHJlbmFtZSB0byBQUklNCj4+Pj4+IE5vLCB3ZSBhbHJlYWR5IGhhdmUgYSBjb21wYXRpYmxlIG5h
bWUgYW5kIERUIHNjaGVtYSBmb3IgdGhpcyBkZXZpY2UuCj4+Pj4gVGhlbiBjdXJyZW50IGNvbXBh
dGlibGUgbmFtZSBpcyAicWNvbSxxY3M2MTUtcW1wLXVzYjMtcGh5IiBhbmQgc2hhbGwgd2UgbmVl
ZCB1cGRhdGUgdG8gInFjb20sc202MTUwLXFtcC11c2IzLXBoeSI/Cj4+PiBXaHk/IFlvdSBfYWxy
ZWFkeV8gaGF2ZSBhIGNvbXBhdGlibGUgc3RyaW5nLiBZb3UgZG9uJ3QgbmVlZCB0byBjaGFuZ2Ug
aXQganVzdCB0byBmb2xsb3cgdGhlIFNvQyBuYW1lLsKgCj4+Pgo+PiBPaywgYnV0IGp1c3QgdG8g
Y29uZmlybSDigJQgaW4gdGhpcyBjYXNlLCB0aGUgVVNCMy1EUCBQSFkgd291bGQgdXNlICJxY29t
LHNtNjE1MC1xbXAtdXNiMy1kcC1waHkiIHdoaWxlIHRoZSBVU0IzLW9ubHkgUEhZIHN0aWxsIHVz
ZXMgInFjb20scWNzNjE1LXFtcC11c2IzLXBoeSI/Cj4+Cj4+IFNpbmNlIGJvdGggUEhZcyBhcmUg
b24gdGhlIHNhbWUgU29DLCB3b3VsZCBpdCBtYWtlIHNlbnNlIHRvIGtlZXAgdGhlIG5hbWluZyBj
b25zaXN0ZW50IGFuZCB1c2UgInFjb20scWNzNjE1LS4uLiIgZm9yIGJvdGg/wqAKPiBFaXRoZXIg
d2F5IGlzIGZpbmUgd2l0aCBtZS4KT2sswqB0aGVuIEnigJlsbCB1c2XCoHwicWNvbSxxY3M2MTUt
cW1wLXVzYjMtZHAtcGh5InzCoGZvciB0aGUgVVNCMy1EUCBQSFkgaW4gdGhlIHYzIHBhdGNoLgo+
CgotLSAKbGludXgtcGh5IG1haWxpbmcgbGlzdApsaW51eC1waHlAbGlzdHMuaW5mcmFkZWFkLm9y
ZwpodHRwczovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1waHkK
