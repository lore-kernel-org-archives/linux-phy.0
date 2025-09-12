Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 366E8CAC582
	for <linux-phy@archiver.kernel.org>; Fri, 12 Sep 2025 11:46:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=GFH+XSRR8VLiXYj4z6ZEmyoNyZ03p/r3yM8Q+HhsgwM=; b=vgT8RO3gw/uy9S
	Uhq3gYGjJkwJlE1+4Imi6OL/Q/oA81BRsUdtnVrm/WRuMea6GxqMMKl95dnXbwY0vp86f9WShoRdm
	GLwXyxg3FJpAlH7vutR0BxKJ73gZ0pOcSVfgYZZ1gt/RlLbHB3+rKmVtr3k1cqXifuzaE2/lDRs/u
	kKbLHOe6h7lH0b2ynnn95RWqx35CNc3wyJoewE5IOY8wxiNMOX6vcC6CY4/59OtrXXrAQvTy/YrTe
	ybwuFr+Z6AlYBLmzWo7kKDR2ljW09J+gT09iB9ZC0Gub8JRTuRbduIJcXCBrJUXtF0AxJdLSZGa/G
	VoTeh0nX7bot77ou/FSg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1ux2EV-00000008xMW-3X6j;
	Fri, 12 Sep 2025 11:46:27 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1ux2ET-00000008xK5-06GA
	for linux-phy@lists.infradead.org;
	Fri, 12 Sep 2025 11:46:26 +0000
Received: from pps.filterd (m0279867.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 58C9fE0d001288
	for <linux-phy@lists.infradead.org>; Fri, 12 Sep 2025 11:46:24 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	7bZSPwCaveiNyjpoVwp2JaCT2rjVag5Jy+2B65HThZ8=; b=M9Md+6Sbi3Z5o7Sj
	0pPKOLsdok6kNB6liuAecuvU8W3GY9mtrWjlG0q/ItPlQY2xkHSECp2X/TphSiFJ
	+kS8eRpb/hE0pzK7m2Eg7gLamreGUY/ohLmuXby/H5sof+kVeg5tmxrzlNCye+SC
	9WPNPKtRVmYkYJw/gkmim3xTDMaKfi12Cokxf/qZSiHfonaMVD9tNDflDi9kXBHA
	1cyMaeGaccb3lQXqd5SPINvOkvYwLQMmiNbvQHTwWdo4/CPOtHujvuawS+b6MTiE
	HVsaAOcCd9+wp3ydOAsl+7JNPcKyjKu0dJxMnib1ZdKKdtXT/QwR6GVFBvB2/sCN
	eJoEmA==
Received: from mail-pj1-f70.google.com (mail-pj1-f70.google.com [209.85.216.70])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 493f6h6gx6-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Fri, 12 Sep 2025 11:46:24 +0000 (GMT)
Received: by mail-pj1-f70.google.com with SMTP id 98e67ed59e1d1-329976ff73cso427153a91.1
        for <linux-phy@lists.infradead.org>; Fri, 12 Sep 2025 04:46:24 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1757677583; x=1758282383;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to:subject
         :user-agent:mime-version:date:message-id:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=7bZSPwCaveiNyjpoVwp2JaCT2rjVag5Jy+2B65HThZ8=;
        b=hNY15i+PGCMwDU3/6qblt4oWk6jU8ygrs6OnLpfo1Qxy3VB7IuYrz+R6JCThSI+kul
         Z1qpgkC3/8BtzjVLcLG3TQ435mfVP2xRHM52jgousQ4fHByV25j+HyDaLELaaHpT3iCl
         LRcC17D3a8rxkLLsOinDm17uSHzht9xxS8kwzdpo0m2r7uY9amLHV6WrU8U1Yz9uJA1z
         WaV1J2VcdFRqwX+2Tk0wp50x1bCKkfs7B52OjJBcthppDbUztUnqILV3OoV1/RMPmoiT
         vWYUZTLKnrdyLM5hkubScmivlaghjkF/D0pT5+Q8h+IUj8Tdqs4+2zRgM6U2x/D2ediH
         iPwg==
X-Forwarded-Encrypted: i=1; AJvYcCWjPSe33OLVklHLiz+giIIjgNEl3C09ZzmLDTvM+QJW8sN650ej+1Q5FRLELIHmLApj6+mjiNi0FXc=@lists.infradead.org
X-Gm-Message-State: AOJu0YwVFs6TNA3MwLPD05iI1qWaUF4QANu7475l/4BpofbA3kLYQ0bs
	ZOQbUGOhzhkc4WozW4orDj9qdk07x0QkmsZL3hAzHvvXArUukcNXvykVsv1zFdI3P86LJFIQ3Tk
	RvXVdZhdW5JrEEh8iY1wokuRKBjugWo0Jb+8s7NMACTc9QJjVfw+VyjpIFcORsSEiVUPN
X-Gm-Gg: ASbGncsLhX5jLRSYdxRVCsCp7gA6+ozbsInM+lVcUlEOHp93+IGhMfcKbJol8VzFtRt
	uzraAGDhxyRhTubxyAidDj+KWYlQbzH7nnYh/kSAxCK+3yu2lUKu+xE1m/hospSJEczdHPfIR1P
	UuuSqilU8X398Spdh+5/sFLhMujFrA8hoEYvKgoVh2kShVRCSNQLVd9lrtQRUL2L0CwQAaPjSQD
	WN99RWQ1w7mzKYOavEmwzSEFBkL4FjP5tdn6PQV8ClWzTF4l/gJ0R7OtmiAYI2OuaIg+H9EUz9o
	KSdBkT8Pw3TzjBMkcqm1/mUpuLpnPgFXXHZZ/xb/pJsPVw1Cueghxvus1rH3UjPyFsfJ8yvBOHx
	v/8PjwcIVo3JfodEMnLsnXZr1zdphpQ==
X-Received: by 2002:a17:90b:3b49:b0:32d:ed8d:722b with SMTP id 98e67ed59e1d1-32ded8d7605mr1011415a91.2.1757677583421;
        Fri, 12 Sep 2025 04:46:23 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IHOO3x9HBu+6RQUyafNlV1VtHCgdpyhgYvQ2Af2AZB8bDMWIdgsW8DZPmtsiC8C+rNUWBKRqA==
X-Received: by 2002:a17:90b:3b49:b0:32d:ed8d:722b with SMTP id 98e67ed59e1d1-32ded8d7605mr1011388a91.2.1757677582972;
        Fri, 12 Sep 2025 04:46:22 -0700 (PDT)
Received: from [10.133.33.174] (tpe-colo-wan-fw-bordernet.qualcomm.com. [103.229.16.4])
        by smtp.gmail.com with ESMTPSA id 41be03b00d2f7-b54a3aa9234sm4626367a12.54.2025.09.12.04.46.16
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 12 Sep 2025 04:46:22 -0700 (PDT)
Message-ID: <d08bd288-6aa2-4a7b-9424-0e2e220f1c1e@oss.qualcomm.com>
Date: Fri, 12 Sep 2025 19:46:13 +0800
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v4 04/13] phy: qcom: qmp-usbc: Add QCS615 DP PHY
 configuration and init data
To: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>,
        Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
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
 <e974ffc4-9bcf-4de3-ac09-76b34b47cf5b@oss.qualcomm.com>
 <274b27e6-ef43-4597-a7d6-1f948f2e6c5b@oss.qualcomm.com>
From: Xiangxu Yin <xiangxu.yin@oss.qualcomm.com>
In-Reply-To: <274b27e6-ef43-4597-a7d6-1f948f2e6c5b@oss.qualcomm.com>
X-Proofpoint-ORIG-GUID: wsZDlsmLPYTqre389EoW3iXt54AUokEc
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwOTEwMDE3NyBTYWx0ZWRfX8kIVhrcBB3YH
 rj2pNAv+sUmSByPbcY45dOLcJTV7/lukIEB4jYIyCIT62wFoK6VC+jNUirfn4F8AlIjMrG5JkOo
 DSdZ+xEiQZHLyw0Jp9GU5/BQS1pexNwb1n5dUleUert29iG/HPnVeyWiIEA+FxXlp1qphQlF3Ha
 0Kp2SWCf4NSV6wNiLGTFnBcbcTP+ZyxlZlnvw47LnKgp8UG+jzLOY3bUxrjwCejtTj5r1Qz6fko
 k4f/3WL4X97winHCKhun5tDl1MkMS/+vGMGVlGUWSg40AOmYkhHNRvCNInCh1F+uunHWnEMcCrk
 iOr7moudNrGLbCkMPUU5tCWHVjEjmyaxK34F1UuV4nNTiM57+df4HSLNePwF3vmJJFc4NADH7jg
 aUJ7ejrR
X-Authority-Analysis: v=2.4 cv=WPB/XmsR c=1 sm=1 tr=0 ts=68c40810 cx=c_pps
 a=0uOsjrqzRL749jD1oC5vDA==:117 a=nuhDOHQX5FNHPW3J6Bj6AA==:17
 a=IkcTkHD0fZMA:10 a=yJojWOMRYYMA:10 a=EUspDBNiAAAA:8 a=1iQPH-MNloaYeFAjbucA:9
 a=3ZKOabzyN94A:10 a=QEXdDO2ut3YA:10 a=mQ_c8vxmzFEMiUWkPHU9:22
X-Proofpoint-GUID: wsZDlsmLPYTqre389EoW3iXt54AUokEc
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1117,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-09-12_04,2025-09-11_02,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 impostorscore=0 spamscore=0 clxscore=1015 priorityscore=1501 adultscore=0
 bulkscore=0 phishscore=0 suspectscore=0 malwarescore=0 classifier=typeunknown
 authscore=0 authtc= authcc= route=outbound adjust=0 reason=mlx scancount=1
 engine=8.19.0-2507300000 definitions=main-2509100177
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250912_044625_077898_422AC871 
X-CRM114-Status: GOOD (  17.99  )
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

Ck9uIDkvMTIvMjAyNSA0OjQ2IFBNLCBLb25yYWQgRHliY2lvIHdyb3RlOgo+IE9uIDkvMTIvMjUg
NDoxNSBBTSwgWGlhbmd4dSBZaW4gd3JvdGU6Cj4+IE9uIDkvMTIvMjAyNSA5OjI0IEFNLCBEbWl0
cnkgQmFyeXNoa292IHdyb3RlOgo+Pj4gT24gVGh1LCBTZXAgMTEsIDIwMjUgYXQgMTA6NTU6MDFQ
TSArMDgwMCwgWGlhbmd4dSBZaW4gd3JvdGU6Cj4+Pj4gSW50cm9kdWNlIFFDUzYxNSBoYXJkd2Fy
ZS1zcGVjaWZpYyBjb25maWd1cmF0aW9uIGZvciBEUCBQSFkgbW9kZSwKPj4+PiBpbmNsdWRpbmcg
cmVnaXN0ZXIgb2Zmc2V0cywgaW5pdGlhbGl6YXRpb24gdGFibGVzLCB2b2x0YWdlIHN3aW5nCj4+
Pj4gYW5kIHByZS1lbXBoYXNpcyBzZXR0aW5ncy4KPj4+Pgo+Pj4+IEFkZCBxY3M2MTUtcW1wLXVz
YjMtZHAtcGh5IGNvbXBhdGlibGUgc3RyaW5nIHRvIGFzc29jaWF0ZSBRQ1M2MTUKPj4+PiBwbGF0
Zm9ybSB3aXRoIGl0cyBVU0IvRFAgc3dpdGNoYWJsZSBQSFkgY29uZmlndXJhdGlvbi4KPj4+IFRo
aXMgc2hvdWxkIGJlIHRoZSBsYXN0IHBhdGNoIGluIHRoZSBzZXJpZXM6IG9uY2UgeW91IGFkZCB0
aGUgY29tcGF0aWJsZQo+Pj4gc3RyaW5nLCBpdCBpcyBleHBlY3RlZCB0aGF0IGl0IHdvcmtzLgo+
Pj4KPj4+IFRoZSBwYXRjaCBMR1RNLgo+Pgo+PiBJbiB2M1sxMi8xNF0sIHRoZSBjb21wYXRpYmxl
IHN0cmluZyB3YXMgcGxhY2VkIGluIHRoZSBsYXN0LCBhbmQgeW91IHJlbWluZCBtZQo+PiB3aWxs
IHRyaWdnZXIgdW51c2VkIHdhcm5pbmdzIGZvciB0aGUgZWFybGllci1kZWZpbmVkIHFjczYxNV91
c2IzZHBfcGh5X2NmZy4KPj4gU28gSSBtZXJnZWQgdGhlbSBpbiB2NC7CoAo+IFRoZSBpbnRlbnRp
b24gaXMgdGhhdCB5b3UgY2FuIGRvIGFsbCB0aGUgcHJlcGFyaW5nIGZpcnN0ICh3aGljaCBkb2Vz
bid0IG5lZWQKPiB0byBpbmNsdWRlIGFuIGFzc2lnbm1lbnQgdG8gZS5nLiBEUCB0YWJsZXMsIHNp
bmNlIHRoZSBjb2RlIG9wZXJhdGVzIG9uIGEKPiBwb2ludGVyIGlmIGl0J3Mgbm9uLW51bGwpLCBh
bmQgeW91IGNhbiBwdXNoIGFsbCB0aGUgcGxhdGZvcm0gYWRkaXRpb25zIGF0IHRoZQo+IGVuZCAo
Ym90aCB0YWJsZXMgYW5kIGNvbXBhdGlibGUgaW4gb25lIHBhdGNoKQo+Cj4gS29ucmFkCgoKT2ss
IHRoZW4gbWVyZ2luZyAwNCBhbmQgMDcgd2l0aCB0aGUgY29tcGF0aWJsZSBpbiB0aGUgbGFzdCBw
YXRjaApsb29rcyBhcHByb3ByaWF0ZSwgd2lsbCB1cGRhdGUgaW4gbmV4dCBwYXRjaC4KCgo+PiBJ
ZiBtb3ZlIHRoaXMgcGF0Y2ggdG8gdGhlIGVuZCwgcGF0Y2ggdjRbMDcvMTNdIHdpbGwgaGl0IHVu
dXNlZCB3YXJuaW5ncyBkdWUgdG8KPj4gbWlzc2luZyByZWZlcmVuY2VzLiBTaG91bGQgSSBzcXVh
c2ggcGF0Y2hlcyAwNCAmIDA3IGFuZCBtb3ZlIHRoZW0gdG8gdGhlIGVuZD8KPj4gSSdtIGNvbmNl
cm5lZCB0aGUgcmVzdWx0aW5nIHBhdGNoIG1pZ2h0IGJlIHRvbyBsYXJnZS4KPj4KPj4KPj4+PiBT
aWduZWQtb2ZmLWJ5OiBYaWFuZ3h1IFlpbiA8eGlhbmd4dS55aW5Ab3NzLnF1YWxjb21tLmNvbT4K
Pj4+PiAtLS0KPj4+PiAgZHJpdmVycy9waHkvcXVhbGNvbW0vcGh5LXFjb20tcW1wLXVzYmMuYyB8
IDE0MSArKysrKysrKysrKysrKysrKysrKysrKysrKysrKysrCj4+Pj4gIDEgZmlsZSBjaGFuZ2Vk
LCAxNDEgaW5zZXJ0aW9ucygrKQo+Pj4+CgotLSAKbGludXgtcGh5IG1haWxpbmcgbGlzdApsaW51
eC1waHlAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwczovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFp
bG1hbi9saXN0aW5mby9saW51eC1waHkK
