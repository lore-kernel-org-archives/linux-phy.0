Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 1BC17CAC5AC
	for <linux-phy@archiver.kernel.org>; Mon, 22 Sep 2025 10:39:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=FAkQwrMqATYDCRQqoVEcF3ZctvaINuRUQccahBHsKSU=; b=LoTR8x1qoFXAKv
	nH9uOqArj9TFaRaecdRk4U5t7tbNYQbec0piX8JcZEcz7ilNoph4vFBxR0bSMPavGU4BKSPf7baU8
	3BGYfVSzZxGxBaLlvvv3TJzsVK/uOAcr+dJL4DoymMa2aK7ZnI64FTWpyuTEracC57vCpmsuYBrBO
	w2F1YOLOPWKh3HfzzRKamogpywolECYYTMwkarNrqkxfHsHab7gZHQxraP1W33zCeWL8RM+ltvhPF
	PFZkmOKDyZtOn1tUnpoWTh615AUh9oBEF/28U5SJTx4VAPKMvE1TOpCpSQEiN/3oyhInzvDP3twrM
	JpMlm11Ispoh2I78mF4g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1v0dwo-0000000A55W-2y1N;
	Mon, 22 Sep 2025 10:39:06 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1v0dwm-0000000A52p-083T
	for linux-phy@lists.infradead.org;
	Mon, 22 Sep 2025 10:39:05 +0000
Received: from pps.filterd (m0279867.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 58M8w7TU009181
	for <linux-phy@lists.infradead.org>; Mon, 22 Sep 2025 10:39:03 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	//qK6wXZg3VBUfn/3y6cWL6qPfASe+TuJHYX2mofcCE=; b=SK8+hF3vd7O8Lkok
	QQzy0rGVxV80rkqb0+J65HgOtyQdcWLlD3vOxhhv10WZuEgLf3R3m/X32WC0JCjJ
	JgwHbMi5MCiP3W4t6183/UiCst1mplMxm5Gb53dPvydfSOjI/9ks13DF+VmtOTCS
	+yzH/r+Q9spXyOp4u6fmjGvm9be3Hs/dbqpAoHnrtzFUBc78NTGM+Iv9LCYpYX4k
	Foi88/C9kPkuJ7t+t2xERB/IwsFFjA2Fpzamllt+yLQDM8pV69utChBW0fAPpW2d
	W1/jEzh2xNRf9J8D9mo1LaVjT2R8z1ympQlmyUaBvIkkq/q7Oj0uErnGq3LtlHpl
	6PfKbA==
Received: from mail-pl1-f198.google.com (mail-pl1-f198.google.com [209.85.214.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 499hyemppu-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Mon, 22 Sep 2025 10:39:03 +0000 (GMT)
Received: by mail-pl1-f198.google.com with SMTP id d9443c01a7336-244582e9d17so14783065ad.3
        for <linux-phy@lists.infradead.org>; Mon, 22 Sep 2025 03:39:03 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1758537543; x=1759142343;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to:subject
         :user-agent:mime-version:date:message-id:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=//qK6wXZg3VBUfn/3y6cWL6qPfASe+TuJHYX2mofcCE=;
        b=X6wcvGHnE9slg0ZJJrtac0Lo3KJk7qSBKjIoFkFQAvKIwtA9OAeaetoqBWS7ij8Vdl
         XiEeABOZSlFfm2AbDes+SXgYVI31IOIV7YNjmNfw85eqaTf8KY7NpyqZpyS483tSKaRw
         uU42i1CNSmSRUseeT3rNcpWznkEBufToRifx04O02hHx/RDEaPSPO8OWy4rDk6bdfdfK
         FdKpphfa+DF9/KxG3UPxOQmCJY/sfLbsDfnccjVaPdgoz97vaM4A2a6IzVGDMF/mDPY3
         fd8pIt8UFNVeHWNWsRl/jXqu6ywVYXmTpnuvFfHQ8VJPFVyOwl1LCfc1KG7p0NwZBiYr
         dG8g==
X-Forwarded-Encrypted: i=1; AJvYcCV+4S8L4IrzWmK1EYidU40NiD6OxeW7NZZ6MWi0h4W/gGTTWQIjj+sUEzkkd7fTRhPpfDN0Nblb+7Q=@lists.infradead.org
X-Gm-Message-State: AOJu0YwCGrVy4sUIjXbFEodZcxN4mASzbPNNwjJqbv79+TSyki3khcmO
	f0mWsEkjZKfPtLtyFhazbDJCx4ddjf6qBPTeABKRwMkIEw6KE2VInYchgOuWD5qy9bGJPG3O9S1
	ZLTmviw9LJ1krmKnkG9mM/0Uz4ywK7YQXd7icba8QMpv9otqvy3galgxnQhMx24QJOuId
X-Gm-Gg: ASbGncvHFFEE68m/Srw9J70MPiRJFCmIbVASvfVHuVsSyMHt7S2z24kLmJW7KB416qX
	j6ob4bwCjAJuNmGZdIV0eC675lkcF32PdjrmzJqnpRSqps5TzrOn/6BJB4s+rRLD5bhE9W2DYIj
	TSgURc1/uuRD84RCruCuoXyyiLwIGClDRpybsajIzVN4g/PhCye8Z3ZaDIZhKwORrAlvmne3CEB
	ubb5wZdooAggk1we/ISHbP/b53YWmyU2UsmzWaZ73bCLPlJzhVYuaB3QkKL5NvjDYThbx84qizb
	E3E2XG3NLUPfiAbOjRrYWbd/iY/UXOANRaOUAKLiRaGQAkhm3s5f4D4w44peGudeEA==
X-Received: by 2002:a17:903:338c:b0:267:af07:652f with SMTP id d9443c01a7336-269ba5443fbmr57182895ad.10.1758537542550;
        Mon, 22 Sep 2025 03:39:02 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IGZ8EgA46Cot4VHvbFVkU1N3hyNZvluBxUAUjIVdbYP7UL9NYQ0X80HJxHmx6fYBf4OwquS4w==
X-Received: by 2002:a17:903:338c:b0:267:af07:652f with SMTP id d9443c01a7336-269ba5443fbmr57182785ad.10.1758537542098;
        Mon, 22 Sep 2025 03:39:02 -0700 (PDT)
Received: from [10.64.16.135] ([114.94.8.21])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-269803611d7sm129020115ad.143.2025.09.22.03.38.55
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 22 Sep 2025 03:39:01 -0700 (PDT)
Message-ID: <c95870e8-e481-4d3a-ba4b-b990381b3d45@oss.qualcomm.com>
Date: Mon, 22 Sep 2025 18:38:53 +0800
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
 <83b5a265-1c5f-49f5-a89e-22f466df3304@oss.qualcomm.com>
 <ysxjabaah6rcbsjlreteo32zdljjcd547vgqeoxototwicjj74@rwovxeg6rnli>
From: Xiangxu Yin <xiangxu.yin@oss.qualcomm.com>
In-Reply-To: <ysxjabaah6rcbsjlreteo32zdljjcd547vgqeoxototwicjj74@rwovxeg6rnli>
X-Proofpoint-GUID: F1r4Bgh07UnQyS3U-9Xo67FODdTmvG1q
X-Authority-Analysis: v=2.4 cv=YMOfyQGx c=1 sm=1 tr=0 ts=68d12747 cx=c_pps
 a=MTSHoo12Qbhz2p7MsH1ifg==:117 a=Uz3yg00KUFJ2y2WijEJ4bw==:17
 a=IkcTkHD0fZMA:10 a=yJojWOMRYYMA:10 a=EUspDBNiAAAA:8 a=F9smdMtuN0WkDBw8KqUA:9
 a=3ZKOabzyN94A:10 a=QEXdDO2ut3YA:10 a=GvdueXVYPmCkWapjIL-Q:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwOTIwMDAwNCBTYWx0ZWRfX7cHrtcbHTQrE
 Uy9GiBvXlLOJCapNDedcnM43ifcAcicEGJPnrOx7DFvoYziDX7UuDB7G/CqqlvZYfzuN1fMEtLH
 q2L+7LPXyRNgUmIbwzJwvegGrTe3fLaledtlbadfoTO8PLIAsohjWdnP+PndFtasfhOU6nxHMGU
 9XnBX/5505hbSJKugYXKOmsNLTY96mlTcti4AThxOJYApx6QwF5gR09jz6SZ2j720mGnEgDHbFS
 ferzWhaJ/47yMceugHyB9Vgj+F+UnQ2kOD6e4yxoNUY83BZNtlJc8KhiAiy43h1tQusDzvShmNU
 v8SSyawNg0T+c5bNXTxmEVUDFlM58QIy1ntPPRNVQQoSpCAPVxjW9GDJaZvMZIx4J6XhohI3u3Q
 BUi/3Uji
X-Proofpoint-ORIG-GUID: F1r4Bgh07UnQyS3U-9Xo67FODdTmvG1q
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1117,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-09-22_01,2025-09-22_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 impostorscore=0 bulkscore=0 adultscore=0 priorityscore=1501 spamscore=0
 clxscore=1015 suspectscore=0 phishscore=0 malwarescore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.19.0-2507300000 definitions=main-2509200004
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250922_033904_092273_893D3CA5 
X-CRM114-Status: GOOD (  15.10  )
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

Ck9uIDkvMjIvMjAyNSA1OjQwIFBNLCBEbWl0cnkgQmFyeXNoa292IHdyb3RlOgo+IE9uIE1vbiwg
U2VwIDIyLCAyMDI1IGF0IDA0OjA0OjQyUE0gKzA4MDAsIFhpYW5neHUgWWluIHdyb3RlOgo+PiBP
biA5LzIwLzIwMjUgMTI6NDUgQU0sIERtaXRyeSBCYXJ5c2hrb3Ygd3JvdGU6Cj4+PiBPbiBGcmks
IFNlcCAxOSwgMjAyNSBhdCAxMDoyNDoyMlBNICswODAwLCBYaWFuZ3h1IFlpbiB3cm90ZToKPj4+
PiBNb3ZlIHJlc2V0cyB0byBxbXBfcGh5X2NmZyBmb3IgcGVyLVBIWSBjdXN0b21pemF0aW9uLiBL
ZWVwIGxlZ2FjeSBEVAo+Pj4+IHBhdGggb24gdGhlIG9sZCBoYXJkY29kZWQgbGlzdDsgbm9uLWxl
Z2FjeSBwYXRoIHVzZXMgY2ZnLT5yZXNldF9saXN0Lgo+Pj4gV2h5PyBTdGFydCB5b3VyIGNvbW1p
dCBtZXNzYWdlcyB3aXRoIHRoZSBkZXNjcmlwdGlvbiBvZiB0aGUgaXNzdWUgdGhhdAo+Pj4geW91
IGFyZSB0cnlpbmcgdG8gc29sdmUuCj4+Cj4+IFRoZSBvcmlnaW5hbCByZXNldCBsaXN0IG9ubHkg
d29ya3MgZm9yIFVTQi1vbmx5IFBIWXMuIFVTQjNEUCBQSFlzIG5lZWQgZGlmZmVyZW50Cj4+IHJl
c2V0IG5hbWVzIGxpa2UgImRwX3BoeSIsIHNvIHRoZXkgdXNlIGEgc2VwYXJhdGUgbGlzdC4gTW92
aW5nIHJlc2V0cyB0bwo+PiBxbXBfcGh5X2NmZyBlbmFibGVzIHBlci1QSFkgY29uZmlnIHdpdGhv
dXQgc3BlY2lhbC1jYXNlIGxvZ2ljIGluIERUIHBhcnNpbmcuCj4+IEkgd2lsbCB1cGRhdGUgY29t
bWl0IG1zZyB3aXRoIGlzc3VlwqBkZXNjcmlwdGlvbi4KPj4KPj4gT3IgZG8geW91IHN1Z2dlc3Qg
dXNpbmcgKG9mZnMtPmRwX3NlcmRlcyAhPSAwKSB0byBjaG9vc2UgdGhlIHJlc2V0IGxpc3QgaW5z
dGVhZAo+PiB1c2luZyBuZXcgYXR0cmlidXRlcz8KPiBZb3UgY2FuJ3QgYmVjYXVzZSBvdGhlIERQ
IFBIWXMgc3VwcG9ydGVkIGJ5IHRoaXMgZHJpdmVyIHdpbGwgdXNlIDMKPiByZXNldHM6IHBoeSwg
cGh5X3BoeSBhbmQgZHBfcGh5LgoKCk9rLCB0aGVuIEkgd2lsbCB1cGRhdGUgY29tbWl0IG1zZyB3
aXRoIGlzc3VlIGRlc2NyaXB0aW9uLgoKCj4+Cj4+Pj4gU2lnbmVkLW9mZi1ieTogWGlhbmd4dSBZ
aW4gPHhpYW5neHUueWluQG9zcy5xdWFsY29tbS5jb20+Cj4+Pj4gLS0tCj4+Pj4gIGRyaXZlcnMv
cGh5L3F1YWxjb21tL3BoeS1xY29tLXFtcC11c2JjLmMgfCAxOCArKysrKysrKysrKysrKystLS0K
Pj4+PiAgMSBmaWxlIGNoYW5nZWQsIDE1IGluc2VydGlvbnMoKyksIDMgZGVsZXRpb25zKC0pCj4+
Pj4KCi0tIApsaW51eC1waHkgbWFpbGluZyBsaXN0CmxpbnV4LXBoeUBsaXN0cy5pbmZyYWRlYWQu
b3JnCmh0dHBzOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXBo
eQo=
