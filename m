Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 230CDCAC58E
	for <linux-phy@archiver.kernel.org>; Fri, 12 Sep 2025 02:15:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=rqYP+B8NkTeEnWjSsW9prXnZPo2CrqiYXg+QuaWzT4U=; b=4TUSSAW2bS/Awp
	fSN6jHabFYaCfriwxPlhjMyyya5JEdivl/gDCj16ITT731jYmH1tPJQAq0ddzzELWLtHQNszE8okM
	laD5Qk3wpqpjkPLSR2kSmnCKoERZjZXX3olyguZSVzjHzdbojleyMQJtrswCJZWykTOYS4cF1jasW
	bk6vnU7BX3zPhUV2xzcM1ob+Y4sUm3K53LMVZblerfx1PKGEpLGJL8YXSgbRNbMjIE82usWSnVdb6
	eJnAyUV5eb78n7jmH6OF8xg4X3E3tvgWSNb5WG5j+ob4/bvk6mpxJJxPNlai+fAxrOEE/GB1ZxWpy
	nObtIi4MYBWn6iuKHn8A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uwtJs-00000006T6K-2FUT;
	Fri, 12 Sep 2025 02:15:24 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uwtJp-00000006T4G-0knj
	for linux-phy@lists.infradead.org;
	Fri, 12 Sep 2025 02:15:23 +0000
Received: from pps.filterd (m0279864.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 58BKacZ2015134
	for <linux-phy@lists.infradead.org>; Fri, 12 Sep 2025 02:15:20 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	Hkf9o+nS9HTVNHq6n76xt6lAi8TAxB+Rb2oCezdkjY4=; b=ZaBtnepjRSjQgZLO
	qPvFGKhjsOTfW8Iv5WaBy3odjk41lZqUqNiiDifSR+/4AgUhKG7CAW7AhLOe4+tG
	5RDt82j0++qNzCrNelzF8VXw5iqx8m38MqOKFGysZCZXl9yw53jCYaDS1Mz+zLYL
	gAbx72dpYZb1Nx/QuUSxqPJbHWrZSL9z0kpk9kDtm+/5KoToUXcbBfQHfdLb+4kb
	znk71yZ7ekCmjUiFF5EXKRO5gPws5UCMVFhZzpVB5dEXZeZfSu6LRAtNfw93uitd
	w40eVQzp5FwMg+Fhv7P72+e7GUPMPofxIGJ+WXR8ziQZ6xa3kFTsxq4HLy3RDNdC
	Hln4tQ==
Received: from mail-pj1-f70.google.com (mail-pj1-f70.google.com [209.85.216.70])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 490e4m9r9x-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Fri, 12 Sep 2025 02:15:20 +0000 (GMT)
Received: by mail-pj1-f70.google.com with SMTP id 98e67ed59e1d1-32ddc03aee8so293374a91.2
        for <linux-phy@lists.infradead.org>; Thu, 11 Sep 2025 19:15:19 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1757643319; x=1758248119;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to:subject
         :user-agent:mime-version:date:message-id:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=Hkf9o+nS9HTVNHq6n76xt6lAi8TAxB+Rb2oCezdkjY4=;
        b=uUIcOJNnG0jM3NtFHwyE42FznvKQH7AYOLdxbNfiX83rYk1m7qi1MilDuiQegeP2Zl
         yFfy97OEOAOglJLfM87fQK3FO9PoP0SVsFJWu5t95wiFvab90v3F67lAADyNXB7urZ4/
         WYwXixRtxF5plYw1po23diasj4/IjMSiNsat3n8uHjl1LLbCnmcKIpe8J+kTGRc4UQ5U
         MeQS+54kOrU5QkWdv5f8OKlp5IfFcAYalS6KRrfXZ78rnuNG5wPSvJklDVJVAncevd6j
         zpMWANmy/R+r2MMSZUAnEWT4RTDE9dcjIW+pTAUozT84FBFg55fljYiHf4Ys+rEW9NyH
         dWDw==
X-Forwarded-Encrypted: i=1; AJvYcCWrr25jIMurD+aooVd58+DB+pyxEsY2fD2Mc2EdQTViurdjFt4pb4cweirNKG9MGwuMqY6pWh76ngQ=@lists.infradead.org
X-Gm-Message-State: AOJu0Yz660Ec4/Rq+OABWA/Hy6Ia8B/jXfgu+hC1wnmXyK5Nh5PxfkFb
	AUhwClAkOrY4L59Vk2BBiUBQCViVUw6++ip4lCngRJ7UGbBY75qqrkYuR2s+UekIncQxxNf24Bo
	T7vimYLqYBVCd8P16hpeg/1j5F0V4pZC4rEqOULWxnSx5TGU2dMKpKNotZAZwS4BoNt8P
X-Gm-Gg: ASbGncvVNo0o+UI1a8gP1G+FoyNEqmBUW2rX+dN+5F07R6ppniH8p+NDLX/ItpFcQtb
	YUQ5BWpLzRPX1X+HPFaaOLn0V8qDWzn3LeQgfmCSeOrWVJmRJljp/7VffsNfaYC595FGG+UEsJO
	LuN84MzBjgiyE3oIsM/yUBcWik9vy56LfwazTZN3W2Z1zX07kpPg0dZiXAcuh27TMtqRqKJCgyM
	vepdnH+rxUwERenILp4MQC7XRzASBzy9PP1vDxjzvoEvtkqacuH5kvOemKH60kRbpBSBLk45rYU
	7OiCr5FDn43w87mnTSZA3bOaRpxqVqh683zEdiNPFq0kJOK/ylkxKehar1sOSBQmvuYgUR1ooMa
	nfFXYSmNem/DC9RREn7TPR8B1LGPa+g==
X-Received: by 2002:a17:90b:4f8c:b0:32b:dfd7:e42c with SMTP id 98e67ed59e1d1-32de4f90745mr761553a91.5.1757643318983;
        Thu, 11 Sep 2025 19:15:18 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IFq4qCtfCRzD4DYH+qfi319AoKpVQ/JAo5O1h9fSmiMtLZQuLKN33nsWtedkSONVwq6ENs6Lw==
X-Received: by 2002:a17:90b:4f8c:b0:32b:dfd7:e42c with SMTP id 98e67ed59e1d1-32de4f90745mr761524a91.5.1757643318503;
        Thu, 11 Sep 2025 19:15:18 -0700 (PDT)
Received: from [10.133.33.174] (tpe-colo-wan-fw-bordernet.qualcomm.com. [103.229.16.4])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-77607b1edc7sm3597818b3a.66.2025.09.11.19.15.11
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 11 Sep 2025 19:15:17 -0700 (PDT)
Message-ID: <e974ffc4-9bcf-4de3-ac09-76b34b47cf5b@oss.qualcomm.com>
Date: Fri, 12 Sep 2025 10:15:08 +0800
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v4 04/13] phy: qcom: qmp-usbc: Add QCS615 DP PHY
 configuration and init data
To: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
Cc: Vinod Koul <vkoul@kernel.org>, Kishon Vijay Abraham I
 <kishon@kernel.org>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley
 <conor+dt@kernel.org>,
        Philipp Zabel <p.zabel@pengutronix.de>,
        Rob Clark <robin.clark@oss.qualcomm.com>,
        Dmitry Baryshkov
 <lumag@kernel.org>,
        Abhinav Kumar <abhinav.kumar@linux.dev>,
        Jessica Zhang <jessica.zhang@oss.qualcomm.com>,
        Sean Paul <sean@poorly.run>,
        Marijn Suijten <marijn.suijten@somainline.org>,
        David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>,
        linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        dri-devel@lists.freedesktop.org, freedreno@lists.freedesktop.org,
        fange.zhang@oss.qualcomm.com, yongxing.mou@oss.qualcomm.com,
        li.liu@oss.qualcomm.com, tingwei.zhang@oss.qualcomm.com,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>
References: <20250911-add-displayport-support-for-qcs615-platform-v4-0-2702bdda14ed@oss.qualcomm.com>
 <20250911-add-displayport-support-for-qcs615-platform-v4-4-2702bdda14ed@oss.qualcomm.com>
 <3ihzpsmf3btzeltxggdnbheji6bdeornravua76adw5dhotztu@e3fca2prl45r>
From: Xiangxu Yin <xiangxu.yin@oss.qualcomm.com>
In-Reply-To: <3ihzpsmf3btzeltxggdnbheji6bdeornravua76adw5dhotztu@e3fca2prl45r>
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwOTA2MDAzOCBTYWx0ZWRfX7o389eRq9pOy
 elbtjipJ2CT8TB4T5oRwJy8nQPfMd1ZqczwjFmygiVouAmQIhV6ZPLAT+1LciGD3S7XDAH5QK3x
 I3ZdJrPnGCT45b4J5sVkyEBUPapIdTxJAmGA6TFmYjPD4t+ATpKf0BNT3bSJ23eQqBBHBKwVVq8
 kXKRMQP1RFWvDO5mErw9fIwcltFtt2h6ZJLIw0GEIFqc+itj45VrQgDvLwtvsDNm7BUMY5RRprH
 1P96UE7Y3XKFLPmqpyQPs/gmuceTMfBxb6BVDxBWZxu5DJrhmGyHzc7keWfssCd2OVFCUG40GJu
 Rf9psX0m1jUv40dxtV5v8zldlhFSL7wPT40CIUCqMJ53x6ca30hIBYMc0Hdt2huYHwftNBT+r7h
 pPre+REX
X-Authority-Analysis: v=2.4 cv=J66q7BnS c=1 sm=1 tr=0 ts=68c38238 cx=c_pps
 a=0uOsjrqzRL749jD1oC5vDA==:117 a=nuhDOHQX5FNHPW3J6Bj6AA==:17
 a=IkcTkHD0fZMA:10 a=yJojWOMRYYMA:10 a=EUspDBNiAAAA:8 a=GWYxvd0U3zBiv3KBAmEA:9
 a=3ZKOabzyN94A:10 a=QEXdDO2ut3YA:10 a=mQ_c8vxmzFEMiUWkPHU9:22
X-Proofpoint-GUID: bbm-EbaU_gWD4UHzC5-tpznQ0GqRdOGF
X-Proofpoint-ORIG-GUID: bbm-EbaU_gWD4UHzC5-tpznQ0GqRdOGF
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1117,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-09-12_01,2025-09-11_02,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 impostorscore=0 malwarescore=0 clxscore=1015 spamscore=0 phishscore=0
 adultscore=0 priorityscore=1501 suspectscore=0 bulkscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.19.0-2507300000 definitions=main-2509060038
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250911_191521_827931_1FB0A136 
X-CRM114-Status: GOOD (  16.66  )
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

Ck9uIDkvMTIvMjAyNSA5OjI0IEFNLCBEbWl0cnkgQmFyeXNoa292IHdyb3RlOgo+IE9uIFRodSwg
U2VwIDExLCAyMDI1IGF0IDEwOjU1OjAxUE0gKzA4MDAsIFhpYW5neHUgWWluIHdyb3RlOgo+PiBJ
bnRyb2R1Y2UgUUNTNjE1IGhhcmR3YXJlLXNwZWNpZmljIGNvbmZpZ3VyYXRpb24gZm9yIERQIFBI
WSBtb2RlLAo+PiBpbmNsdWRpbmcgcmVnaXN0ZXIgb2Zmc2V0cywgaW5pdGlhbGl6YXRpb24gdGFi
bGVzLCB2b2x0YWdlIHN3aW5nCj4+IGFuZCBwcmUtZW1waGFzaXMgc2V0dGluZ3MuCj4+Cj4+IEFk
ZCBxY3M2MTUtcW1wLXVzYjMtZHAtcGh5IGNvbXBhdGlibGUgc3RyaW5nIHRvIGFzc29jaWF0ZSBR
Q1M2MTUKPj4gcGxhdGZvcm0gd2l0aCBpdHMgVVNCL0RQIHN3aXRjaGFibGUgUEhZIGNvbmZpZ3Vy
YXRpb24uCj4gVGhpcyBzaG91bGQgYmUgdGhlIGxhc3QgcGF0Y2ggaW4gdGhlIHNlcmllczogb25j
ZSB5b3UgYWRkIHRoZSBjb21wYXRpYmxlCj4gc3RyaW5nLCBpdCBpcyBleHBlY3RlZCB0aGF0IGl0
IHdvcmtzLgo+Cj4gVGhlIHBhdGNoIExHVE0uCgoKSW4gdjNbMTIvMTRdLCB0aGUgY29tcGF0aWJs
ZSBzdHJpbmcgd2FzIHBsYWNlZCBpbiB0aGUgbGFzdCwgYW5kIHlvdSByZW1pbmQgbWUKd2lsbCB0
cmlnZ2VyIHVudXNlZCB3YXJuaW5ncyBmb3IgdGhlIGVhcmxpZXItZGVmaW5lZCBxY3M2MTVfdXNi
M2RwX3BoeV9jZmcuClNvIEkgbWVyZ2VkIHRoZW0gaW4gdjQuwqAKCklmIG1vdmUgdGhpcyBwYXRj
aCB0byB0aGUgZW5kLCBwYXRjaCB2NFswNy8xM10gd2lsbCBoaXQgdW51c2VkIHdhcm5pbmdzIGR1
ZSB0bwptaXNzaW5nIHJlZmVyZW5jZXMuIFNob3VsZCBJIHNxdWFzaCBwYXRjaGVzIDA0ICYgMDcg
YW5kIG1vdmUgdGhlbSB0byB0aGUgZW5kPwpJJ20gY29uY2VybmVkIHRoZSByZXN1bHRpbmcgcGF0
Y2ggbWlnaHQgYmUgdG9vIGxhcmdlLgoKCj4+IFNpZ25lZC1vZmYtYnk6IFhpYW5neHUgWWluIDx4
aWFuZ3h1LnlpbkBvc3MucXVhbGNvbW0uY29tPgo+PiAtLS0KPj4gIGRyaXZlcnMvcGh5L3F1YWxj
b21tL3BoeS1xY29tLXFtcC11c2JjLmMgfCAxNDEgKysrKysrKysrKysrKysrKysrKysrKysrKysr
KysrKwo+PiAgMSBmaWxlIGNoYW5nZWQsIDE0MSBpbnNlcnRpb25zKCspCj4+CgotLSAKbGludXgt
cGh5IG1haWxpbmcgbGlzdApsaW51eC1waHlAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwczovL2xp
c3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1waHkK
