Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 1AA36CA0FFD
	for <linux-phy@archiver.kernel.org>; Wed, 27 Aug 2025 19:15:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=p4m87OLrQkSLXB8BAwlTPp1ldhgFfsZj/pMlO7CVreE=; b=CcXahi3qrpIl+4
	0h4iA3TptYVFNRqdZF8mkOjeNWbUolRT4ZIDPqGtPNoT0g2+5wU+1h30XWXGI5sdC4PglnWPdHsF6
	9moAg33b7WYmuQWE0Vbato8gihUljjQ59MnwYSH5htczbMhp0++MATZEmgLvE52fe+/XnSO0sYN76
	c4O4OlpX0ZI22YGizIHH61Jgy8TJMYHXdAPm1TGaCqhXkBxbJFy7cNz5IN4mXR0PHY5opGHBqyYs/
	xVr32nMQDmok9tX2wobMJxZQgo+xQf+vRHc9A8MQp4PxUtFKJ/WXKXlNVlVcLYupVmJf9miyRZvu4
	KLgZ4kNg+2K3obKZBWtw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1urLbv-0000000GZFm-32s4;
	Wed, 27 Aug 2025 19:15:07 +0000
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1urInd-0000000G9ky-35Be
	for linux-phy@lists.infradead.org;
	Wed, 27 Aug 2025 16:15:03 +0000
Received: from pps.filterd (m0279870.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 57R6kGeU018241
	for <linux-phy@lists.infradead.org>; Wed, 27 Aug 2025 16:15:01 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	72Snl19eM9SG13obf5lnpG+wAP1deg4gz5g3WQbmbnU=; b=WgVXKxWVJuRBsVz9
	XHDVQMH89DBN52LZM0i6JeZ4HCO9BuZ+WqFlW+VLMi/eo3WJWoTOFmZ9dqk7WD9n
	gexfdNriIyYI+ZBpsbjCX4VcJO5mNo7yVDWfCqBgY56v6EMaaU5mFcaXO4gXKKYt
	5kr87RDxfNTDSA28KzPnSE9m32vauXAfpsRUCw8xgtrmcVg30I815WVOQI9ZKNVh
	4MeJ0ttIpcouCf9Z659WXuzLiGmyIfWFPZgmr4piBzXGSGSMWEsFvc3FWa/70htd
	AXv3ABUIQ9tWJTgnkg+GQtG6wS6Zoc5CqDYoAOVFPLieKtbT710xZQVDaqWZ5eEv
	ZjXmDA==
Received: from mail-qt1-f198.google.com (mail-qt1-f198.google.com [209.85.160.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 48q5xfn6t8-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Wed, 27 Aug 2025 16:15:00 +0000 (GMT)
Received: by mail-qt1-f198.google.com with SMTP id d75a77b69052e-4b109bf1f37so146182061cf.2
        for <linux-phy@lists.infradead.org>; Wed, 27 Aug 2025 09:15:00 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1756311300; x=1756916100;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=72Snl19eM9SG13obf5lnpG+wAP1deg4gz5g3WQbmbnU=;
        b=RFSufKe3Q3aNkryyng+ti7l4jxHLDxy05pfKkIElMdd6m1Y9QI6xSLtVbeS6jmk1mU
         nZb7mlrOswGu9TdZpeH9N4aqKYiQ2FQbQE0UzBPCsChSZlrvMMvkcza+21j2AO6+Q6gN
         42uSJ3xBmoxfAMaHlqaqYU0wjFgK40rPM3G9zYq4ChvPJu1xcpNxarLI3Nwg+H7KzAFG
         +6koCFmfgBXpGMGcn5TiKdq6Fc5r2EwcErtFszHo+6cF19NrwvukwgU5mwjf07GDJbf7
         A+gcYrkud9TeZhGAxMwN60fUloLIqIfaTqFJNcn8yx88XHVAmMlGBEUdLfvZfNapArPw
         zVdg==
X-Forwarded-Encrypted: i=1; AJvYcCXFhOnJ6l12yzIa/7e4s+HKtC9a1FKm5Xyh0VQOPoVShPKu3t9KGFN9oMQKJOsnFD/L1HqqbEz8IUw=@lists.infradead.org
X-Gm-Message-State: AOJu0YzEaEFpU6MlCeAJkfDDV+xDEgB/2NGnUBncLlvB/iCoe4J/Z45/
	8WDR3l2f0KbHoN27HK/RAftowhAlp112RTGKNXOCBvKhhEwsRrJ4/PF/tk0eFuJ+GtbXF8zORLD
	4cvizQWiWOxOR47WmkwZPElkQQlzyqVFVDgOU2beScLFpO4tLeVg3vXt4B4DIR8dt9FPj
X-Gm-Gg: ASbGncuYzDtac5CA6ue8DZI2ZlViWpZUEHjI/il+KUXVpAcML+v5VB7B88Wx2Y3Bj8I
	Jblai1Ohy4lV3b57nG5Trmo+MQr/8utXsD+Mb8BrsyWJ2xe8/Z3fbj+ykWxy4e6sLExSVSi2+88
	SaNkU4lxMdYW5J09FkStwpkZvCwak+oKLqCN3oeMQ2p0dGeb8oL2Y9oi4cXF7icrvqXbkmziraR
	fNJoHZ7uxEK6zFtHC+FbJhm3tRmR+7qSe+DfxbtKnJ+MQhByrgskb3LR/+iT6oiDth2UOE8IOvm
	vN30D4yX1jLlUOPQFhzyL7s3siHO9LX2+cljPwkv5Fid3V1OnbvgWIgCbv/RmcRfqkRmt4Rzm4u
	+CpKzTlg3UxWeu+o4Ix1hjtbg9T80HF9DhuacvVWK4ukJUQvU3bjV
X-Received: by 2002:a05:622a:4ac8:b0:4b2:e0ac:63b0 with SMTP id d75a77b69052e-4b2e0ac6451mr82573141cf.77.1756311299626;
        Wed, 27 Aug 2025 09:14:59 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IFPzGcbfBYbuRl3Du92a0zsaKioL4MbDCRH7YFgTAKCluORsEyl5ZX6nTkAvEBJ0xy1YynMxA==
X-Received: by 2002:a05:622a:4ac8:b0:4b2:e0ac:63b0 with SMTP id d75a77b69052e-4b2e0ac6451mr82572361cf.77.1756311298937;
        Wed, 27 Aug 2025 09:14:58 -0700 (PDT)
Received: from umbar.lan (2001-14ba-a0c3-3a00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a0c3:3a00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-55f35c02020sm2863442e87.29.2025.08.27.09.14.57
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 27 Aug 2025 09:14:57 -0700 (PDT)
Date: Wed, 27 Aug 2025 19:14:55 +0300
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
        Konrad Dybcio <konradybcio@kernel.org>, quic_lliu6@quicinc.com
Subject: Re: [PATCH v3 11/14] phy: qcom: qmp-usbc: Finalize USB/DP switchable
 PHY support
Message-ID: <inxoswyre3qalrb3dj3lz3b5vmnpnkyy3hh4oum3z6p7yqlo2v@7g67yvvb25tc>
References: <20250820-add-displayport-support-for-qcs615-platform-v3-0-a43bd25ec39c@oss.qualcomm.com>
 <20250820-add-displayport-support-for-qcs615-platform-v3-11-a43bd25ec39c@oss.qualcomm.com>
 <jjsijdmh4hdbgd2boebtrmzvblvhz2hnl7mtv5ga76ine2fnsb@i72dz3r4lbjp>
 <82d19340-b887-4093-9d24-4b2e19b99f8b@oss.qualcomm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <82d19340-b887-4093-9d24-4b2e19b99f8b@oss.qualcomm.com>
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwODIzMDAzMyBTYWx0ZWRfXxDWxHrogWjcY
 HTv4v9fnBnwHUM1jZBXNC20k0bJZwXIZdRt3hrQdz/J9tGTA63X0QJ73xaIa22gZuJAkNWk0IXF
 U5KrtTEjz1UX+inMqlowBKQAxfTOpbDK1MMWy0ejED5DASwbVPwmo5pp/tFx06x5GZ/3+hHW1ha
 wJNZCoVRMm4WQDNQa8BN6euacnTEExHd19uiRd0J0aSkwsEQWY4nuPfC7I3UwobNUDSj/GpcK25
 0f9XqF5jCBrLLC0Iw9CrMS7OWlMkr+ZgHQzCJRyvKq7RxIRH9KZJHqVDKqVQwRRAfSKss3shMON
 zRwzSkCwrqbGoaz8xGWJRvAHFO2Yj/1RSvQYOY5px7+qfUFQMKK0RyL+8Swln3wU7cLyjwHPntp
 E6TOKDeS
X-Proofpoint-GUID: mZ0_NGsrxmwvRg3nIObhLriYwFut_vWs
X-Authority-Analysis: v=2.4 cv=MutS63ae c=1 sm=1 tr=0 ts=68af2f04 cx=c_pps
 a=mPf7EqFMSY9/WdsSgAYMbA==:117 a=xqWC_Br6kY4A:10 a=IkcTkHD0fZMA:10
 a=2OwXVqhp2XgA:10 a=EUspDBNiAAAA:8 a=M2k1YX_etJ5cuwz7zUoA:9 a=3ZKOabzyN94A:10
 a=QEXdDO2ut3YA:10 a=dawVfQjAaf238kedN5IG:22
X-Proofpoint-ORIG-GUID: mZ0_NGsrxmwvRg3nIObhLriYwFut_vWs
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-08-27_04,2025-08-26_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 phishscore=0 impostorscore=0 adultscore=0 spamscore=0 malwarescore=0
 suspectscore=0 clxscore=1015 bulkscore=0 priorityscore=1501
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.19.0-2507300000 definitions=main-2508230033
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250827_091501_899534_D5105B43 
X-CRM114-Status: GOOD (  26.44  )
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

T24gV2VkLCBBdWcgMjcsIDIwMjUgYXQgMDg6MzQ6MzlQTSArMDgwMCwgWGlhbmd4dSBZaW4gd3Jv
dGU6Cj4gCj4gT24gOC8yMC8yMDI1IDc6NDIgUE0sIERtaXRyeSBCYXJ5c2hrb3Ygd3JvdGU6Cj4g
PiBPbiBXZWQsIEF1ZyAyMCwgMjAyNSBhdCAwNTozNDo1M1BNICswODAwLCBYaWFuZ3h1IFlpbiB3
cm90ZToKPiA+PiBDb21wbGV0ZSBVU0IvRFAgc3dpdGNoYWJsZSBQSFkgaW50ZWdyYXRpb24gYnkg
YWRkaW5nIERQIGNsb2NrCj4gPj4gcmVnaXN0cmF0aW9uLCBhdXggYnJpZGdlIHNldHVwLCBhbmQg
RFQgcGFyc2luZy4gSW1wbGVtZW50IGNsb2NrCj4gPj4gcHJvdmlkZXIgbG9naWMgZm9yIFVTQiBh
bmQgRFAgYnJhbmNoZXMsIGFuZCBleHRlbmQgUEhZIHRyYW5zbGF0aW9uCj4gPj4gdG8gc3VwcG9y
dCBib3RoIFVTQiBhbmQgRFAgaW5zdGFuY2VzLgo+ID4+Cj4gPj4gU2lnbmVkLW9mZi1ieTogWGlh
bmd4dSBZaW4gPHhpYW5neHUueWluQG9zcy5xdWFsY29tbS5jb20+Cj4gPj4gLS0tCj4gPj4gIGRy
aXZlcnMvcGh5L3F1YWxjb21tL3BoeS1xY29tLXFtcC11c2JjLmMgfCAzMzEgKysrKysrKysrKysr
KysrKysrKysrKysrKysrKy0tLQo+ID4+ICAxIGZpbGUgY2hhbmdlZCwgMjk5IGluc2VydGlvbnMo
KyksIDMyIGRlbGV0aW9ucygtKQo+ID4+Cj4gPj4gIHN0YXRpYyBpbnQgcW1wX3VzYmNfcHJvYmUo
c3RydWN0IHBsYXRmb3JtX2RldmljZSAqcGRldikKPiA+PiAgewo+ID4+ICAJc3RydWN0IGRldmlj
ZSAqZGV2ID0gJnBkZXYtPmRldjsKPiA+PiBAQCAtMTcwMywxNiArMTk0NCwzMiBAQCBzdGF0aWMg
aW50IHFtcF91c2JjX3Byb2JlKHN0cnVjdCBwbGF0Zm9ybV9kZXZpY2UgKnBkZXYpCj4gPj4gIAlp
ZiAocmV0KQo+ID4+ICAJCXJldHVybiByZXQ7Cj4gPj4gIAo+ID4+IC0JLyogQ2hlY2sgZm9yIGxl
Z2FjeSBiaW5kaW5nIHdpdGggY2hpbGQgbm9kZS4gKi8KPiA+PiAtCW5wID0gb2ZfZ2V0X2NoaWxk
X2J5X25hbWUoZGV2LT5vZl9ub2RlLCAicGh5Iik7Cj4gPj4gLQlpZiAobnApIHsKPiA+PiAtCQly
ZXQgPSBxbXBfdXNiY19wYXJzZV91c2JfZHRfbGVnYWN5KHFtcCwgbnApOwo+ID4+IC0JfSBlbHNl
IHsKPiA+PiArCWlmIChxbXAtPmNmZy0+dHlwZSA9PSBRTVBfUEhZX1VTQkNfVVNCM19EUCkgewo+
ID4gU2hvdWxkIG5vdCBiZSBuZWNlc3NhcnkuCj4gCj4gCj4gR290IGl0LiBJ4oCZbGwgbWVyZ2Ug
dGhlIHBhcnNpbmcgbG9naWMgaW50byBhIHNpbmdsZSBxbXBfdXNiY19wYXJzZV9kdCBmdW5jdGlv
bi4KPiAKPiBBbHNvLCBJIGNoZWNrZWQgdGhlIGNvbXBhdGlibGUgc3RyaW5ncyBpbiB0aGUgZHRz
aSBmaWxlcyBmb3IgdGhpcyBQSFkgc2VyaWVzCj4gbG9va3MgbGlrZSBubyBjdXJyZW50IHByb2R1
Y3QgdXNlcyB0aGUgbGVnYWN5IGJpbmRpbmcuwqAKPiBJ4oCZbGwgZHJvcCBxbXBfdXNiY19wYXJz
ZV91c2JfZHRfbGVnYWN5IGluIHRoZSBuZXh0IHZlcnNpb24uCgoKTm8uIEl0J3MgX2xlZ2FjeV8s
IGl0IGhhcyBiZWVuIGltcGxlbWVudGVkIGluIG9yZGVyIHRvIHN1cHBvcnQgb2xkIERUcywKd2hp
Y2ggZXhpc3RlZCBhdCBzb21lIHBvaW50IGJ1dCB0aGVuIHdlcmUgcmVmYWN0b3JlZCBpbnRvIHRo
ZSBjdXJyZW50CnN0YXRlLiBZb3UgY2FuJ3QgcmFuZG9tbHkgZHJvcCBEVCBzdXBwb3J0LgoKPiAK
PiAKPiA+PiAgCQlucCA9IG9mX25vZGVfZ2V0KGRldi0+b2Zfbm9kZSk7Cj4gPj4gLQkJcmV0ID0g
cW1wX3VzYmNfcGFyc2VfdXNiX2R0KHFtcCk7Cj4gPj4gKwo+ID4+ICsJCXJldCA9IHFtcF91c2Jj
X3BhcnNlX3VzYjNkcF9kdChxbXApOwo+ID4+ICsJCWlmIChyZXQpIHsKPiA+PiArCQkJZGV2X2Vy
cihxbXAtPmRldiwgInBhcnNlIERQIGR0IGZhaWwgcmV0PSVkXG4iLCByZXQpOwo+ID4+ICsJCQln
b3RvIGVycl9ub2RlX3B1dDsKPiA+PiArCQl9Cj4gPj4gKwo+ID4+ICsJCXJldCA9IGRybV9hdXhf
YnJpZGdlX3JlZ2lzdGVyKGRldik7Cj4gPj4gKwkJaWYgKHJldCkgewo+ID4+ICsJCQlkZXZfZXJy
KHFtcC0+ZGV2LCAiYXV4IGJyaWRnZSByZWcgZmFpbCByZXQ9JWRcbiIsIHJldCk7Cj4gPj4gKwkJ
CWdvdG8gZXJyX25vZGVfcHV0Owo+ID4+ICsJCX0KCi0tIApXaXRoIGJlc3Qgd2lzaGVzCkRtaXRy
eQoKLS0gCmxpbnV4LXBoeSBtYWlsaW5nIGxpc3QKbGludXgtcGh5QGxpc3RzLmluZnJhZGVhZC5v
cmcKaHR0cHM6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtcGh5
Cg==
