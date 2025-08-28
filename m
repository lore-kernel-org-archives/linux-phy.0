Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 5AC20CA0EFF
	for <linux-phy@archiver.kernel.org>; Thu, 28 Aug 2025 01:41:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=UYenAcnnP+bRGvYiUbB3thLdQznuicFU8SYOGK3LadE=; b=mqwQmzKJJ3Xe/Y
	qP0Mzg73FWbx35de0sbNb7C7gf+XbNhZoSWnK6SeyhLRJp1gk9oBb58a9+Ou963K+a7zkVsf8HqR9
	KGDMetP5GVZF8sC9JB4f1gMACRhmUk2L3D61ilxcOq4nDtwdwtuY2VtWty/AGvNTcRfM2kvKrDnh3
	SE9v9UX/y8bD3hkm3+9fcnnTF3ohjGgkJ3Ws6ILaSFcbCsm1hYeVPy5fR6THkLILiMMEXQdXCllVo
	F31kdbEKMwMEIO0BnC9vv9KiEz1dFziLnv4VI0s+N73Ed5Qf1xbZ529Nuuuc+9r8vWpx+SouSnCzO
	SyajgeeZyBUfK+4gsHYA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1urRdU-0000000HWUa-3sIh;
	Thu, 28 Aug 2025 01:41:08 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1urRdR-0000000HWTw-1ylW
	for linux-phy@lists.infradead.org;
	Thu, 28 Aug 2025 01:41:06 +0000
Received: from pps.filterd (m0279864.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 57RGHH8j027480
	for <linux-phy@lists.infradead.org>; Thu, 28 Aug 2025 01:41:05 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	Ssoc0exiUKYkJTufSStqPOkqj7hxlg71SdT94NhDD5U=; b=KZcKznnEPFgJsOQn
	EbH6lO2kFL1smweAQwe0gt/nnQ022nK0GbWupThfJsU0f7ZLhDq/kYXGcn3hQK6z
	jX97ca+qt3gJQggKBuMYHUP/FiOEXKPGTqGziyUX6+JNDP1Eoo6Owcclv5gzhYoJ
	JikNeSV0C2Ia87AyLHicMHs4LvwtmwLWKtgSze6A3LvFyVFO2VvH8ywTGn6pfbez
	Qi99DmkrLD2WCiXWCqUtboc3ClyzpFsHi1/n0hlX2+o877h3lvJGweYxtx+HXv8u
	FCsMEfO5EAMC6yX95wiRWKiTapGow2J82CzabkJAb8TSNvn3l3queQl6F0YBuk7+
	xULbmA==
Received: from mail-pl1-f198.google.com (mail-pl1-f198.google.com [209.85.214.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 48se16wfv3-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Thu, 28 Aug 2025 01:41:04 +0000 (GMT)
Received: by mail-pl1-f198.google.com with SMTP id d9443c01a7336-244581a191bso849055ad.2
        for <linux-phy@lists.infradead.org>; Wed, 27 Aug 2025 18:41:04 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1756345264; x=1756950064;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to:subject
         :user-agent:mime-version:date:message-id:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=Ssoc0exiUKYkJTufSStqPOkqj7hxlg71SdT94NhDD5U=;
        b=OELCRY0qbdZU63gOyBxtrk9Eidg/R2mQgnU17QigrJdOlbBDjy3/23QUqlyJvTnYRY
         wVJNn2Ee8kh/P2vMSBPC8KDgZrWvQ9eyYwHdbEPIcO5foHhwam2xsu5I0wG9SYMCcdON
         /NZS1FFDvqW6b6BnIXM+Lk+ccucFZQ5uLYZypmvtJuztI2P3nS72kCC413yIc15zbJ3N
         YKAtd6Pe9BwDc4twa5VYD9CqSJAEgSe3X2yEx34rwosugoQnMf3+hqf9p9Dn4V+qfb6v
         Kb5BtZvp7xHtVod2tV8P2PwSystyPiKGmAI45gagptUkcKtXHVU7heUdd/bWuq0jc8tx
         macQ==
X-Forwarded-Encrypted: i=1; AJvYcCVo4gGd07j11Rv846HxpMCZWgQr/KHi0erp68cKKHtq82qyKqTmHt1a/pW6KGW0pvuVGMA4TGZMs1E=@lists.infradead.org
X-Gm-Message-State: AOJu0YzLsV439YrlT0OMExchZZKUGFp1LsW+eWQXyjo+UvpGVKZtki/B
	KxDmOPS7gc7pPrww4XqkujdyIliz2qVbZf817+ItkXl0HhYYj9ps5uVf0DuA2DKNt5jY2nwzC3r
	Skhd9qHFfqNO597cu7UK55XM2IfxJ0/QipoXaSxYyRF4Z23W6KhHaqPhefLggYJ/7+SaW
X-Gm-Gg: ASbGncvaHcU8/otPCheJQZaUoz0FAmWQ6jMZFmcrZ7GpuMSHq7Wq4EviZjOHP3fSuXA
	JH/J9mDN0dVJr9leyjw9y8xLb2IH+2keAEON2uKQGeyQXHuGYPegV4fVKIFJGglTEXX9x0aWNxo
	YpyZXaPulgMzDHYOEFrACkOpYIxDm3YNPMjopcI/TcCaBoX40tAiwhhtyf2fa0FBhTeCRACi4a/
	S/Mgy9ZTTClVZPeN1fPTCsxrg/PiLIFVcPNmDOBdIhx2CzLJuTBVityqi8rVBmtHxGI+kBQwtBQ
	SFiBFUYtbEQzOMg1Yto9YdovLRj2dqnxYSs3Ww1JaPplsGsP0odpFskhTTq+KK3+eIavmOm5Urn
	qiTrt5H6ehUysIk0qzMc+q8d/c3GlmA==
X-Received: by 2002:a17:902:f9c3:b0:23f:fd0e:e5c0 with SMTP id d9443c01a7336-2462ef98ba8mr109012215ad.9.1756345263521;
        Wed, 27 Aug 2025 18:41:03 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IGWXipYMCUO2Kzzeeg7jT0Nmhu/2L6WMJrB3Z5gpVV1nUTBpvsLjmhXjD4WaZ1s7Er0CBjoxA==
X-Received: by 2002:a17:902:f9c3:b0:23f:fd0e:e5c0 with SMTP id d9443c01a7336-2462ef98ba8mr109012105ad.9.1756345262976;
        Wed, 27 Aug 2025 18:41:02 -0700 (PDT)
Received: from [10.133.33.166] (tpe-colo-wan-fw-bordernet.qualcomm.com. [103.229.16.4])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-2466889c61bsm133558605ad.143.2025.08.27.18.40.54
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 27 Aug 2025 18:41:02 -0700 (PDT)
Message-ID: <749ec6d1-f2f9-40f5-9c41-3443698f250a@oss.qualcomm.com>
Date: Thu, 28 Aug 2025 09:40:51 +0800
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v3 07/14] phy: qcom: qmp-usbc: Move reset and regulator
 config into PHY cfg
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
 <20250820-add-displayport-support-for-qcs615-platform-v3-7-a43bd25ec39c@oss.qualcomm.com>
 <ofvzduf5xyip7w6yde2xwsrvv3tdh7ew3yyzeya2qzpqty3j7p@bnetyjowhdn5>
 <6f7c3962-ccfc-4400-a77f-399b06da93e1@oss.qualcomm.com>
 <llrt3xnd5gagovnmyzqebp2da5v67bkxjntfcgc5r5auamspyj@7v5taph3i3c4>
 <f3cc06c1-25d2-40f4-bd77-8a9c51b40efa@oss.qualcomm.com>
 <osav4kwxytfuxvnf26ugdw2qasd753smywsux5punuegbkxqgq@fp3r4esqiqyq>
From: Xiangxu Yin <xiangxu.yin@oss.qualcomm.com>
In-Reply-To: <osav4kwxytfuxvnf26ugdw2qasd753smywsux5punuegbkxqgq@fp3r4esqiqyq>
X-Proofpoint-GUID: RhAa5hjYxWzCnnZrHu3H0r1Et4wR62QN
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwODI2MDEyMCBTYWx0ZWRfX8B+OU4ok0Sr+
 vn4RLjPnJuZFDBz5TbLqtVmPvoaGJ6TYEEB2JlszjhUGZY2sNqO3YuCmf8d4XAXiU/h1ua6WVlp
 1YdI2YA8u/k0iLNUvRn3iXLGBcRSendUkoFBhyKPVwpIUe6gbsPrewg3J3gu7EuBgieCebp75Yx
 sTNu6+QveJEklYxPd+TJ3HNmsRBZXvpq4qpYjrcDiMgYxf5iOg1j8LJvN5z+cMvbmCfYHn27OeP
 LNyt3doRWS7LbQEIJV1vkzK9bzuNj1NI3spR3sOGNLYiPEUAsSvTVRKQdDS05xQlEwmLS6uekzO
 UVxxj3BKbG8EBkBPgVqqUgjDHw0a8SVlrzFKeMN9dTDaTbFgcq3aQAr4WXIjKREmgRvq2ZaOUR9
 EtocdGYv
X-Proofpoint-ORIG-GUID: RhAa5hjYxWzCnnZrHu3H0r1Et4wR62QN
X-Authority-Analysis: v=2.4 cv=CNYqXQrD c=1 sm=1 tr=0 ts=68afb3b0 cx=c_pps
 a=MTSHoo12Qbhz2p7MsH1ifg==:117 a=nuhDOHQX5FNHPW3J6Bj6AA==:17
 a=IkcTkHD0fZMA:10 a=2OwXVqhp2XgA:10 a=EUspDBNiAAAA:8 a=Nindc6OTbrst8G9qLT4A:9
 a=3ZKOabzyN94A:10 a=QEXdDO2ut3YA:10 a=GvdueXVYPmCkWapjIL-Q:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-08-27_04,2025-08-26_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 clxscore=1015 impostorscore=0 priorityscore=1501 adultscore=0 spamscore=0
 phishscore=0 suspectscore=0 bulkscore=0 malwarescore=0 classifier=typeunknown
 authscore=0 authtc= authcc= route=outbound adjust=0 reason=mlx scancount=1
 engine=8.19.0-2507300000 definitions=main-2508260120
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250827_184105_520523_B41A5ECA 
X-CRM114-Status: GOOD (  20.71  )
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

Ck9uIDgvMjcvMjAyNSAxMDozMSBQTSwgRG1pdHJ5IEJhcnlzaGtvdiB3cm90ZToKPiBPbiBXZWQs
IEF1ZyAyNywgMjAyNSBhdCAwOToyODowMFBNICswODAwLCBYaWFuZ3h1IFlpbiB3cm90ZToKPj4g
T24gOC8yMi8yMDI1IDY6MDggUE0sIERtaXRyeSBCYXJ5c2hrb3Ygd3JvdGU6Cj4+PiBPbiBGcmks
IEF1ZyAyMiwgMjAyNSBhdCAwNDoyOToyOFBNICswODAwLCBYaWFuZ3h1IFlpbiB3cm90ZToKPj4+
PiBPbiA4LzIwLzIwMjUgNzozMCBQTSwgRG1pdHJ5IEJhcnlzaGtvdiB3cm90ZToKPj4+Pj4gT24g
V2VkLCBBdWcgMjAsIDIwMjUgYXQgMDU6MzQ6NDlQTSArMDgwMCwgWGlhbmd4dSBZaW4gd3JvdGU6
Cj4+Pj4+PiBSZWZhY3RvciByZXNldCBhbmQgcmVndWxhdG9yIGNvbmZpZ3VyYXRpb24gdG8gYmUg
bWFuYWdlZCB2aWEgcW1wX3BoeV9jZmcKPj4+Pj4+IGluc3RlYWQgb2YgaGFyZGNvZGVkIGxpc3Rz
LiBUaGlzIGVuYWJsZXMgcGVyLVBIWSBjdXN0b21pemF0aW9uIGFuZAo+Pj4+Pj4gc2ltcGxpZmll
cyBpbml0aWFsaXphdGlvbiBsb2dpYyBmb3IgVVNCLW9ubHkgYW5kIFVTQi9EUCBzd2l0Y2hhYmxl
IFBIWXMuCj4+Pj4+IFBsZWFzZSBzcGxpdCBpbnRvIHR3byBwYXRjaGVzIGluIG9yZGVyIHRvIHNp
bXBsaWZ5IHJldmlld2luZy4KPj4+PiBPaywgd2lsbCBzcGxpdCByZXNldCBhbmQgcmVndWxhdG9y
IHBhcnQuCj4+Pj4KPj4+Pgo+Pj4+Pj4gU2lnbmVkLW9mZi1ieTogWGlhbmd4dSBZaW4gPHhpYW5n
eHUueWluQG9zcy5xdWFsY29tbS5jb20+Cj4+Pj4+PiAtLS0KPj4+Pj4+ICBkcml2ZXJzL3BoeS9x
dWFsY29tbS9waHktcWNvbS1xbXAtdXNiYy5jIHwgMTA4ICsrKysrKysrKysrKysrKy0tLS0tLS0t
LS0tLS0tLS0KPj4+Pj4+ICAxIGZpbGUgY2hhbmdlZCwgNTMgaW5zZXJ0aW9ucygrKSwgNTUgZGVs
ZXRpb25zKC0pCj4+Pj4+Pgo+Pj4+Pj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvcGh5L3F1YWxjb21t
L3BoeS1xY29tLXFtcC11c2JjLmMgYi9kcml2ZXJzL3BoeS9xdWFsY29tbS9waHktcWNvbS1xbXAt
dXNiYy5jCj4+Pj4+PiBpbmRleCA2MTEyOGQ2MDYyMzgzMjFkMWI1NzM2NTViM2I5ODcyMjZhYTJk
NTk0Li40ZTc5N2I3ZTY1ZGEwZTNhODI3ZWZhOWExNzlmMWMxNTBjMWI4YjAwIDEwMDY0NAo+Pj4+
Pj4gLS0tIGEvZHJpdmVycy9waHkvcXVhbGNvbW0vcGh5LXFjb20tcW1wLXVzYmMuYwo+Pj4+Pj4g
KysrIGIvZHJpdmVycy9waHkvcXVhbGNvbW0vcGh5LXFjb20tcW1wLXVzYmMuYwo+Pj4+Pj4gQEAg
LTQyMSw4ICs0MjEsOSBAQCBzdHJ1Y3QgcW1wX3BoeV9jZmcgewo+Pj4+Pj4gIAlpbnQgKCpjb25m
aWd1cmVfZHBfcGh5KShzdHJ1Y3QgcW1wX3VzYmMgKnFtcCk7Cj4+Pj4+PiAgCWludCAoKmNhbGli
cmF0ZV9kcF9waHkpKHN0cnVjdCBxbXBfdXNiYyAqcW1wKTsKPj4+Pj4+ICAKPj4+Pj4+IC0JLyog
cmVndWxhdG9ycyB0byBiZSByZXF1ZXN0ZWQgKi8KPj4+Pj4+IC0JY29uc3QgY2hhciAqIGNvbnN0
ICp2cmVnX2xpc3Q7Cj4+Pj4+PiArCWNvbnN0IGNoYXIgKiBjb25zdCAqcmVzZXRfbGlzdDsKPj4+
Pj4+ICsJaW50IG51bV9yZXNldHM7Cj4+Pj4+PiArCWNvbnN0IHN0cnVjdCByZWd1bGF0b3JfYnVs
a19kYXRhICp2cmVnX2xpc3Q7Cj4+Pj4+PiAgCWludCBudW1fdnJlZ3M7Cj4+Pj4+PiAgCj4+Pj4+
PiAgCS8qIGFycmF5IG9mIHJlZ2lzdGVycyB3aXRoIGRpZmZlcmVudCBvZmZzZXRzICovCj4+Pj4+
PiBAQCAtNDUzLDcgKzQ1NCw2IEBAIHN0cnVjdCBxbXBfdXNiYyB7Cj4+Pj4+PiAgCXN0cnVjdCBj
bGtfaHcgZHBfcGl4ZWxfaHc7Cj4+Pj4+PiAgCXN0cnVjdCBjbGtfYnVsa19kYXRhICpjbGtzOwo+
Pj4+Pj4gIAlpbnQgbnVtX2Nsa3M7Cj4+Pj4+PiAtCWludCBudW1fcmVzZXRzOwo+Pj4+Pj4gIAlz
dHJ1Y3QgcmVzZXRfY29udHJvbF9idWxrX2RhdGEgKnJlc2V0czsKPj4+Pj4+ICAJc3RydWN0IHJl
Z3VsYXRvcl9idWxrX2RhdGEgKnZyZWdzOwo+Pj4+Pj4gIAo+Pj4+Pj4gQEAgLTUxNCw5ICs1MTQs
MTggQEAgc3RhdGljIGNvbnN0IGNoYXIgKiBjb25zdCB1c2IzcGh5X3Jlc2V0X2xbXSA9IHsKPj4+
Pj4+ICAJInBoeV9waHkiLCAicGh5IiwKPj4+Pj4+ICB9Owo+Pj4+Pj4gIAo+Pj4+Pj4gLS8qIGxp
c3Qgb2YgcmVndWxhdG9ycyAqLwo+Pj4+Pj4gLXN0YXRpYyBjb25zdCBjaGFyICogY29uc3QgcW1w
X3BoeV92cmVnX2xbXSA9IHsKPj4+Pj4+IC0JInZkZGEtcGh5IiwgInZkZGEtcGxsIiwKPj4+Pj4+
ICtzdGF0aWMgY29uc3QgY2hhciAqIGNvbnN0IHVzYjNkcHBoeV9yZXNldF9sW10gPSB7Cj4+Pj4+
PiArCSJwaHlfcGh5IiwgImRwX3BoeSIsCj4+Pj4+PiArfTsKPj4+Pj4+ICsKPj4+Pj4+ICtzdGF0
aWMgY29uc3Qgc3RydWN0IHJlZ3VsYXRvcl9idWxrX2RhdGEgcW1wX3BoeV91c2JfdnJlZ19sW10g
PSB7Cj4+Pj4+PiArCXsgLnN1cHBseSA9ICJ2ZGRhLXBoeSIgfSwKPj4+Pj4+ICsJeyAuc3VwcGx5
ID0gInZkZGEtcGxsIiB9LAo+Pj4+PiBQbGVhc2UgZmlsbCBpbiB0aGUgdmFsdWVzIGZvciBhbGwg
cGxhdGZvcm1zLiBJdCB3ZWxsIG1pZ2h0IGJlIHRoYXQgdGhleQo+Pj4+PiBhbGwgc2hhcmUgdGhl
IHNhbWUgY3VycmVudCByZXF1aXJlbWVudHMuCj4+Pj4gSSBjaGVja2VkIHByZXZpb3VzIERQIHBy
b2plY3RzIGFuZCBmb3VuZCBhbGwgcGxhdGZvcm1zIGNvbmZpZ3VyZWQgdmRkYS1waHkgd2l0aCAy
MS44bUEgYW5kIHZkZGEtcGxsIHdpdGggMzZtQS4KPj4+IE5vLiBPbiBTRE02NjAgYW5kIE1TTTg5
OTggRFAgZGVmaW5lcyA3My40IG1BIGZvciAwLjlWIHN1cHBseSBhbmQKPj4+IDEyLjU2MCBtQSBm
b3IgMS44IFYgc3VwcGx5Lgo+Pj4KPj4+PiBIb3dldmVyLCBJIGRpZG7igJl0IGZpbmQgVVNCIGxv
YWQgY29uZmlncyBpbiBkb3duc3RyZWFtIGFuZCBmcm9tIFNvQyByZWxhdGVkIHBvd2VyIGdyaWRz
Ogo+Pj4gUGxlYXNlIGNoZWNrIHRoZSBhY3R1YWwgSFcgZG9jdW1lbnRhdGlvbiBmb3IgdGhvc2Ug
cGxhdGZvcm1zLgo+Pj4KPj4+PiBRQ1M2MTUKPj4+PiBMMTJBOiBWRERBX1VTQjBfU1NfMVA4L1ZE
REFfVVNCMV9TU18xUDggSXBrOjIwbWEKPj4+PiBMNUE6IFZEREFfVVNCMF9TU18wUDkvVkREQV9V
U0IxX1NTXzBQOSBJcGs6NTBtQQo+Pj4+Cj4+Pj4gc202MTUwCj4+Pj4gTDExQTogVkREQV9VU0Iw
X1NTXzFQOC9WRERBX1VTQjFfU1NfMVA4IElwazoyMG1hCj4+Pj4gTDRBOiBWRERBX1VTQjBfU1Nf
MFA5L1ZEREFfVVNCMV9TU18wUDkgSXBrOjUwbUEKPj4+Pgo+Pj4+IFNNNjExNQo+Pj4+IEwxMkE6
IFZEREFfVVNCX1NTX0RQXzFQOCBJcGs6MTMuM21BCj4+Pj4gTDRBOiBWRERBX1VTQl9TU19EUF9D
T1JFIElwazo2Ni4xbUEKPj4+Pgo+Pj4+IFFDTTIyOTAKPj4+PiBMMTNBOiBWRERBX1VTQl9TU19E
UF8xUDggSXBrOjEzLjNtQQo+Pj4+IEwxMkE6IFZEREFfVVNCX1NTX0RQX0NPUkUgSXBrOjY2LjFt
QQo+Pj4+Cj4+Pj4gc2RtNjYwCj4+Pj4gTERPMTBBOiBWRERBX1VTQl9TU18xUDggSXBrOjE0bUEK
Pj4+PiBMRE8xQjogVkREQV9VU0JfU1NfQ09SRSBJcGs6NjguNm1BCj4+Pj4KPj4+PiBtc204OTk4
Cj4+Pj4gTDJBOiBWRERBX1VTQl9TU18xUDIgSXBrOjE0LjJtQQo+Pj4+IEwxQTogVkREQV9VU0Jf
U1NfQ09SRSBJcGs6NjguNm1BCj4+Pj4KPj4+PiBJdCBzZWVtcyB0aGUgVVNCIHBvd2VyIHJlcXVp
cmVtZW50cyB2YXJ5IGFjcm9zcyBwbGF0Zm9ybXMsIGFuZCB0aGUKPj4+PiAyMTgwMCDCtUEgbG9h
ZCBmb3IgdmRkYS1waHkgZXhjZWVkcyB0aGUgSXBrIHJhbmdlIGluIG1vc3QgY2FzZXMuCj4+PiBJ
cGsgYmVpbmcgPwo+Pgo+PiBJUEs6IEluc3RhbnRhbmVvdXMgUGVhayBDdXJyZW50Cj4+Cj4+Cj4+
Pj4gSSBhbHNvIHRlc3RlZCByZW1vdmluZyB0aGUgbG9hZCBzZXR0aW5ncyBmb3IgVVNCK0RQIFBI
WSwgYW5kIERQIHN0aWxsIHdvcmtzIGZpbmUuCj4+PiBJdCBtb3N0bHkgd29ya3MgZWl0aGVyIGJl
Y2F1c2Ugd2UgZG9uJ3QgYWxsb3cgbW9kZSBzd2l0Y2hpbmcgb24gb2xkZXIKPj4+IHBsYXRmb3Jt
cyAoeWV0KSBvciBiZWNhdXNlIHNvbWVib2R5IGVsc2UgaGFzIGFscmVhZHkgdm90ZWQgYW5kIHRo
YXQgdm90ZQo+Pj4ga2VlcHMgdGhlIHJlcXVpcmVkIG1vZGUuCj4+Pgo+Pj4gQXMgeW91J3ZlIHN0
YXJ0ZWQgbG9va2luZyBvbiBzcGVjaWZ5aW5nIHByb3BlciBjdXJyZW50IGxvYWQsIHBsZWFzZQo+
Pj4gZmluaXNoIHRoZSB3b3JrLgo+Pgo+PiBEaXNjdXNzZWQgd2l0aCBjaGlwIHZhbGlkYXRpb24g
YW5kIHBvd2VyIFNXIHRlYW1zLgo+Pgo+PiBUaGUgcG93ZXIgZ3JpZCB0YWJsZXMgYXJlIHByaW1h
cmlseSB1c2VkIHRvIGVuc3VyZSBlYWNoIG1vZHVsZSByZWNlaXZlc8KgCj4+IHRoZSBjb3JyZWN0
IHZvbHRhZ2UsIGFuZCB0aGV5IGRlZmluZSB0aGUgSXBrIGZvciBlYWNoIHN1Ym1vZHVsZS7CoAo+
Pgo+PiBXaGlsZSB0aGV5IGRvbuKAmXQgc3BlY2lmeSByZWNvbW1lbmRlZCByZWd1bGF0b3IgbG9h
ZCB2YWx1ZXMsIHRoZSBJcGsgdmFsdWVzCj4+IHJlZmxlY3QgdGhlIGV4cGVjdGVkIHBvd2VyIGRv
bWFpbiBzdHJlbmd0aCBhbmQgY2FuIGhlbHAgZXN0aW1hdGUgdGhlIHZvdGluZwo+PiBzdHJlbmd0
aCBuZWVkZWQgZm9yIGVhY2ggc3VwcGx5Lgo+Pgo+PiBTaW5jZSByZWd1bGF0b3IgbG9hZCBpcyBt
YWlubHkgdXNlZCBmb3Igdm90aW5nLCBJ4oCZbGwgZGVmaW5lIGluaXRfbG9hZF91QSBpbgo+PiB0
aGUgbmV4dCBwYXRjaCBiYXNlZCBvbiBlYWNoIFNvQ+KAmXMgSXBrIHZhbHVlcyB0byBiZXR0ZXIg
YWxpZ24gd2l0aCBoYXJkd2FyZSBleHBlY3RhdGlvbnMuCj4gSWYgdGhlIElwayBpcyBkZWZpbmVk
IHBlciBtb2R1bGUsIHRoZW4gaXQncyBmaW5lLgoKClllcywgdW5kZXIgZWFjaCByZWd1bGF0b3Is
IG11bHRpcGxlIHN1Ym1vZHVsZXMgYXJlIHBvd2VyZWQsIGFuZCBlYWNoIHN1Ym1vZHVsZSBkZWZp
bmVzIGl0cyBvd24gSXBrIHZhbHVlLgoKCgotLSAKbGludXgtcGh5IG1haWxpbmcgbGlzdApsaW51
eC1waHlAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwczovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFp
bG1hbi9saXN0aW5mby9saW51eC1waHkK
