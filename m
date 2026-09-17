Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 2A465C982C1
	for <linux-phy@archiver.kernel.org>; Thu, 17 Sep 2026 05:42:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=lOujQTG+P+Jxwr4HZJ1TVyFdA+oIrRkmzQApFpuVknY=; b=Bee3etWCrBKXTy
	bgg+w4LiHOI0LUnS1wp4szwaZq85/7BAv78vkhPcikJCTTDj4QvXRtpM7aGpXEhshKFZzF0IrwrFh
	WcEUgUbGtv+cqsSpUpWy77VVYXX1yYdk0BA4fBTv8iOBABQ5KzbsM20Wl8+95HY6n8FOTJp6i5ijx
	dvfxx5aNBO9lgdamoG9zOJaIld5i6NbYhLEDiVsHE8VPvIN1LwaK+TEryRRjgEpR17ZaGthmw/qTt
	3x2ZK4JaqsM+Ofd+Fguu/QYsyzmOfn9WJGFnyXgiZlmGSB+RGsnD6guL/N8zV9YVljFaLbGBxBnef
	Pg3QlTi2t3DGOwpGNCXw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x74tY-0000000Acvi-36XR;
	Thu, 17 Sep 2026 05:42:52 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x74tW-0000000AcvM-0QU7
	for linux-phy@lists.infradead.org;
	Thu, 17 Sep 2026 05:42:51 +0000
Received: from pps.filterd (m0279864.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 68H2snqD3302733
	for <linux-phy@lists.infradead.org>; Thu, 17 Sep 2026 05:42:49 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	k1NtjGOsgxTer/ktLWGwA754RLEQUuhJE+6j0sZd88w=; b=hcKf4THMRAh/vmJp
	BubSj/LyppmFhIkPNTS2wErU1g/5Gghmmau6DFxcsRpUN7AjOgn2remCMZ7XXhS4
	5r40cva5vmvuMtGQvUmnccAAHKgfHf2LgKXnP02J3JxR6sad7hK/jWJMJwgkx3nN
	7cyEuEedo67hpT7UckiTX35NydDQ+ut+5jA4ZJ5vqpbwfmHyxFxQQ2Vgqk/ZJvRv
	8vvzW6MIHIH3fG+PHLJvVmnso1m8V2jIyidtv8Kz3dZKDTEyLWRutSLu4MJle0Et
	KweAGkFLF3a+z+PJjpR+T3NAA6OIcdX2oHxQ0jlF8Y4e4S0oueuu+uuLKmZL/jVS
	6nRd2w==
Received: from mail-pf1-f199.google.com (mail-pf1-f199.google.com [209.85.210.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4gr7uc8j4j-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Thu, 17 Sep 2026 05:42:49 +0000 (GMT)
Received: by mail-pf1-f199.google.com with SMTP id d2e1a72fcca58-8538a72b430so612904b3a.2
        for <linux-phy@lists.infradead.org>; Wed, 16 Sep 2026 22:42:49 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1789623768; x=1790228568; darn=lists.infradead.org;
        h=content-transfer-encoding:content-type:in-reply-to:from
         :content-language:references:cc:to:subject:user-agent:mime-version
         :date:message-id:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=k1NtjGOsgxTer/ktLWGwA754RLEQUuhJE+6j0sZd88w=;
        b=GaGyDUeAv83aeDQLqr+KnBqWNPweoqU3ENjh8rPgTPYZwuMAZoWKyWcG9GW3xM5cRc
         YGuwWhZJBhhYJ1MKSzxO090mRRrHBUKGDzoSDxhZAiYnc1WC0rSlbVEuh5s2emvxn/y6
         vl9PffR1ig0klZsWveHbdmR6UE2n82qcG8DezrcZ1C1US88Mspez7tbNC+oPsZruocgV
         pQUX15c6IOsWDr+xKWK2yEcGD1FBtz4mRxN1yuPG72wjTJWh9IF+T1rBrSmf7FWxjIrq
         oV1vFDcWXMbBjkvUXQPaC2FFbmOsnIaXoDXZ7AZ4PMUxwxStdKUiH5mavy3WBH0y7/sF
         e3AA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1789623768; x=1790228568;
        h=content-transfer-encoding:content-type:in-reply-to:from
         :content-language:references:cc:to:subject:user-agent:mime-version
         :date:message-id:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=k1NtjGOsgxTer/ktLWGwA754RLEQUuhJE+6j0sZd88w=;
        b=Q0S8ccdFHJdnTzJJam4jg0MdaFnvfAHewaaHAuey/eqfELGdwcteBFjOtx6eIC/eFF
         hzv7mLyf7nthxcMbl3VT4APouyD6UOEFeOQ8ASbYcKz5akZ2Eo4YFU3e5xJl0mxHB0FQ
         eYroOif2+0Ug8ZelkiBfqDhU9IUzW1TkeRyqu4BzyUKp/bXW3JPdmCv1anBq09tTpyx1
         P0VgBPL1kHLyR02IUCQ1L0QgCHzLgaBNGK+EOfXVil8RWHyA0CAowcUcu5UQUj0xosqO
         bleD7HfdTkH2HDQuvW5C6FhHFLcgwLkEI6kcJMJgFQh2Poqbgt2jd5gBNZM1y38WoYZv
         esNw==
X-Forwarded-Encrypted: i=1; AKwUvByeb0sZsS7zjv7T41ePC1J6j9WQJanRaDzAawN89Xx2rQuOLm0yaROK52W1X06vzX1kNUE03LF79WY=@lists.infradead.org
X-Gm-Message-State: AFuF++mMsgMiT+GpW7r/UigqdGdglcD2TfbrSEHgjE+pXz97thxJBd4D
	xNHrPMBFsQskq/sZN0DN2lIwCbC+HgfXe7pQrDP9BBZCrlN14Do4EkEzPffnFcJelAOGFwXPrSV
	u9g4ZQe4V27LLtAanxwm74fD6gEeiUsbVnFHLZFfTTlwtp4AJuHFfnNoBevY09cWZ3Hcv
X-Gm-Gg: AYBFou0v+zUG8mxW1R06QSigcty4/ubvrdskmFWO7f8rZZ+3Qs+XaaH93/wmqxy/HI/
	4WXBdNEoCbEXwd+xqqfAS4nohzWUFfo16u9aXSkGCFIejCKPqpNcdcQqJfYhj0g28vpjiv9kjcg
	SuJ0Y3LaPWK01XpALFjkY6PZR8Ah2ZSfJcmi9Awf1yW4nmegWMcqZ8B8tIfvbPMgIbT1CbihEVB
	z8zae+j1+yIqrowXlEmuEqS1EgszXwoNviwe3RJekNmQk6lHvPDP0YYuFQJDmsFVkU3PnIsTC3R
	IJozndasBwJMn6wPiFM7FWgu/xeV4o5V893W+CBLRCJjQGT0sT0/AB26/aDr3jgXMQe9GHMJJlr
	peLlODIVJElwyXvLHg+/t5XchfWeu
X-Received: by 2002:a05:6a21:514:b0:3c3:6928:8b25 with SMTP id adf61e73a8af0-3dd5f5ab211mr15101560637.17.1789623768389;
        Wed, 16 Sep 2026 22:42:48 -0700 (PDT)
X-Received: by 2002:a05:6a21:514:b0:3c3:6928:8b25 with SMTP id adf61e73a8af0-3dd5f5ab211mr15101484637.17.1789623767817;
        Wed, 16 Sep 2026 22:42:47 -0700 (PDT)
Received: from [10.204.78.119] ([202.46.23.25])
        by smtp.gmail.com with ESMTPSA id 5a478bee46e88-33bf5af4f0bsm14466679eec.24.2026.09.16.22.42.39
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 16 Sep 2026 22:42:47 -0700 (PDT)
Message-ID: <7d2611bb-532f-4553-9d16-66c4b9c495c9@oss.qualcomm.com>
Date: Thu, 17 Sep 2026 11:12:38 +0530
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 03/17] dt-bindings: display/msm: Document Nord MDSS
To: Shawn Guo <shengchao.guo@oss.qualcomm.com>
Cc: Vinod Koul <vkoul@kernel.org>, Neil Armstrong
 <neil.armstrong@linaro.org>,
        Manivannan Sadhasivam <mani@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Rob Clark <robin.clark@oss.qualcomm.com>,
        Dmitry Baryshkov
 <lumag@kernel.org>,
        Abhinav Kumar <abhinav.kumar@linux.dev>,
        Jessica Zhang <jesszhan0024@gmail.com>, Sean Paul <sean@poorly.run>,
        Marijn Suijten <marijn.suijten@somainline.org>,
        Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
        Maxime Ripard <mripard@kernel.org>,
        Thomas Zimmermann <tzimmermann@suse.de>,
        David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>,
        Kuogee Hsieh <quic_khsieh@quicinc.com>, linux-arm-msm@vger.kernel.org,
        linux-phy@lists.infradead.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, dri-devel@lists.freedesktop.org,
        freedreno@lists.freedesktop.org,
        Ritesh Kumar
 <ritesh.kumar@oss.qualcomm.com>,
        Mahadevan P <mahadevan.p@oss.qualcomm.com>
References: <20260911-nord-drv-dt-v1-0-e25c073cf1b6@oss.qualcomm.com>
 <20260911-nord-drv-dt-v1-3-e25c073cf1b6@oss.qualcomm.com>
 <aqtECDwHPiUUZqTB@QCOM-aGQu4IUr3Y>
Content-Language: en-GB
From: Nabige Aala <nabige.aala@oss.qualcomm.com>
In-Reply-To: <aqtECDwHPiUUZqTB@QCOM-aGQu4IUr3Y>
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwOTE3MDA3MyBTYWx0ZWRfXxYQxChYG5pD9
 xmfwgHnDRn+Wstq8U7h8Mgzi32YmCSDnHaOVXlcFkXDwtiAhCHtrJY4ZulOtOrob2DkAs45F7wL
 i+hvL3fzof7Ex30zjd5AZ6fiZxsF+F+8Xzua8eadLm9k3LUGYLBK1/BCAZv184YR80S8zoIeeRU
 O/4V0jwYkSbagAPvv793kZtxY7uDxPzZgdYUKmp/IrDRbUhS/dc9OYwWu9TtabghOGeJJOxOfeO
 pKRl+QbQNOCr0gGjah+LlrZq6R+NdoLcj3DYhBYiL4bdd4JOoMWA/2OdWf6Lz5S5oB43a4o3E3Q
 lM8en55Z809vgNT4aMBJOkW0/9OY7iPXA/OsmRsqBaFvhMMpUsBqiJERej97LYerrL99w8KnkWY
 NkF2aLCtJc3QaoxXaiqzqG9WqWW84x8x4QbQ9PEF3xDZr0kdMWBSF4BFKwy0DpcBrFLzGRN5r1v
 jBrOQ0biS1FBH/RBymQ==
X-Proofpoint-GUID: inKAx8kWM5wt0pgIIAHfGW_xO0WKloT2
X-Proofpoint-ORIG-GUID: inKAx8kWM5wt0pgIIAHfGW_xO0WKloT2
X-Authority-Analysis: v=2.4 cv=F9zC5ahN c=1 sm=1 tr=0 ts=6aab7dd9 cx=c_pps
 a=WW5sKcV1LcKqjgzy2JUPuA==:117 a=ZePRamnt/+rB5gQjfz0u9A==:17
 a=IkcTkHD0fZMA:10 a=VdqzKS8jKosA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=DJpcGTmdVt4CTyJn9g5Z:22
 a=gEfo2CItAAAA:8 a=JfrnYn6hAAAA:8 a=EUspDBNiAAAA:8 a=T1TI9GLrlG5TBy_zXBgA:9
 a=3ZKOabzyN94A:10 a=QEXdDO2ut3YA:10 a=OpyuDcXvxspvyRM73sMx:22
 a=sptkURWiP4Gy88Gu7hUp:22 a=1CNFftbPRP8L7MoqJWF3:22
X-Proofpoint-Spam-Info: AW1haW4tMjYwOTE3MDA3MyBTYWx0ZWRfXzmYYJKLpezfy
 Xgj8JWIvIke1TsmNCzAGLtql61TZbxtv+yVboTgVKb93s8yfF1L0g88hH+chJswfWtYs3hC8I/D
 cZCAMFatM4gRqKpAnf0NouKQ3LuCyjY=
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1176,Hydra:6.1.134,FMLib:17.12.100.49
 definitions=2026-09-16_03,2026-09-16_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 adultscore=0 spamscore=0 lowpriorityscore=0 bulkscore=0 malwarescore=0
 clxscore=1015 impostorscore=0 suspectscore=0 priorityscore=1501 phishscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2609040000 definitions=main-2609170073
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260916_224250_159195_70D8AF0D 
X-CRM114-Status: GOOD (  20.28  )
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

Ck9uIDkvMTcvMjAyNiA3OjA2IEFNLCBTaGF3biBHdW8gd3JvdGU6Cj4gT24gRnJpLCBTZXAgMTEs
IDIwMjYgYXQgMDk6MDY6MzRQTSArMDUzMCwgTmFiaWdlIEFhbGEgd3JvdGU6Cj4+IEZyb206IE1h
aGFkZXZhbiBQIDxtYWhhZGV2YW4ucEBvc3MucXVhbGNvbW0uY29tPgo+Pgo+PiBBZGQgdGhlIGJp
bmRpbmcgZm9yIHRoZSBkaXNwbGF5IHN1YnN5c3RlbSAoTURTUykgZm91bmQgb24gdGhlIFF1YWxj
b21tCj4+IE5vcmQgU29DLiBOb3JkIGlzIE1EU1MgMTIuMSwgRFAtb25seSAobm8gRFNJKSwgd2l0
aCB0d28gaW5kZXBlbmRlbnQgRFAKPj4gY29udHJvbGxlcnMuCj4+Cj4+IFNpZ25lZC1vZmYtYnk6
IE1haGFkZXZhbiBQIDxtYWhhZGV2YW4ucEBvc3MucXVhbGNvbW0uY29tPgo+PiBTaWduZWQtb2Zm
LWJ5OiBOYWJpZ2UgQWFsYSA8bmFiaWdlLmFhbGFAb3NzLnF1YWxjb21tLmNvbT4KPj4gLS0tCj4+
ICAgLi4uL2JpbmRpbmdzL2Rpc3BsYXkvbXNtL3Fjb20sbm9yZC1tZHNzLnlhbWwgICAgICAgfCA5
OCArKysrKysrKysrKysrKysrKysrKysrCj4+ICAgMSBmaWxlIGNoYW5nZWQsIDk4IGluc2VydGlv
bnMoKykKPj4KPj4gZGlmZiAtLWdpdCBhL0RvY3VtZW50YXRpb24vZGV2aWNldHJlZS9iaW5kaW5n
cy9kaXNwbGF5L21zbS9xY29tLG5vcmQtbWRzcy55YW1sIGIvRG9jdW1lbnRhdGlvbi9kZXZpY2V0
cmVlL2JpbmRpbmdzL2Rpc3BsYXkvbXNtL3Fjb20sbm9yZC1tZHNzLnlhbWwKPj4gbmV3IGZpbGUg
bW9kZSAxMDA2NDQKPj4gaW5kZXggMDAwMDAwMDAwMDAwLi4wYjBjYWNkY2E5ZGIKPj4gLS0tIC9k
ZXYvbnVsbAo+PiArKysgYi9Eb2N1bWVudGF0aW9uL2RldmljZXRyZWUvYmluZGluZ3MvZGlzcGxh
eS9tc20vcWNvbSxub3JkLW1kc3MueWFtbAo+PiBAQCAtMCwwICsxLDk4IEBACj4+ICsjIFNQRFgt
TGljZW5zZS1JZGVudGlmaWVyOiBHUEwtMi4wLW9ubHkgT1IgQlNELTItQ2xhdXNlCj4+ICslWUFN
TCAxLjIKPj4gKy0tLQo+PiArJGlkOiBodHRwOi8vZGV2aWNldHJlZS5vcmcvc2NoZW1hcy9kaXNw
bGF5L21zbS9xY29tLG5vcmQtbWRzcy55YW1sIwo+PiArJHNjaGVtYTogaHR0cDovL2RldmljZXRy
ZWUub3JnL21ldGEtc2NoZW1hcy9jb3JlLnlhbWwjCj4+ICsKPj4gK3RpdGxlOiBRdWFsY29tbSBO
b3JkIGRpc3BsYXkgc3Vic3lzdGVtIChNRFNTKQo+PiArCj4+ICttYWludGFpbmVyczoKPj4gKyAg
LSBNYWhhZGV2YW4gUCA8bWFoYWRldmFuLnBAb3NzLnF1YWxjb21tLmNvbT4KPj4gKwo+PiArZGVz
Y3JpcHRpb246Cj4+ICsgIE5vcmQgZGlzcGxheSBzdWJzeXN0ZW0gY29uc2lzdHMgb2YgTURTUyAo
ZGlzcGxheSBjb250cm9sbGVyKSwgRFBVIDE0OTlBCj4+ICsgIChkaXNwbGF5IHByb2Nlc3Npbmcg
dW5pdCksIGFuZCBkaXNwbGF5IGludGVyZmFjZSBjb250cm9sbGVycyAoRFAgb25seSwgbm8gRFNJ
KS4KPj4gKyAgVGhpcyBpcyBNRFNTIDEyLjEsIERQLW9ubHksIHdpdGggMiBpbmRlcGVuZGVudCBE
UCBjb250cm9sbGVycy4KPj4gKwo+PiArJHJlZjogL3NjaGVtYXMvZGlzcGxheS9tc20vbWRzcy1j
b21tb24ueWFtbCMKPj4gKwo+PiArcHJvcGVydGllczoKPj4gKyAgY29tcGF0aWJsZToKPj4gKyAg
ICBjb25zdDogcWNvbSxub3JkLW1kc3MKPj4gKwo+PiArICBjbG9ja3M6Cj4+ICsgICAgaXRlbXM6
Cj4+ICsgICAgICAtIGRlc2NyaXB0aW9uOiBEaXNwbGF5IEFIQgo+PiArICAgICAgLSBkZXNjcmlw
dGlvbjogRGlzcGxheSBoZiBBWEkKPj4gKyAgICAgIC0gZGVzY3JpcHRpb246IERpc3BsYXkgY29y
ZQo+PiArCj4+ICsgIGNsb2NrLW5hbWVzOgo+PiArICAgIGl0ZW1zOgo+PiArICAgICAgLSBjb25z
dDogaWZhY2UKPj4gKyAgICAgIC0gY29uc3Q6IGJ1cwo+PiArICAgICAgLSBjb25zdDogY29yZQo+
PiArCj4+ICsgIGlvbW11czoKPj4gKyAgICBtYXhJdGVtczogMQo+IFRoZSBEVFMgaW4gZG93bnN0
cmVhbSByZXBvc2l0b3J5IGRvZXNuJ3Qgc2VlbSB0byBhZ3JlZS4gVGhlcmUgaXMgdHdvCj4gaXRl
bXMgZm9yIGlvbW11cy4KCkkgY2hlY2tlZCB0aGUgTm9yZCBJUENBVC4gdGhlIHJlc3VsdGVkIFNJ
RCBpcyBzYW1lIGZvciBib3RoIHRoZSBTSUQgCihpLmUuwqAgMHgwM2UwKSBpbiBkb3duc3RyZWFt
IHJlcG9zaXRvcnkuCgpJIHRoaW5rIHdlIHNob3VsZCB1cGRhdGUgdGhlIGRvd25zdHJlYW0gRFQg
YW5kIHVzZSBhIHNpbmdsZSBTSUQgZW50cnkuCgo+PiArCj4+ICsgIGludGVyY29ubmVjdHM6Cj4+
ICsgICAgaXRlbXM6Cj4+ICsgICAgICAtIGRlc2NyaXB0aW9uOiBJbnRlcmNvbm5lY3QgcGF0aCBm
cm9tIG1kcDAgcG9ydCB0byB0aGUgZGF0YSBidXMKPj4gKyAgICAgIC0gZGVzY3JpcHRpb246IElu
dGVyY29ubmVjdCBwYXRoIGZyb20gQ1BVIHRvIHRoZSByZWcgYnVzCj4+ICsKPj4gKyAgaW50ZXJj
b25uZWN0LW5hbWVzOgo+PiArICAgIGl0ZW1zOgo+PiArICAgICAgLSBjb25zdDogbWRwMC1tZW0K
Pj4gKyAgICAgIC0gY29uc3Q6IGNwdS1jZmcKPj4gKwo+PiArcGF0dGVyblByb3BlcnRpZXM6Cj4+
ICsgICJeZGlzcGxheS1jb250cm9sbGVyQFswLTlhLWZdKyQiOgo+PiArICAgIHR5cGU6IG9iamVj
dAo+PiArICAgIGFkZGl0aW9uYWxQcm9wZXJ0aWVzOiB0cnVlCj4+ICsgICAgcHJvcGVydGllczoK
Pj4gKyAgICAgIGNvbXBhdGlibGU6Cj4+ICsgICAgICAgIGNvbnN0OiBxY29tLG5vcmQtZHB1Cj4+
ICsKPj4gKyAgIl5kaXNwbGF5cG9ydC1jb250cm9sbGVyQFswLTlhLWZdKyQiOgo+PiArICAgIHR5
cGU6IG9iamVjdAo+PiArICAgIGFkZGl0aW9uYWxQcm9wZXJ0aWVzOiB0cnVlCj4+ICsgICAgcHJv
cGVydGllczoKPj4gKyAgICAgIGNvbXBhdGlibGU6Cj4+ICsgICAgICAgIGNvbnN0OiBxY29tLG5v
cmQtZHAKPj4gKwo+PiArICAiXnBoeUBbMC05YS1mXSskIjoKPj4gKyAgICB0eXBlOiBvYmplY3QK
Pj4gKyAgICBhZGRpdGlvbmFsUHJvcGVydGllczogdHJ1ZQo+PiArICAgIHByb3BlcnRpZXM6Cj4+
ICsgICAgICBjb21wYXRpYmxlOgo+PiArICAgICAgICBjb25zdDogcWNvbSxub3JkLWRwLXBoeQo+
PiArCj4+ICtyZXF1aXJlZDoKPj4gKyAgLSBjb21wYXRpYmxlCj4+ICsKPj4gK3VuZXZhbHVhdGVk
UHJvcGVydGllczogZmFsc2UKPj4gKwo+PiArZXhhbXBsZXM6Cj4+ICsgIC0gfAo+PiArICAgICNp
bmNsdWRlIDxkdC1iaW5kaW5ncy9jbG9jay9xY29tLGRpc3BjYy1ub3JkLmg+Cj4gUGxlYXNlIHJ1
biBkdF9iaW5kaW5nX2NoZWNrIGFnYWluc3QgbWFpbmxpbmUga2VybmVsIHdoZXJlIHRoZSBoZWFk
ZXIgaXMKPiBhY3R1YWxseSBxY29tLG5vcmQtZGlzcGNjLmguCgpBY2ssIEkgd2lsbCB1cGRhdGUg
YWNjb3JkaW5nIHRvIG1haW5saW5lIGtlcm5lbC4KClRoYW5rcywKCk5hYmlnZQoKPgo+IFNoYXdu
Cj4KPj4gKyAgICAjaW5jbHVkZSA8ZHQtYmluZGluZ3MvaW50ZXJydXB0LWNvbnRyb2xsZXIvYXJt
LWdpYy5oPgo+PiArICAgICNpbmNsdWRlIDxkdC1iaW5kaW5ncy9wb3dlci9xY29tLHJwbWhwZC5o
Pgo+PiArCj4+ICsgICAgZGlzcGxheS1zdWJzeXN0ZW1AYWUwMDAwMCB7Cj4+ICsgICAgICAgIGNv
bXBhdGlibGUgPSAicWNvbSxub3JkLW1kc3MiOwo+PiArICAgICAgICByZWcgPSA8MHgwYWUwMDAw
MCAweDEwMDA+Owo+PiArICAgICAgICByZWctbmFtZXMgPSAibWRzcyI7Cj4+ICsgICAgICAgIHBv
d2VyLWRvbWFpbnMgPSA8JmRpc3BjY19nZHNjPjsKPj4gKyAgICAgICAgY2xvY2tzID0gPCZkaXNw
Y2MgRElTUENDX01EU1NfQUhCX0NMSz4sCj4+ICsgICAgICAgICAgICAgICAgIDwmZ2NjIEdDQ19E
SVNQX0hGX0FYSV9DTEs+LAo+PiArICAgICAgICAgICAgICAgICA8JmRpc3BjYyBESVNQQ0NfTURT
U19NRFBfQ0xLPjsKPj4gKyAgICAgICAgY2xvY2stbmFtZXMgPSAiaWZhY2UiLCAiYnVzIiwgImNv
cmUiOwo+PiArICAgICAgICByZXNldHMgPSA8JmRpc3BjYyBESVNQX0NDX01EU1NfQ09SRV9CQ1I+
Owo+PiArICAgICAgICBpbnRlcnJ1cHRzID0gPEdJQ19TUEkgODMgSVJRX1RZUEVfTEVWRUxfSElH
SD47Cj4+ICsgICAgICAgIGludGVycnVwdC1jb250cm9sbGVyOwo+PiArICAgICAgICAjaW50ZXJy
dXB0LWNlbGxzID0gPDE+Owo+PiArICAgICAgICBpb21tdXMgPSA8JmFwcHNfc21tdSAweDgwMCAw
eDQyMD47Cj4+ICsgICAgICAgICNhZGRyZXNzLWNlbGxzID0gPDE+Owo+PiArICAgICAgICAjc2l6
ZS1jZWxscyA9IDwxPjsKPj4gKyAgICAgICAgcmFuZ2VzOwo+PiArICAgIH07Cj4+Cj4+IC0tIAo+
PiAyLjM0LjEKPj4KPj4KPj4gLS0gCj4+IGxpbnV4LXBoeSBtYWlsaW5nIGxpc3QKPj4gbGludXgt
cGh5QGxpc3RzLmluZnJhZGVhZC5vcmcKPj4gaHR0cHM6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21h
aWxtYW4vbGlzdGluZm8vbGludXgtcGh5CgotLSAKbGludXgtcGh5IG1haWxpbmcgbGlzdApsaW51
eC1waHlAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwczovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFp
bG1hbi9saXN0aW5mby9saW51eC1waHkK
