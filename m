Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id DD84DCAC587
	for <linux-phy@archiver.kernel.org>; Tue,  9 Sep 2025 10:13:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=UAVf7W710wui9Kf1YWl2Ya9lKwzYXnxZBtFaDnX1XPA=; b=thTwR1hm68L4yF
	Wv86MXhRe2B7Skl9Th2mS8wlHoPr0kVMU12+UarVlwoVvc2zrpdywBq8eMw1aURwxlBlZJt0PyO85
	sQttDGJ9E7sALqTfLGPB5/zMd/t116FC/puNEU6fzJ52GxsPbwIkoGrc5u8WsHwKmnYEG2VfLc+mR
	s0PzCkMSMtqXITfRxv2UEAHfRNZStcR9FOyBdJmM8rJCH5TF/SGEnfn/uNI8USskxQB/L1uwLszGp
	txx8zXskYrWdDLmrenMTntQKRk+cVJqhuQ3CTFlYWZhovTAwPOeUalAXgojYR6SiBGpVPAnWTwqKz
	cL5+XcxU72Nwxww8AAIg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uvvMK-00000006IYe-1uP8;
	Tue, 09 Sep 2025 10:13:56 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uvu1B-00000005g4V-2E1F
	for linux-phy@lists.infradead.org;
	Tue, 09 Sep 2025 08:48:02 +0000
Received: from pps.filterd (m0279867.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 5896SXqF004766
	for <linux-phy@lists.infradead.org>; Tue, 9 Sep 2025 08:48:01 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	KZymnpnmhs5B0YBDAMI52uZ/Inhmlk88lRXrLORVF+c=; b=L8Sd18PT9GCr920+
	ktTKgAKJQX5h6vBy+sqlOJNBCDze1sMH2MMPgRohQ+PbHRjhYHQiqI6WaKX1OVg5
	ov98vj2OxCFx9qeAMpFZfXr1I/lb3XqswZevZFG5/Oyf2lETMkP4lrisRPrywnz9
	N65bYaQFOkA+c7/KwB6NkHXt9iVDIjGaitmTLQw8qbwT3mfvxTuLQTHsaS3HWgOm
	HXmiSz7ZH2Gxef3Npo13I7+Bsr/FyZSBm89kUM+W6kQ+TCnJCP3yWRE/fHb0GN+B
	XayvryN7ECaB19spRXGKWF4NbYALDOED+W1rC4iFhOtxI58kyOy8bmLyxtNhqU0X
	Y2iP8A==
Received: from mail-pl1-f197.google.com (mail-pl1-f197.google.com [209.85.214.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 491qhdvcv9-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Tue, 09 Sep 2025 08:48:01 +0000 (GMT)
Received: by mail-pl1-f197.google.com with SMTP id d9443c01a7336-24cc57791caso14319295ad.0
        for <linux-phy@lists.infradead.org>; Tue, 09 Sep 2025 01:48:01 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1757407680; x=1758012480;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to:subject
         :user-agent:mime-version:date:message-id:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=KZymnpnmhs5B0YBDAMI52uZ/Inhmlk88lRXrLORVF+c=;
        b=AH8g/oqsWAvlZYm2n3W7AQjPy7sCAkkeNRbnioGRyMqZfMWQCIS1+krRnRrd93vEyK
         Q0EylX/qdQ+jHsn8Dx/bs+JVkWHyWJ6PsbTw0WojRP83izh03MYHipSmz9d+p8U+/sAx
         DCfmbHEJJ320Il8Nu74AJzfFbNmTz0gvVq2AnxbCqrsH5Wb9L5mZ7jjuTy2OlL9EAGeN
         DcQX5UyXF20hTDNS9QmfRdSzQmo7AdmgqomWD6ZPHb1DTQp4aktKVrzxy1nz4/WK61h+
         vFFjZVoAJHjJvHLP3LtzQ8X45BcE6GNcMzY60ke0kngr47OGzTRSydaA5s01PXFNjG1Q
         /Iog==
X-Forwarded-Encrypted: i=1; AJvYcCUgdwuUQX6IDA8LgmK8fubZLG56Mqmw6O/299XfZ1CaULhFbScgzc4EZg6zDS2otN6vMNqsHhlJLVs=@lists.infradead.org
X-Gm-Message-State: AOJu0YyNDC3bzosg3Bqz5oPpQefdPkgocP+mFFjY5zDxj3KqT0Vwh86l
	in2XPOEPbpkqCNPyPy/ZLPvIYmcmcHqpTUBO77Fu5Z1nemZQA++403h5wlH0TsmT6xK7MrXn/VB
	+7YCbHaMP1E7+8UQss2EzRWLumlmt8c9uvgRg5ZA1MoiFwLxh6L8s0g0gSEmul7+csa3/
X-Gm-Gg: ASbGncs6Dva4Muc/ENqaWc9KgrRAhClg4+K7i6pdzPdNVRO9QcUcJ7t2KBZkhDGmGtz
	miM96ZgaknJwJMCbUMd5X67rrENpgTukM1fY4LVrkPqAxqfN8hwIcvzC05D1XZlwUMRofUePVfl
	GxFQbd6elqFOjk6X/wkTBvbQwOnaNl4FtuX5orurrVjg7kiisk5nXt9nPGiV1HZ8W24CWnMjzbu
	BQOqdducd6IgB+Ux95lEv4Npj4CL+H0rrDun4L5pAU8W47nv/KeKmJd9jgUMovmRel7h7qCaBlE
	eOEG19Ljns2wHVokf+dLFX0LU2xy9IXnVbYLD5y753dvwvNuvAVWW6Cw0EEhZEGFXAzD5f+VAsB
	oyfBRfeytmgvuUozVbDMwYnY4dyHqCg==
X-Received: by 2002:a17:902:db04:b0:24c:b39f:bac2 with SMTP id d9443c01a7336-2516ec71a55mr86020525ad.1.1757407680150;
        Tue, 09 Sep 2025 01:48:00 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IFGcPEO4ewq8vPdRBMjUnVoQbZofkFK2H8oWkKbHPow7Vq7zP3XFvEVLEjwbhoyUbsAwksJ8g==
X-Received: by 2002:a17:902:db04:b0:24c:b39f:bac2 with SMTP id d9443c01a7336-2516ec71a55mr86020095ad.1.1757407679630;
        Tue, 09 Sep 2025 01:47:59 -0700 (PDT)
Received: from [10.133.33.137] (tpe-colo-wan-fw-bordernet.qualcomm.com. [103.229.16.4])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-24af8ab7e7bsm206214375ad.138.2025.09.09.01.47.51
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 09 Sep 2025 01:47:59 -0700 (PDT)
Message-ID: <48a76d34-b748-43e6-8a2c-bebc8095478d@oss.qualcomm.com>
Date: Tue, 9 Sep 2025 16:47:50 +0800
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
 <c4eeb8a8-2819-4ac5-8dc1-cce209d7cbc4@oss.qualcomm.com>
 <3zi57uvggw3zgrj4bfouzjnf56yywjnw46f5ru7krihyrw5bkc@c3xf73ianksa>
From: Xiangxu Yin <xiangxu.yin@oss.qualcomm.com>
In-Reply-To: <3zi57uvggw3zgrj4bfouzjnf56yywjnw46f5ru7krihyrw5bkc@c3xf73ianksa>
X-Proofpoint-GUID: bnu5gMKjRUcLHnS9IpCzOD2yT7IHkTS3
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwOTA4MDAzNCBTYWx0ZWRfX8vBffE6cRjyT
 tHf3KglH9e7Krw0vqPPNZKCrh+nPtacPREIMTsufUF8n/LpUS0lsxjPDjY53pmLdyA2f6XqpwMz
 u+PBkteRcbvBz33uDfRCpLkbGJcCRZwRUe4n7jNUbgv/uQ+/fuEePEpa0UrPycXxv3dUPaONk0B
 DMbJaJFb/m+d9DVRjBEcUtK6paDPdtbD1SFe8cXv1W3fksJIqv+WM0P4ypXz1DeEnGNxunDpFJG
 PYoCUA32PnsW4nras8jjBpaiR4LtPgMULNWH113wiYFJHZ0vyirqjalQI98SxiQ5DHeE+Irk/8X
 r0aWAYMVAAcCNRXqj/3yzxlGCHgBS2qA8Bc2Wdiu3Ti/xEbf+vUyxTKy2GSLA+YTM7rj1Jd9pYt
 OmcL6f73
X-Authority-Analysis: v=2.4 cv=YOCfyQGx c=1 sm=1 tr=0 ts=68bfe9c1 cx=c_pps
 a=cmESyDAEBpBGqyK7t0alAg==:117 a=nuhDOHQX5FNHPW3J6Bj6AA==:17
 a=IkcTkHD0fZMA:10 a=yJojWOMRYYMA:10 a=EUspDBNiAAAA:8 a=0xAmN0HNA53ciqJMUUUA:9
 a=3ZKOabzyN94A:10 a=QEXdDO2ut3YA:10 a=1OuFwYUASf3TG4hYMiVC:22
X-Proofpoint-ORIG-GUID: bnu5gMKjRUcLHnS9IpCzOD2yT7IHkTS3
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1117,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-09-08_06,2025-09-08_02,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 malwarescore=0 phishscore=0 clxscore=1015 adultscore=0 impostorscore=0
 suspectscore=0 priorityscore=1501 spamscore=0 bulkscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.19.0-2507300000 definitions=main-2509080034
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250909_014801_651181_22014501 
X-CRM114-Status: GOOD (  19.21  )
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

Ck9uIDkvOS8yMDI1IDQ6NDUgUE0sIERtaXRyeSBCYXJ5c2hrb3Ygd3JvdGU6Cj4gT24gVHVlLCBT
ZXAgMDksIDIwMjUgYXQgMDQ6Mzk6MjZQTSArMDgwMCwgWGlhbmd4dSBZaW4gd3JvdGU6Cj4+IE9u
IDkvNC8yMDI1IDg6MzQgQU0sIERtaXRyeSBCYXJ5c2hrb3Ygd3JvdGU6Cj4+PiBPbiBXZWQsIEF1
ZyAyMCwgMjAyNSBhdCAwNTozNDo0M1BNICswODAwLCBYaWFuZ3h1IFlpbiB3cm90ZToKPj4+PiBB
ZGQgRGlzcGxheVBvcnQgY29udHJvbGxlciBmb3IgUXVhbGNvbW0gU002MTUwIFNvQy4KPj4+PiBX
aGlsZSBTTTYxNTAgY3VycmVudGx5IHNoYXJlcyB0aGUgc2FtZSBjb25maWd1cmF0aW9uIGFzIFND
NzE4MCwKPj4+PiBpdHMgaGFyZHdhcmUgY2FwYWJpbGl0aWVzIGRpZmZlci4gRXhwbGljaXRseSBs
aXN0aW5nIGl0IGVuc3VyZXMgY2xhcml0eQo+Pj4+IGFuZCBhdm9pZHMgcG90ZW50aWFsIGlzc3Vl
cyBpZiBTQzcxODAgc3VwcG9ydCBldm9sdmVzIGluIHRoZSBmdXR1cmUuCj4+Pj4KPj4+PiBTaWdu
ZWQtb2ZmLWJ5OiBYaWFuZ3h1IFlpbiA8eGlhbmd4dS55aW5Ab3NzLnF1YWxjb21tLmNvbT4KPj4+
PiAtLS0KPj4+PiAgRG9jdW1lbnRhdGlvbi9kZXZpY2V0cmVlL2JpbmRpbmdzL2Rpc3BsYXkvbXNt
L2RwLWNvbnRyb2xsZXIueWFtbCB8IDEgKwo+Pj4+ICAxIGZpbGUgY2hhbmdlZCwgMSBpbnNlcnRp
b24oKykKPj4+Pgo+Pj4+IGRpZmYgLS1naXQgYS9Eb2N1bWVudGF0aW9uL2RldmljZXRyZWUvYmlu
ZGluZ3MvZGlzcGxheS9tc20vZHAtY29udHJvbGxlci55YW1sIGIvRG9jdW1lbnRhdGlvbi9kZXZp
Y2V0cmVlL2JpbmRpbmdzL2Rpc3BsYXkvbXNtL2RwLWNvbnRyb2xsZXIueWFtbAo+Pj4+IGluZGV4
IDk5MjNiMDY1MzIzYmJhYjk5ZGU1MDc5YjY3NGEwMzE3ZjMwNzQzNzMuLjk5NmQwMTMyZTA4NGQ0
MDFkYjg1MDE0YTFhNGU0NDVkMDBkNjJlZDggMTAwNjQ0Cj4+Pj4gLS0tIGEvRG9jdW1lbnRhdGlv
bi9kZXZpY2V0cmVlL2JpbmRpbmdzL2Rpc3BsYXkvbXNtL2RwLWNvbnRyb2xsZXIueWFtbAo+Pj4+
ICsrKyBiL0RvY3VtZW50YXRpb24vZGV2aWNldHJlZS9iaW5kaW5ncy9kaXNwbGF5L21zbS9kcC1j
b250cm9sbGVyLnlhbWwKPj4+PiBAQCAtMjcsNiArMjcsNyBAQCBwcm9wZXJ0aWVzOgo+Pj4+ICAg
ICAgICAgICAgLSBxY29tLHNjODI4MHhwLWRwCj4+Pj4gICAgICAgICAgICAtIHFjb20sc2M4Mjgw
eHAtZWRwCj4+Pj4gICAgICAgICAgICAtIHFjb20sc2RtODQ1LWRwCj4+Pj4gKyAgICAgICAgICAt
IHFjb20sc202MTUwLWRwCj4+PiBUaGUgRFAgTVNUIGJpbmRpbmdzIHdlcmUgQS1iJ2VkIGFuZCBS
LWInZWQgYnkgUm9iLCBzbyBJIHBpY2tlZCB0aGVtIHVwCj4+PiBpbnRvIG1zbS1uZXh0LWx1bWFn
LiBQbGVhc2UgcmViYXNlIHlvdXIgcGF0Y2hzZXQgb24gdG9wIG9mIGl0IGFuZAo+Pj4gcmVzZW5k
LiBBdCB0aGlzIHBvaW50IEknbSBpbnRlcmVzdGVkIGluIERQIGJpbmRpbmdzIGFuZCBEUCBkcml2
ZXIKPj4+IHBhdGNoZXMsIHRoZSBQSFkgcGFydCBjYW4gY29tZSB1cCBzZXBhcmF0ZWx5Lgo+Pj4K
Pj4+IEFzIGZvciB0aGUgY29tcGF0aWJpbGl0aWVzLCBJIHRoaW5rIERQIG9uIFNNNjE1MCBzaG91
bGQgYmUgY29tcGF0aWJsZQo+Pj4gd2l0aCBlaXRoZXIgRFAgb24gU0RNODQ1IG9yIERQIG9uIFNN
ODM1MC4gUGxlYXNlIGNob29zZSBvbmUgd2hpY2ggc3VpdHMKPj4+IGJldHRlci4KPj4KPj4gU3Vy
ZSwgSeKAmWxsIHNwbGl0IG91dCB0aGUgRFAgYmluZGluZyBhbmQgY29udHJvbGxlciBjb21wYXRp
YmxlIHBhcnRzIGludG8gYcKgCj4+IHNlcGFyYXRlIHBhdGNoIHNlcmllcy4KPj4KPj4gU0RNODQ1
IHNlZW1zIG5vdCBzdXBwb3J0IHdpZGVfYnVzLCB3aGlsZSBTTTgzNTAgbG9va3MgY2xvc2VyIHRv
IFNNNjE1MC4KPj4gQnV0IEkgbm90aWNlZCBTTTgzNTAgaXMgc3RpbGwgY29uZmlndXJlZCBhcyBT
QzcxODAgdW5kZXIgZHBfZGlzcGxheSBpbgo+PiBtc20tbmV4dC1sdW1hZ+KAmXMgdG9wLCBzbyB0
aGlzIGNoYW5nZSB3aWxsIG1haW5seSBhYm91dCB0aGUgYmluZGluZywgcmlnaHQ/Cj4gWWVzLCBp
dCdzIG9ubHkgYWJvdXQgdGhlIGJpbmRpbmdzIGZvciBub3cuIFRoZSBkcml2ZXIgc3VwcG9ydCBm
b3IgRFAgTVNUCj4gaXMgc3RpbGwgV0lQLgoKCk9rLCB1bmRlcnN0b29kLsKgCgpXaWxsIHVwZGF0
ZSBuZXh0IHBhdGNoLgoKCj4+Cj4+Pj4gICAgICAgICAgICAtIHFjb20sc204MzUwLWRwCj4+Pj4g
ICAgICAgICAgICAtIHFjb20sc204NjUwLWRwCj4+Pj4gICAgICAgIC0gaXRlbXM6Cj4+Pj4KPj4+
PiAtLSAKPj4+PiAyLjM0LjEKPj4+PgoKLS0gCmxpbnV4LXBoeSBtYWlsaW5nIGxpc3QKbGludXgt
cGh5QGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cHM6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxt
YW4vbGlzdGluZm8vbGludXgtcGh5Cg==
