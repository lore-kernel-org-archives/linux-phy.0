Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 612F8F9935C
	for <linux-phy@archiver.kernel.org>; Thu, 23 Apr 2026 09:32:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=U87px6II2AjKi61JpQbyzmzjqamoEyfMVOJEzDv+VxY=; b=mSDJbVza/ggv/U
	D1R5pZ7dhKB+Inr2dwfaXQ0Q5ByRqWVUN7aAzmK8L2rEzK7PeTTnpt2/RghcdhH7v41ZpHsYFjEFb
	MqXiFjk7DowToISGiFRE28Ak/cS9RjGgy/ibhJ9FmicYLngbrl24k+tfnvBJHX6n87riIlg9O/haB
	7ZOiFeHwgcG+K1wwBGFAxmudh3f6xyOkVKPuGXZeZ/R/6p09zxwXIMLWk5T8KcEKJnUyepdbqsPnA
	9MSX9XHacUAFdsx+oyi/KfXfPmgpUMxRrFaca1sKKOWxpCks+kK/zMl9jtUW+onJBOfIW+NkkFthd
	+lz/tqUyAVoCO2Ic5XXw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1wFqQ5-0000000BP1F-0e4b;
	Thu, 23 Apr 2026 09:32:25 +0000
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1wFqPz-0000000BP0o-2P9i
	for linux-phy@lists.infradead.org;
	Thu, 23 Apr 2026 09:32:23 +0000
Received: from pps.filterd (m0279871.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 63N8u4eG3769013
	for <linux-phy@lists.infradead.org>; Thu, 23 Apr 2026 09:32:18 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	Zp9onLJtY/hsYEkNo1u0iGD47qM37NcirSxgBjEKwME=; b=ewGjCZaYx95sXa/T
	DbwtvjRuHcsPwPIe7ZQvgBku2QR/upIT5kMXr4quMVQxioq10fBIyhvLyQ71BRsB
	mFoBItVbcfxhRpN7MudgFBgfCp4E0lD5pl34tlj1b9EmRE/XpO5vhyGf4nFUmKBK
	ydbSbWkfEN9LSCmaE+zDbBl/OlhsXS+cLGMvPZDIpX+rMg7e0zx81wkto/yPgaCw
	qGTXYqLdv8E32OJ/Z2e7Wk5u3l4txc28dervxjOo7HlmUdG+EN5+mOOx5i4u17yh
	od/KW4PuCladRkjXpeuabVYv8nlcgjtDQRjEc5J3iCYNt36KNxWih2pakbTPPLB+
	8sZNBA==
Received: from mail-qt1-f200.google.com (mail-qt1-f200.google.com [209.85.160.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4dq1hq3641-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Thu, 23 Apr 2026 09:32:18 +0000 (GMT)
Received: by mail-qt1-f200.google.com with SMTP id d75a77b69052e-50fb98b09d3so9344731cf.2
        for <linux-phy@lists.infradead.org>; Thu, 23 Apr 2026 02:32:18 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1776936738; x=1777541538; darn=lists.infradead.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=Zp9onLJtY/hsYEkNo1u0iGD47qM37NcirSxgBjEKwME=;
        b=DuCtJfKroBRW5iLO6lGXNoUIe+akPxF/XOTqrSPg38yp4uIGOcSoGlcwdPqAIDDVWg
         xKrI9xHXInMQXXa6ftH/bktCHr4AkFfo5kEgF6tz7/D4cgj080rfh/sneC03IHRzFFzQ
         QUFuFJgFxY2+Rg4kjAHCTUZIavLMto02RJ9H6pBgS/5/g+M4g4u4bkP9KpPrSjuT4CZQ
         hX3GZ4q7g7VrOQCu3BtB/q5Ejud+wQDX62DTlp74BRf5m753+1MbAnHi6sAcOKtDwoyc
         YbJJPyGQ7Lp69OCzpSpifYdgH/GPEiZ4O5DN0t/2okoPP6FtwXL9IA0da3d/qgly1cYu
         HQXg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1776936738; x=1777541538;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=Zp9onLJtY/hsYEkNo1u0iGD47qM37NcirSxgBjEKwME=;
        b=XK+5BgP1Bmw7KYMcSk2fRMVpkxcGWloB+VO6KHj7zmskY6QQJXVvFabkVJqlkbOxm7
         J4Le5t6tob0m9o9Ek+LO/ZpMKEymc47zca2ey1LF0zYQqr35A23dte7VOraS+KUX7ZNf
         RD/+POfr7pOckAFik9AltAv1Zt6waDnfR/3jZG8d9xRg+UVV0LlYKt/2SUXf9Rsmlqnu
         BSGXpellS2IZpsb4scMZYafrL+aqm65KWQr+otAYC1PHDAw3Eeqa5vKfoho0Te4SveNT
         g+lIFDJIhgFkVb4fPovmm+42EBGrK1pNtkGltehJyJIRW17DxBm/2XDrp4PpMGxXheQe
         lbGQ==
X-Forwarded-Encrypted: i=1; AFNElJ/to1PYKbKyOkGcaNKfAdb5YqgdPMUt1RE4G2/kBMYsukrqKf6rRFtiqjl0B+c9D0y495jmRUi5qa8=@lists.infradead.org
X-Gm-Message-State: AOJu0Yy18T5BgIPbWAsLX5p6IPBzj+H4H2RgEWPT0woVsSgO2/q+CKXe
	VbivcN+q/XUrFM+nUJHf06SfjnNfKyhqbwywZCNPzdMYLtiNHlQMVCwxN8V4xKvVHEcT84OwH9S
	9B/nRfUwJ6L+rG5EYdc8EtyZZov/+zZhuVkDfTwh2LtrZpe/BmvHc5TXtSFlvO/d3ww4W
X-Gm-Gg: AeBDietZ2HWbAkjzfmk+kdG/OW13Fmff2rXLb0YYztoBZKcUPR771P/ylKjxlglc8Sw
	ewnpcySYF5k8xqtzxoshL70RFIaMdh60qsdgNCyRQrZAGOOKILeiQ3i2ruHUVxx7hpsZc670OZ3
	mdWAK2e4iEcw3/Z5J6kv0gMrN4yf91njMrh8HYyHoB7wdZuRCD7DVXIJ7PX0T68WeAdy0lzyZo8
	TLy+CKQjBV+jmBiWMcnlqCOdml7phlzLeo61dXGKUrXIdg0+brYf95tf2fDWKnBxbJxXutIvrKG
	SLA6PpUKFTxndL4IPjQRe18Dp3s8jf7un+XUhphVj8tYgKwkz18ttmU7BX6WbMDG1pIhMGnZ0S3
	9kGLiTHi0RzmP8idCgo/Cgq/e/Gfmwlcpr00EI4KEaAEvo1LZs62fXSqiX85ZHYm/OvObUmowF3
	Eit5e5km1ptzqsbg==
X-Received: by 2002:ac8:5f0c:0:b0:50e:5e6a:c7d5 with SMTP id d75a77b69052e-50e5e6ace9dmr161096381cf.1.1776936737957;
        Thu, 23 Apr 2026 02:32:17 -0700 (PDT)
X-Received: by 2002:ac8:5f0c:0:b0:50e:5e6a:c7d5 with SMTP id d75a77b69052e-50e5e6ace9dmr161096101cf.1.1776936737526;
        Thu, 23 Apr 2026 02:32:17 -0700 (PDT)
Received: from [192.168.119.254] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-ba451210e3dsm641956566b.2.2026.04.23.02.32.15
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 23 Apr 2026 02:32:16 -0700 (PDT)
Message-ID: <6a83b074-8a19-4148-a4df-bd11e27e7dce@oss.qualcomm.com>
Date: Thu, 23 Apr 2026 11:32:14 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v4 3/5] phy: qcom: edp: Add SC7280/SC8180X
 swing/pre-emphasis tables
To: Yongxing Mou <yongxing.mou@oss.qualcomm.com>,
        Vinod Koul <vkoul@kernel.org>,
        Neil Armstrong <neil.armstrong@linaro.org>,
        Stephen Boyd <swboyd@chromium.org>,
        Bjorn Andersson <andersson@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
        linux-kernel@vger.kernel.org
References: <20260422-edp_phy-v4-0-c38bef2d027b@oss.qualcomm.com>
 <20260422-edp_phy-v4-3-c38bef2d027b@oss.qualcomm.com>
 <df40b4d1-6133-4d49-a7e3-47cbb2b058e9@oss.qualcomm.com>
 <cbfa3db8-e500-42ce-8302-16af7b19afe1@oss.qualcomm.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <cbfa3db8-e500-42ce-8302-16af7b19afe1@oss.qualcomm.com>
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwNDIzMDA5MiBTYWx0ZWRfX3dyifMa6SmWM
 EuTln0b3NrEZaQzatATTs1+WmtMmDaWvJCut3HxAyGwrDfLBBC4BNo3oONsJmVPqGiE1RQfnbcu
 SFOeHQVEM4wp+MIU5RMZH8glTHSY4PXwwZ0iQogc64NPvt95gfM9cCIB+/O6hrxpd6dcC9foInW
 leoUKlhURycPAOCgAKroV0JtF4NTpDZhuEvtbR2tK5AlHb+C8rZ3tjXPx4CtjJIHJopS1ao9mWA
 Xpmb7P+pFBopIUzulX2grnZM+J7d+2B5e2mgWZoWITkv8awkR6KRas3Hn/Z4KYvTNFk8ModcUpp
 z43hVDmL6D9Wzc8i4cXR8AvX9iKgHrhhAuKxEHqetCBNeZK0OdS1nBNZHvFvVY50C6muVHymz+7
 tWKkGmQTC0n81Hy7Bz1XbWLWe6BzsErU+JXopVFvfSkwdA4VH85is9B7lLIfkNXpVmgXECyzRGd
 WABnudogASlBUM42Dmg==
X-Proofpoint-ORIG-GUID: yES4PuBopIi9LJx-aT9UlMNDj02XlMtv
X-Proofpoint-GUID: yES4PuBopIi9LJx-aT9UlMNDj02XlMtv
X-Authority-Analysis: v=2.4 cv=TJt1jVla c=1 sm=1 tr=0 ts=69e9e722 cx=c_pps
 a=JbAStetqSzwMeJznSMzCyw==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=A5OVakUREuEA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=3WHJM1ZQz_JShphwDgj5:22
 a=EUspDBNiAAAA:8 a=UMJivPYMbgTVa61FHsgA:9 a=3ZKOabzyN94A:10 a=QEXdDO2ut3YA:10
 a=uxP6HrT_eTzRwkO_Te1X:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-04-23_02,2026-04-21_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 adultscore=0 spamscore=0 priorityscore=1501 phishscore=0 clxscore=1015
 malwarescore=0 bulkscore=0 lowpriorityscore=0 impostorscore=0 suspectscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2604200000 definitions=main-2604230092
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260423_023219_746817_D36AE6A0 
X-CRM114-Status: GOOD (  13.08  )
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

T24gNC8yMy8yNiA1OjI4IEFNLCBZb25neGluZyBNb3Ugd3JvdGU6Cj4gCj4gCj4gT24gNC8yMi8y
MDI2IDY6NDIgUE0sIEtvbnJhZCBEeWJjaW8gd3JvdGU6Cj4+IE9uIDQvMjIvMjYgODowMSBBTSwg
WW9uZ3hpbmcgTW91IHdyb3RlOgo+Pj4gU0M3MjgwIGFuZCBTQzgxODBYIHByZXZpb3VzbHkgc2hh
cmVkIHRoZSBzYW1lIGNmZyBiZWNhdXNlIHRoZXkgZGlkIG5vdCB1c2UKPj4+IHN3aW5nL3ByZS1l
bXBoYXNpcyB0YWJsZXMuIEFkZCB0aGUgY29ycmVzcG9uZGluZyB0YWJsZXMgZm9yIHRoZXNlCj4+
PiBwbGF0Zm9ybXMuIFNpbmNlIHRoZXkgaGF2ZSBkaWZmZXJlbnQgUEhZIHN1Yi12ZXJzaW9ucywg
dGhlaXIgZURQL0RQIG1vZGUKPj4+IHRhYmxlcyBhbHNvIGRpZmZlciwgc28gbW92ZSBTQzgxODBY
IHRvIGl0cyBvd24gY2ZnIGluc3RlYWQgb2YgcmV1c2luZyB0aGUKPj4+IFNDNzI4MCBvbmUuCj4+
Pgo+Pj4gU2lnbmVkLW9mZi1ieTogWW9uZ3hpbmcgTW91IDx5b25neGluZy5tb3VAb3NzLnF1YWxj
b21tLmNvbT4KPj4+IC0tLQo+Pgo+Pgo+Pgo+Pj4gK3N0YXRpYyBjb25zdCBzdHJ1Y3QgcWNvbV9l
ZHBfc3dpbmdfcHJlX2VtcGhfY2ZnIGVkcF9waHlfc3dpbmdfcHJlX2VtcGhfY2ZnX3YyID0gewo+
Pj4gK8KgwqDCoCAuc3dpbmdfaGJyX3JiciA9ICZlZHBfc3dpbmdfaGJyX3JiciwKPj4KPj4gRm9y
IGVEUCAvIGxvdy1WZGlmZjoKPj4KPj4gSSBiZWxpZXZlIHRoZSBSQlIgc3dpbmcgc2V0dGluZ3Mg
Zm9yIDgxODAgc2hvdWxkCj4+IGluc3RlYWQgYmU6Cj4+Cj4+IDB4MDcgMHgwZiAweDE3IDB4MWYg
KG1hdGNoZXMpCj4gRW1tIGkgc2VlIGZyb20gaXBjYXQgZURQIExvdyB2ZGlmZihMb3dlciBIQlIp
wqAgc3dpbmcgc2V0dGluZ3MgaXMKPiAweDA3IDB4MGYgMHgxNiAweDFmCgpZZXMsIHlvdSdyZSBy
aWdodCwgSSBtYWRlIGEgdHlwbwoKWy4uLl0KCj4+IC5wcmVfZW1waGFzaXNfaGJyM19oYnIyIE9L
Cj4+IC5wcmVfZW1waGFzaXNfaGJyX3JiciBzYW1lIGFzIGFib3ZlCj4+Cj4gVGhhbmtzIGZvciBw
b2ludCB0aGlzLCBzbyBwcmVfZW1waGFzaXNfaGJyX3JiciBzYW1lIHdpdGggcHJlX2VtcGhhc2lz
X2hicjNfaGJyMj/CoCBJIGFsc28gZG9uJ3QgZ2V0IGl0J3MgUkJSIG9yIEhCUjMgZnJvbSBwaHkg
SFBHLiBCdXQgbm93IGkgdGhpbmsgb25seSBlRFAgd2lsbCBiZSB1c2VkIGluIHVwc3RyZWFtZWQg
cG9pcHUgYm9hcmRzLiBpIGNoZWNrIHRoZSBkdHMgYW5kIG5vdCBmaW5kIGFueSBwb2lwdSBib2Fy
ZHMgd2lsbCB1c2UgRFAgbW9kZShvciBtaW5pIERQKS4uCgpZZWFoIGxldCdzIG5vdCB3b3JyeSBh
Ym91dCBpdCB0b2RheS4uCgpLb25yYWQKCi0tIApsaW51eC1waHkgbWFpbGluZyBsaXN0CmxpbnV4
LXBoeUBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHBzOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWls
bWFuL2xpc3RpbmZvL2xpbnV4LXBoeQo=
