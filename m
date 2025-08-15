Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id BE386CA0EE0
	for <linux-phy@archiver.kernel.org>; Fri, 15 Aug 2025 08:35:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=r5AeRtaxVPagAWv5nQQhMLXQ2fbGM/CNJLK7IJMk+xc=; b=dQtmPQtCkRoGa+
	bNMWZDcqx8m7nqY2eCAEiCSoHQpSftM+H0/m7S3r8335WYGDeXQaYbH1ZlolqEjXrRm5UwnfAjnbH
	PjI0BXUs0aKYZPrc6+yvgCE0eJyjcdnjpvzAexT+b2AcEK04KQlMa1SUKxd1TCosxnDXHk6fE6i19
	rzUFShc7D/4CCHI0Kw+nfieBL4RnkMsTDwZFi4Vo5ba5fIgyc0fZr6I1CJ9unItS/bUXKLMYoZnBL
	z197jfGSdcZHqzlGqxDB5TIP7XU23X9wKJuMO1ooKb/weDgvt37w427bxjCCLIHjLBh4RE3jzbUhZ
	5OGaVbUT1v275KsL3FZA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1umpu2-00000001s1I-20Mm;
	Fri, 15 Aug 2025 08:35:10 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1umppL-00000001rNk-0PgL
	for linux-phy@lists.infradead.org;
	Fri, 15 Aug 2025 08:30:20 +0000
Received: from pps.filterd (m0279862.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 57EIkrfm025666
	for <linux-phy@lists.infradead.org>; Fri, 15 Aug 2025 08:30:18 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	QebLpSI7tQ9noZzURxHg67s2/5ukonRzYWMzSKVz+Xg=; b=pCqflBFJI4IqiQ7J
	HAF4OUAeQSJMbu6j2QR79uhzh75gp1YDNzUce44AdQJCNtPBF7Txa+f1OWhxnQ7Q
	Ir/aEfuVoO8h7MiA/x5gsQduEhmU1e07d0jDDFtpliAfcgXiUv3NAcDCKsYIPWPX
	w4N8t1F/FnXCzZ1ZZsJ60cEloUIVEyu6CmoncWyhw3rd6LYAu7neAGPF6EkOFxFA
	OjvGRXuztpmbshrF+82QwLztQApw5+mprN0HS9eok6kTnVWbyag7qNuOcAfuEe4D
	XcP+U7gZHlrpSYqGVoe08yHXbd+IP6pygO00Col633buA6d6UoAbzOyrgwoliyk7
	mFfQUQ==
Received: from mail-pj1-f70.google.com (mail-pj1-f70.google.com [209.85.216.70])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 48dy3gje98-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Fri, 15 Aug 2025 08:30:18 +0000 (GMT)
Received: by mail-pj1-f70.google.com with SMTP id 98e67ed59e1d1-32326e72b32so657248a91.3
        for <linux-phy@lists.infradead.org>; Fri, 15 Aug 2025 01:30:18 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1755246617; x=1755851417;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to:subject
         :user-agent:mime-version:date:message-id:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=QebLpSI7tQ9noZzURxHg67s2/5ukonRzYWMzSKVz+Xg=;
        b=fEoDeNYvK5zJbBd8XWzsauAqcfkAKmKrxZ/e/5y5iJEWVmfg3z/WwbY3qRRdPArIEE
         xGj27aCrTnj7dRz56dPqAbL6VaEHz0HW9cT41YKE534sSZeIGj37e8Q9wmI4RfigotpE
         eZWOPlK16Jpx7oAmrl/k+MZd0DwNwrFbpbJIIFXX42FGUcZEOrkYUdgngYc9Q5i/UGge
         5KFM2m1U2X71JgTe2sLav+8obMCmp5nhhXDfKRvAtDwSn7IKnmKxN0H0u1lp/G23gTqL
         6OiYwcjvMN7aRmFbNwp81VB99MPsdCCW25bC5dE8VmdFErz8J3KxMNVeDn+2TqlrXxd8
         e5tA==
X-Forwarded-Encrypted: i=1; AJvYcCX0ZJlKDzGzGX8o08h2vd1fU/3MMXLbAip740lmFbUjXlYXCYC9gQLMew9ofdGZcZDsnwIs2qoKQlk=@lists.infradead.org
X-Gm-Message-State: AOJu0Yz7fOOm73lKnJ94sm3QOH/wMHBDyUK31c1rC/Xpb6B/D1dq6g1v
	YSxUPC9yINIHO/ruRdbKP7Znav818wKQ6ZRID3iBfeppv3n2IqtSxdm8BrnWeoZiYj8lz6WcDZO
	gaLIIOB7NNlJSZsTae3NlSgHGrL9X4t4t2cr8g0yofRaMJEPVF6QOtqU3Acff2FNKztoF
X-Gm-Gg: ASbGncufSzzQo0OLXHQG+ydRf421srz76o07LvfX65IYOyNzQC7w++ReQOtdKVFjyMK
	9wkcd32ewc8D1wpmfNbrHraPn4z/xeXOXBEIz1cIgx+UKuDC/wZo9kvOyvSg+WsibcKanrzKye2
	V9kBd7ylz4Pf8G+7F96qP2UZ51tFgcOffcRrRdAm9ixVzQdQLFB8RTfE/608Gt780YbmjhcZ4zl
	bIueQRxfVg+2PIzgUYeqhy8kWDy03vCrV7tJxFERM1881fWs/VrSlkXs7JlFRjczbl74bg83f0D
	d/J3eRV8yo9cfH+1MdWEdOOpXPAnJv7TY5fmG77BrQB/tssgDHab944x6UcH4WUD7IwKg7SWfv9
	QjE88I+c4CxtBvmIve/61VWHCj8H6
X-Received: by 2002:a17:902:e74e:b0:240:4b3b:333c with SMTP id d9443c01a7336-2446d91f8cemr8761285ad.9.1755246617087;
        Fri, 15 Aug 2025 01:30:17 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IFln2KKznF1Tps3/NqBK7l91lHgqA0O4rpjpbh31rF6OlDm0+al8oFnjA7SdlXStf6njF2Khg==
X-Received: by 2002:a17:902:e74e:b0:240:4b3b:333c with SMTP id d9443c01a7336-2446d91f8cemr8760865ad.9.1755246616572;
        Fri, 15 Aug 2025 01:30:16 -0700 (PDT)
Received: from [10.133.33.10] (tpe-colo-wan-fw-bordernet.qualcomm.com. [103.229.16.4])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-2446d57e140sm8982125ad.156.2025.08.15.01.30.09
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 15 Aug 2025 01:30:16 -0700 (PDT)
Message-ID: <f330e6a4-ec51-4682-aa35-bef9c6e8ad3a@oss.qualcomm.com>
Date: Fri, 15 Aug 2025 16:30:08 +0800
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 03/13] dt-bindings: phy: qcom,msm8998-qmp-usb3-phy:
 support dual TCSR registers
To: Krzysztof Kozlowski <krzk@kernel.org>,
        Rob Clark <robin.clark@oss.qualcomm.com>,
        Dmitry Baryshkov
 <lumag@kernel.org>,
        Abhinav Kumar <abhinav.kumar@linux.dev>,
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
        Kishon Vijay Abraham I <kishon@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, dri-devel@lists.freedesktop.org,
        freedreno@lists.freedesktop.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, linux-phy@lists.infradead.org,
        dmitry.baryshkov@oss.qualcomm.com, konrad.dybcio@oss.qualcomm.com,
        fange.zhang@oss.qualcomm.com, quic_lliu6@quicinc.com,
        quic_yongmou@quicinc.com
References: <20250722-add-displayport-support-for-qcs615-platform-v2-0-42b4037171f8@oss.qualcomm.com>
 <20250722-add-displayport-support-for-qcs615-platform-v2-3-42b4037171f8@oss.qualcomm.com>
 <2fd202a6-2c92-469c-81c0-8852562d4e35@kernel.org>
From: Xiangxu Yin <xiangxu.yin@oss.qualcomm.com>
In-Reply-To: <2fd202a6-2c92-469c-81c0-8852562d4e35@kernel.org>
X-Authority-Analysis: v=2.4 cv=X4lSKHTe c=1 sm=1 tr=0 ts=689ef01a cx=c_pps
 a=0uOsjrqzRL749jD1oC5vDA==:117 a=nuhDOHQX5FNHPW3J6Bj6AA==:17
 a=IkcTkHD0fZMA:10 a=2OwXVqhp2XgA:10 a=EUspDBNiAAAA:8 a=6sAUhDfBEk1Dn3Xrvb0A:9
 a=3ZKOabzyN94A:10 a=QEXdDO2ut3YA:10 a=mQ_c8vxmzFEMiUWkPHU9:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwODA5MDAzMSBTYWx0ZWRfX9CJAKdQXTJBD
 hso8PAqXgP7B2m4j9+dAbW/zFDTR1tWYLtminggHLIU+KB+AInbmj7fFVzFG/398ct7LB6lCPny
 ZHQHfxaznC+NLakSomyWB9sTeGHVZueUDxTf6Ou/+tIV/4UNME7bipHZd6lBkLIiYJnc9TShCt8
 PEqNuXTqjJZXUAFIBaE9B7bmo3DfUUWeE/8ulDFk6puMW09A1hfiytUsl6YB5gR6W71PDwpoHld
 bhehytFj0WW2PVlD5tAi3wl3PE89XWXc4oyKK7oMsBsr23e9XnhLMfOyYdrPhaVS+831/FMbf0D
 Ymd5O35me5YXWQPXUj31fd0vqb3keh5mJLd6oxSqTWEHSounVMnR1NlUpwKBz9o9nzJrGR7EsGG
 BJCHdXbv
X-Proofpoint-GUID: AF5ZC6-YBcqP01ei2ZR_lW_QYPUfOdsS
X-Proofpoint-ORIG-GUID: AF5ZC6-YBcqP01ei2ZR_lW_QYPUfOdsS
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-08-15_03,2025-08-14_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 phishscore=0 priorityscore=1501 clxscore=1015 malwarescore=0 adultscore=0
 spamscore=0 bulkscore=0 suspectscore=0 impostorscore=0 classifier=typeunknown
 authscore=0 authtc= authcc= route=outbound adjust=0 reason=mlx scancount=1
 engine=8.19.0-2507300000 definitions=main-2508090031
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250815_013019_142147_2BCEE8CE 
X-CRM114-Status: GOOD (  17.08  )
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

Ck9uIDcvMjIvMjAyNSA1OjE5IFBNLCBLcnp5c3p0b2YgS296bG93c2tpIHdyb3RlOgo+IE9uIDIy
LzA3LzIwMjUgMDk6MjIsIFhpYW5neHUgWWluIHdyb3RlOgo+PiBBZGQgc3VwcG9ydCBmb3Igc3Bl
Y2lmeWluZyB0d28gVENTUiByZWdpc3RlciBhZGRyZXNzZXMgaW4gdGhlCj4+IHFjb20sdGNzci1y
ZWcgcHJvcGVydHkgdG8gZW5hYmxlIERQLW9ubHkgbW9kZSBzd2l0Y2hpbmcuIFRoaXMgY2hhbmdl
Cj4+IG1haW50YWlucyBiYWNrd2FyZCBjb21wYXRpYmlsaXR5IHdpdGggdGhlIG9yaWdpbmFsIHNp
bmdsZS1yZWdpc3Rlcgo+PiBmb3JtYXQuCj4+Cj4+IEFsc28gdXBkYXRlICNjbG9jay1jZWxscyBh
bmQgI3BoeS1jZWxscyB0byA8MT4gdG8gc3VwcG9ydCBjbG9jayBhbmQgUEhZCj4+IHByb3ZpZGVy
IGludGVyZmFjZXMsIHJlc3BlY3RpdmVseS4gVGhpcyBpcyByZXF1aXJlZCBmb3IgcGxhdGZvcm1z
IHRoYXQKPj4gY29uc3VtZSB0aGUgUEhZIGNsb2NrIGFuZCBzZWxlY3QgUEhZIG1vZGUgZHluYW1p
Y2FsbHkuCj4+Cj4+IFNpZ25lZC1vZmYtYnk6IFhpYW5neHUgWWluIDx4aWFuZ3h1LnlpbkBvc3Mu
cXVhbGNvbW0uY29tPgo+PiAtLS0KPj4gIC4uLi9iaW5kaW5ncy9waHkvcWNvbSxtc204OTk4LXFt
cC11c2IzLXBoeS55YW1sICAgIHwgMjggKysrKysrKysrKysrKysrKystLS0tLQo+PiAgMSBmaWxl
IGNoYW5nZWQsIDIyIGluc2VydGlvbnMoKyksIDYgZGVsZXRpb25zKC0pCj4+Cj4+IGRpZmYgLS1n
aXQgYS9Eb2N1bWVudGF0aW9uL2RldmljZXRyZWUvYmluZGluZ3MvcGh5L3Fjb20sbXNtODk5OC1x
bXAtdXNiMy1waHkueWFtbCBiL0RvY3VtZW50YXRpb24vZGV2aWNldHJlZS9iaW5kaW5ncy9waHkv
cWNvbSxtc204OTk4LXFtcC11c2IzLXBoeS55YW1sCj4+IGluZGV4IDE2MzYyODVmYmU1MzVjNDMw
ZmRmNzkyYjMzYTVlOWM1MjNkZTMyM2IuLmJhZGZjNDZjZGE2YzNhMTI4Njg4YWM2M2IwMGQ5N2Rj
MmJhNzQyZDYgMTAwNjQ0Cj4+IC0tLSBhL0RvY3VtZW50YXRpb24vZGV2aWNldHJlZS9iaW5kaW5n
cy9waHkvcWNvbSxtc204OTk4LXFtcC11c2IzLXBoeS55YW1sCj4+ICsrKyBiL0RvY3VtZW50YXRp
b24vZGV2aWNldHJlZS9iaW5kaW5ncy9waHkvcWNvbSxtc204OTk4LXFtcC11c2IzLXBoeS55YW1s
Cj4+IEBAIC00NCwxMyArNDQsMjEgQEAgcHJvcGVydGllczoKPj4gICAgdmRkYS1wbGwtc3VwcGx5
OiB0cnVlCj4+ICAKPj4gICAgIiNjbG9jay1jZWxscyI6Cj4+IC0gICAgY29uc3Q6IDAKPj4gKyAg
ICBvbmVPZjoKPj4gKyAgICAgIC0gZGVzY3JpcHRpb246IFNldCB0byAwIGZvciBsZWdhY3kgcGxh
dGZvcm1zIHdpdGhvdXQgY2xvY2sgcHJvdmlkZXIKPj4gKyAgICAgICAgY29uc3Q6IDAKPj4gKyAg
ICAgIC0gZGVzY3JpcHRpb246IFNldCB0byAxIHRvIGV4cG9zZSBQSFkgcGlwZSBjbG9jay4KPj4g
KyAgICAgICAgY29uc3Q6IDEKPj4gIAo+PiAgICBjbG9jay1vdXRwdXQtbmFtZXM6Cj4+ICAgICAg
bWF4SXRlbXM6IDEKPj4gIAo+PiAgICAiI3BoeS1jZWxscyI6Cj4+IC0gICAgY29uc3Q6IDAKPj4g
KyAgICBvbmVPZjoKPj4gKyAgICAgIC0gZGVzY3JpcHRpb246IFNldCB0byAwIGZvciBsZWdhY3kg
cGxhdGZvcm1zCj4+ICsgICAgICAgIGNvbnN0OiAwCj4+ICsgICAgICAtIGRlc2NyaXB0aW9uOiBT
ZXQgdG8gMSB0byBzdXBwb3J0cyBtb2RlIHNlbGVjdGlvbiAoZS5nLiBVU0IvRFApCj4+ICsgICAg
ICAgIGNvbnN0OiAxCj4gSSBkb24ndCB1bmRlcnN0YW5kIHdoeSBFWElTVElORyBwbGF0Zm9ybXMg
bm93IGdldCBtb3JlIGNsb2Nrcy4gV2hhdCBkaWQKPiB5b3UgY2hhbmdlIGluIHRoZSBoYXJkd2Fy
ZT8gVGhpcyB5b3UgbXVzdCBleHBsYWluIGluIHRoZSBjb21taXQgbXNnLgo+Cj4KPiBCZXN0IHJl
Z2FyZHMsCj4gS3J6eXN6dG9mCgoKQXMgZGlzY3Vzc2VkIGluIFtQQVRDSCB2MiAwMi8xM10sIEkg
bWlzdW5kZXJzdG9vZCBEbWl0cnkncyBpbnRlbnQgcmVnYXJkaW5nIGJhY2t3YXJkIGNvbXBhdGli
aWxpdHkgaW4gdjEuwqAKClRoaXMgcGFydCB3aWxsIGJlIGRyb3BwZWQgaW4gdGhlIG5leHQgcGF0
Y2ggdG8gYXZvaWQgYWZmZWN0aW5nIGV4aXN0aW5nIHBsYXRmb3JtIGNvbmZpZ3VyYXRpb25zLiBU
aGFua3MgZm9yIHBvaW50aW5nIGl0IG91dC4KCgoKLS0gCmxpbnV4LXBoeSBtYWlsaW5nIGxpc3QK
bGludXgtcGh5QGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cHM6Ly9saXN0cy5pbmZyYWRlYWQub3Jn
L21haWxtYW4vbGlzdGluZm8vbGludXgtcGh5Cg==
