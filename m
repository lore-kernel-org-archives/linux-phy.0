Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 1DA4BCA0EFF
	for <linux-phy@archiver.kernel.org>; Fri, 22 Aug 2025 15:04:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=J95fXdaxi6Ktztdi+Ni9fDJgXBdeHu5T2y/u+g7/lbc=; b=yN2MIxxla8rNCx
	fwntBtZoabRHokeS3tMLn+NhMsMDqe3dITdVbo3/cjs+L/e6JQcsfvU6wNpDZj289XdeJd5j8nzMa
	ohwa0ePNpFGE1T51+4ZWvMEpNMH5Uuu/Z9r9BqSB64Qql11wxv5eUuUNx2SgE8pdLet2UKRVhHy1u
	grnYpfU+JgAlHAOpVRAxC5C6YCcMLirNGkib3v/S/e+B1iQoZyFWWGdZGuVUAH2j7tlS5iz3Yke99
	1GC/7bWSzeoD7jYhoqXfncj+SXCn0xsE8eKyYXeP6onEXa4iqbKfaGoPkdpG4bvA5IR0HeAxsHK3O
	CxfSmHQeano76h/agIZg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1upTJz-00000002wGe-3UMP;
	Fri, 22 Aug 2025 15:04:51 +0000
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1upOhx-000000029pB-2fD3
	for linux-phy@lists.infradead.org;
	Fri, 22 Aug 2025 10:09:19 +0000
Received: from pps.filterd (m0279872.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 57M8Ui1O006945
	for <linux-phy@lists.infradead.org>; Fri, 22 Aug 2025 10:09:16 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	/CUwk5QH1ZSt+M+5NuLxUaiWmoXIPaE8loSJYuZG5tk=; b=aRLhTNmwMlgE6JQe
	tWwNf2M2oC4oojXabs2KKGwrhhStri5fyzPV+aU3lhp7Jbi3ypNE+l6O+n77w+Tp
	2+SNiqs/0+tfPliih6suw9tHpp0ffs+9zMvXNPDnj13DW/s9SKKdCdxxzOJF/6Cd
	2+pirkH5OE53jNtRqWAYvIT1QB/WQS/5kyUqK+EvwumVYk4v3hTDqjc62miMMSj0
	4B14/XgwMenyqdYSqstlznouGEBuD2xxAJJ9JnOfdMzbsleFWKK2Nn9Ue5BS1F8s
	y7j3e5mNRCzD09dwMDo+M9AcSE5/u8Ow4n4rCDWtFLgLegNNY5i3RDJyrHH0ucW+
	tyuQBg==
Received: from mail-qv1-f69.google.com (mail-qv1-f69.google.com [209.85.219.69])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 48n5290tfg-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Fri, 22 Aug 2025 10:09:16 +0000 (GMT)
Received: by mail-qv1-f69.google.com with SMTP id 6a1803df08f44-70d9eb2ec77so4854056d6.2
        for <linux-phy@lists.infradead.org>; Fri, 22 Aug 2025 03:09:16 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1755857356; x=1756462156;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=/CUwk5QH1ZSt+M+5NuLxUaiWmoXIPaE8loSJYuZG5tk=;
        b=s1Df/TKogVr9AqW2TKFrjHLK2F0y4EXyHbjiBfBNkSzvMC5TnJ0SYyAyNvi33DUive
         YIgDcI+JPy51HDeI4tF8RblfvaMk4FzhBXB4D8aGgdJCPMY4TJB8u0TThUn98+6k0rQG
         a9Xih+mkABCcq6EFoBpQvr5KugS2UoCFcCockjJT4ZBLSVGe6dotpb1Kul4pxNj9L7P/
         pYdxOxl9U0M6RzYgvr21B3YRJTph0Bn8B6Y/Ry1LddOSDI7EbbOyGsA1gHpLVwR+t0Lq
         OGupRBXVw3FI8n+x+IP35gmn1FJOWoXtxj2EjDVBmtO8kseymetdzAkdkfs5/OXOvNP+
         rMPA==
X-Forwarded-Encrypted: i=1; AJvYcCXMcPRDwya1JzL+TmSObox9X6YD9sk8fgglwLueUwuxGFhqVF9DVVIK7/DPYf/yWMcbzoVmEN6GJho=@lists.infradead.org
X-Gm-Message-State: AOJu0YyqjgTS8DgVdptdRoc/1d8YSQvEKYQHmvRIrnpXrw6hSAAYyek3
	28ajPI1HBltzurXt28b74HUF6XvSXB5J60Ld0j6v4DAD4xLbbd79gH21ROlegl05PF+Rk/OdTZ1
	/N9UNoKoNRFZmF8os59BKNsbBq058B9j67qQJP+l/BK0kwrqHSSGbEaei+Fo6oYDp7+1U
X-Gm-Gg: ASbGncumP5x+GH2yZhs/jctiazIJDQQU9CJ4OIZL+Ay0Yv8TQThofqH3cuKEB3kWqJ3
	LfVYNFbTZewt9YQ2uJu3zm6b2AC2j+i961XA2U5Zyd/a9qt5jf1xbKMyXjwVb8p/K4WVu1wqOxI
	MgmqjrSgDGdUge74wMATTbuYW4vov/1iCySfIvZqhw/5OJAos3fHlE/XhgKuiJH4lvH7P0BUbxF
	v0509npXYKl1pMzGHS6EXpjHUVkgbyYJ1YVtrsQEvMSZ/P1H2dnRa8QyvKiIfS224wmDqXpmDHZ
	2y81pVxVJgxstfCnwtoiLhizGzBmi4fERDO+bGnb5UozGRUy5l/yan1aop5Sj16Aawc8Hu1QCFs
	sEeyE6sw8i7IMmkYwxU+/chEK/a7Id3SKJZn4MGNPH53CKpDLK6X2
X-Received: by 2002:ad4:4ee2:0:b0:709:d518:74fe with SMTP id 6a1803df08f44-70d972f905dmr28317776d6.38.1755857355578;
        Fri, 22 Aug 2025 03:09:15 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IGjLDedc3TEHaa5fOfhQL6JH2lzExRdfVuK/adJjjF/AbJ1wFTlhwvAYsjorze1ggX8bWHyRw==
X-Received: by 2002:ad4:4ee2:0:b0:709:d518:74fe with SMTP id 6a1803df08f44-70d972f905dmr28317336d6.38.1755857354860;
        Fri, 22 Aug 2025 03:09:14 -0700 (PDT)
Received: from umbar.lan (2001-14ba-a0c3-3a00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a0c3:3a00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 38308e7fff4ca-33650ea5f6asm3013591fa.53.2025.08.22.03.09.13
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 22 Aug 2025 03:09:13 -0700 (PDT)
Date: Fri, 22 Aug 2025 13:09:12 +0300
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: Xiangxu Yin <xiangxu.yin@oss.qualcomm.com>
Cc: Rob Clark <robin.clark@oss.qualcomm.com>,
        Dmitry Baryshkov <lumag@kernel.org>,
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
        Kishon Vijay Abraham I <kishon@kernel.org>,
        Philipp Zabel <p.zabel@pengutronix.de>, linux-arm-msm@vger.kernel.org,
        dri-devel@lists.freedesktop.org, freedreno@lists.freedesktop.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        linux-phy@lists.infradead.org, fange.zhang@oss.qualcomm.com,
        yongxing.mou@oss.qualcomm.com, tingwei.zhang@oss.qualcomm.com,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>
Subject: Re: [PATCH v3 08/14] phy: qcom: qmp-usbc: Add DP PHY configuration
 support for QCS615
Message-ID: <tdmjo5et4ohwg3g5z7wr4dhvvlqbd4z6nfo2hbzpyo77e6okdp@z5f7hlvyovx6>
References: <20250820-add-displayport-support-for-qcs615-platform-v3-0-a43bd25ec39c@oss.qualcomm.com>
 <20250820-add-displayport-support-for-qcs615-platform-v3-8-a43bd25ec39c@oss.qualcomm.com>
 <su3zkeepxaislh6q5ftqxp6uxsyg7usxmc5hkafw7yn2mgtqeu@wua72odmy7zp>
 <2e3c1559-7da2-4c6e-bcef-eb1e8dfd4c31@oss.qualcomm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <2e3c1559-7da2-4c6e-bcef-eb1e8dfd4c31@oss.qualcomm.com>
X-Authority-Analysis: v=2.4 cv=fpOFpF4f c=1 sm=1 tr=0 ts=68a841cc cx=c_pps
 a=wEM5vcRIz55oU/E2lInRtA==:117 a=xqWC_Br6kY4A:10 a=IkcTkHD0fZMA:10
 a=2OwXVqhp2XgA:10 a=EUspDBNiAAAA:8 a=VDbBU9HbQ_CCQpQHtSwA:9 a=3ZKOabzyN94A:10
 a=QEXdDO2ut3YA:10 a=OIgjcC2v60KrkQgK7BGD:22
X-Proofpoint-GUID: j9kW3clSnLQGN9dUf8vw3CjiDEDtdLiR
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwODIwMDAxMyBTYWx0ZWRfX8QcmQAZZzbrG
 I5SuMKp/0b9p3P4j993+meH3a2qMvSPBUmwDieyez7sXCT+ghHSlUxmM3T0pE1XXF54zkW8puen
 ReYIIRNI3IL5WuljNwB7bM2+BgL18wruP8n3qWHRviHktnuYhqor/zGn+ZqS+VNiqguSSDGZ3WV
 bxpGYQ4jaVMLYXb3a1vUdQHVIucHTOSNQFS8JfPfDSPi/5Y2x8P6TioHZEvO3Au/T9HhWlB23is
 wwmD1bXZT5kXI/grwLNp1i+Zams2N+g8yBORQ1NmYZJIG6aCBgnnbhL0IJX7IvfM/cRaXePtsPz
 +KRHFbSToCk/E/XPqa5nIsnfJYHU3STkQQFswhDWSX7np0PBsrUFmmcVEW7W00/zic0pTEBpOQP
 BSZNlrYT4CAfsEIBvG+6+4h1pkfOeQ==
X-Proofpoint-ORIG-GUID: j9kW3clSnLQGN9dUf8vw3CjiDEDtdLiR
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-08-22_03,2025-08-20_03,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 malwarescore=0 priorityscore=1501 spamscore=0 clxscore=1015 adultscore=0
 suspectscore=0 bulkscore=0 phishscore=0 impostorscore=0 lowpriorityscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.19.0-2508110000 definitions=main-2508200013
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250822_030917_793653_D05231C1 
X-CRM114-Status: GOOD (  20.29  )
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

T24gRnJpLCBBdWcgMjIsIDIwMjUgYXQgMDQ6NDM6MTFQTSArMDgwMCwgWGlhbmd4dSBZaW4gd3Jv
dGU6Cj4gCj4gT24gOC8yMC8yMDI1IDc6MTYgUE0sIERtaXRyeSBCYXJ5c2hrb3Ygd3JvdGU6Cj4g
PiBPbiBXZWQsIEF1ZyAyMCwgMjAyNSBhdCAwNTozNDo1MFBNICswODAwLCBYaWFuZ3h1IFlpbiB3
cm90ZToKPiA+PiBJbnRyb2R1Y2UgRGlzcGxheVBvcnQgUEhZIGNvbmZpZ3VyYXRpb24gcm91dGlu
ZXMgZm9yIFFDUzYxNSwgaW5jbHVkaW5nCj4gPj4gYXV4IGNoYW5uZWwgc2V0dXAsIGxhbmUgY29u
dHJvbCwgdm9sdGFnZSBzd2luZyB0dW5pbmcsIGNsb2NrCj4gPj4gcHJvZ3JhbW1pbmcgYW5kIGNh
bGlicmF0aW9uLiBUaGVzZSBjYWxsYmFja3MgYXJlIHJlZ2lzdGVyZWQgdmlhCj4gPj4gcW1wX3Bo
eV9jZmcgdG8gZW5hYmxlIERQIG1vZGUgb24gVVNCL0RQIHN3aXRjaGFibGUgVHlwZS1DIFBIWXMu
Cj4gPj4KPiA+PiBTaWduZWQtb2ZmLWJ5OiBYaWFuZ3h1IFlpbiA8eGlhbmd4dS55aW5Ab3NzLnF1
YWxjb21tLmNvbT4KPiA+PiAtLS0KPiA+PiAgZHJpdmVycy9waHkvcXVhbGNvbW0vcGh5LXFjb20t
cW1wLWRwLXBoeS5oIHwgICAxICsKPiA+PiAgZHJpdmVycy9waHkvcXVhbGNvbW0vcGh5LXFjb20t
cW1wLXVzYmMuYyAgIHwgMjUxICsrKysrKysrKysrKysrKysrKysrKysrKysrKysrCj4gPj4gIDIg
ZmlsZXMgY2hhbmdlZCwgMjUyIGluc2VydGlvbnMoKykKPiA+Pgo+ID4+IGRpZmYgLS1naXQgYS9k
cml2ZXJzL3BoeS9xdWFsY29tbS9waHktcWNvbS1xbXAtZHAtcGh5LmggYi9kcml2ZXJzL3BoeS9x
dWFsY29tbS9waHktcWNvbS1xbXAtZHAtcGh5LmgKPiA+PiBpbmRleCAwZWJkNDA1YmNhZjBjYWM4
MjE1NTUwYmZjOWIyMjZmMzBjYzQzYTU5Li41OTg4NTYxNjQwNWY4Nzg4ODVkMDgzNzgzOGEwYmFj
MTg5OWZiNjlmIDEwMDY0NAo+ID4+IC0tLSBhL2RyaXZlcnMvcGh5L3F1YWxjb21tL3BoeS1xY29t
LXFtcC1kcC1waHkuaAo+ID4+ICsrKyBiL2RyaXZlcnMvcGh5L3F1YWxjb21tL3BoeS1xY29tLXFt
cC1kcC1waHkuaAo+ID4+IEBAIC0yNSw2ICsyNSw3IEBACj4gPj4gICNkZWZpbmUgUVNFUkRFU19E
UF9QSFlfQVVYX0NGRzcJCQkJMHgwM2MKPiA+PiAgI2RlZmluZSBRU0VSREVTX0RQX1BIWV9BVVhf
Q0ZHOAkJCQkweDA0MAo+ID4+ICAjZGVmaW5lIFFTRVJERVNfRFBfUEhZX0FVWF9DRkc5CQkJCTB4
MDQ0Cj4gPj4gKyNkZWZpbmUgUVNFUkRFU19EUF9QSFlfVkNPX0RJVgkJCQkweDA2OAo+ID4gVGhp
cyByZWdpc3RlciBjaGFuZ2VzIGJldHdlZW4gUEhZIHZlcnNpb25zLCBzbyB5b3UgY2FuIG5vdCBk
ZWNsYXJlIGl0IGhlcmUuCj4gPgo+ID4gT3RoZXJ3aXNlIExHVE0uCj4gCj4gCj4gT2suCj4gCj4g
VGhpcyBQSFkgYXBwZWFycyB0byBiZSBRTVBfRFBfUEhZX1YyLMKgYnV0IHRoZXJlJ3Mgbm8gZGVk
aWNhdGVkIGhlYWRlciBmb3IgaXQgeWV0LsKgCj4gCj4gSeKAmWxsIGNyZWF0ZcKgfHBoeS1xY29t
LXFtcC1kcC1waHktdjIuaHzCoG5leHQgcGF0Y2ggYW5kIGRlZmluZcKgfFZDT19ESVZ8wqBhbmQg
c2hhcmVkIG9mZnNldHMgd2l0aCBWMyB3aWxsIGJlIHJlZGVmaW5lZCBhY2NvcmRpbmdseS4KCk5p
Y2UhIFRoYW5rcy4KCj4gCj4gCj4gPgo+ID4+ICAKPiA+PiAgLyogUVNFUkRFUyBDT01fQklBU19F
Tl9DTEtCVUZMUl9FTiBiaXRzICovCj4gPj4gICMgZGVmaW5lIFFTRVJERVNfVjNfQ09NX0JJQVNf
RU4JCQkJMHgwMDAxCgotLSAKV2l0aCBiZXN0IHdpc2hlcwpEbWl0cnkKCi0tIApsaW51eC1waHkg
bWFpbGluZyBsaXN0CmxpbnV4LXBoeUBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHBzOi8vbGlzdHMu
aW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXBoeQo=
