Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 68A07FF8850
	for <linux-phy@archiver.kernel.org>; Mon, 27 Apr 2026 06:27:31 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=xaCAvNxPnpppB6RoGWhIUMaaQxyeGLDG0NxZdh6TiA8=; b=VsyiPK7u9IYwW2
	CpHYra+o4c4GNrMnAH+n57nP+JyqTShGZ19jK0qcy1EgRxyF6D96NBgHTPh/sTa6aaVHvSmF48osF
	TonbjTsrmd+NDBdh8dOfdoT0HSkCVA2x6PrBUoYmVuJ4k/njBp5nppp5syYunWNXjXX5LdfcBbb3x
	6+ZQVuZ0kKHeHDbtooIg5StkdYVI+6lynj7l6hphIXvYTU5Ko0jLHHAIeGXDwNxZPSghf543TH2IV
	IDgd39b6sFloAkfJvYhFBejC7eYupIoyZYQSG4sy5VPWTVJeyxCmSXBhO8YWu3ZToW1xNWpUe836k
	w9CTX6VT6lmpmj1iLMxg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1wHFRK-0000000GGN2-3whO;
	Mon, 27 Apr 2026 06:27:30 +0000
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1wHFRI-0000000GGMf-1AB0
	for linux-phy@lists.infradead.org;
	Mon, 27 Apr 2026 06:27:29 +0000
Received: from pps.filterd (m0279872.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 63R2jOOb2884130
	for <linux-phy@lists.infradead.org>; Mon, 27 Apr 2026 06:27:26 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	8v6ZNk8jz+q96s8NrhZi+YHt6CrMseIpQ0gUUPZzY3I=; b=Y4om9Dx6NEsPKB33
	uIIaMhqjw92FegVff8oRSoEPFB59ZfFcHRPPCnXc4I4nRCHZXJac9zfj+Kuk4VWn
	bP0rJUfD30eEv0IuZM2HRHgTwzZuTS9NeC3ZuDt+uzr0zqmZPOB7tC9whPXrVG9A
	DJh1RNEXhWFRI416PylnP7CmueL6g19vwInGi36dHRYidYN6uvK0sqbMoayj+IMN
	xRezKfAWEqoCTR+0M9CtzWRjo/kayE2KDyYjpqHdeqlrHxFMhKkGMRV7b8+QgtF3
	ZRjfA7ZzyH2ux20NBi3KdcfCc31bityAYmIhIKg64YTG1U7e+TB8rH5y0pqXuND2
	sHPAkA==
Received: from mail-pg1-f200.google.com (mail-pg1-f200.google.com [209.85.215.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4dsya00ks2-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Mon, 27 Apr 2026 06:27:26 +0000 (GMT)
Received: by mail-pg1-f200.google.com with SMTP id 41be03b00d2f7-c798fc1a426so3445217a12.2
        for <linux-phy@lists.infradead.org>; Sun, 26 Apr 2026 23:27:26 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1777271245; x=1777876045; darn=lists.infradead.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=8v6ZNk8jz+q96s8NrhZi+YHt6CrMseIpQ0gUUPZzY3I=;
        b=QuexixjbR0r5ZnLUVjvXPcfw2VqhoOROcXuLMucHSOQImHZAypP7gO79XWMRA9x4ck
         Vob6pRCmzs3/zlEf8E4IaYKKn1pdRhr5bqrJsb7927aJ4vXX3fnf5G/dA4s0ZYVBVLQz
         0MgzMuSaOq4BqbNErcl6Kr5ZH1WAJTEmjsaWzir9N/nPW3JLkn91p77RRLok+CX9bSx/
         a2/Q6/paCtmtH1Hg0F8PTYgs2QgF51nsTfr1yEIJJV0uDN6Qx2+/BwRDHQxnvEXmVPQ/
         m7qRjgeiNRa8e8/NaZzFX+p1TnjOdRN6udcIy8X3+nKKeAvzeui9f8jSqx3+W6O9vIzy
         7IvA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1777271245; x=1777876045;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=8v6ZNk8jz+q96s8NrhZi+YHt6CrMseIpQ0gUUPZzY3I=;
        b=fA/dSVTbtysXodF7uffWC+8UhKJBSwZBOELGNwHu+aggoCOdhSCjwQ2eUrSceHFqhA
         Z9HT/FEZVS8LReuUbwbCPFHwL4LWd61KedX72pUQeADsTAhCclb5uR4seWrehJREp8OF
         bEegYW0/PYWE/xW5vkbrKtYOnQKQ4l0G9WBKlK0krlvE+GUTPp6IXD3aHh9G2hjotrS4
         dLhzu2aBZHwk8kh+/6N+7udA+YirTcq1301GO2wCkC6g4NnEOGQvhRWRBXjXxwu1MNy/
         dyDzNsxJWq+LmYI6w6kVN4PUKhI/ypdmxCTN81hMYB/yagIKEeaH8yc1VmhVi1KKrvPI
         adVg==
X-Forwarded-Encrypted: i=1; AFNElJ/qnv5gHCv2OhTU3tADMkAJPg7k8nGqGagT5w1LwhnqrSX12WgtKXONE20iEB7XH/h4cfW2SSz16xI=@lists.infradead.org
X-Gm-Message-State: AOJu0Yxbq/hrb3WayDp5GTx62YmvLwdWcrijGcuMMMetglH9vOS2GQZ5
	i+sjePqqvMhx2BhUX8tNSLlTtps4C1s2dIMkNsIU/RwKF9pdydxJN6N3AMB0WDmIQpPV038oFbK
	+Cf7Ja1fxo5FZ5VV8eT7k2XoRJvgXDhiJ2xovKa7aq7c6k6DZFCA05hw8IsBNbV/lD/xA
X-Gm-Gg: AeBDieumPZXLKBg6KyFOLDY+Swl5F+aVoYnppMEydeE0wLD7taU72XiWx5TchfjqwMj
	7E0DnzoTFyO/y8XK1q3pk3K0KuA3/ar3AUoWBEvpnUd/EOcguShxTxKz9TdS4SI/ErSYZUTN0ME
	7xwl0OuPjHbpaD35exdV+YdUXKDMKFQDubb/t7JkNL5qGw+X9Lcods0aaaBDAvXcijvYZGDHGns
	JcIgvPRHvhi6gKkMNpxcKnDBDnkNcYZ1N0nVXuuFpT75sy+7lmsCqqVntiQGaN8NWC2zUpHMkpe
	nzwy1ZTqPp7ck76O02nRagsRQwceI5Muvd53S9Funl/83i0BMJotGlizpYmyH2lRhEXUHKkEGQD
	6qGIgw6ilBpz0coV7qcY9fqHv8CvTHOeRm0ci326BIyfgxwwGTEwEsX7DEp7r8NcgsiFCbagKMi
	8+hkacL33bcrqSJJ93cj0C8C80Mik=
X-Received: by 2002:a05:6a00:18aa:b0:82c:24a9:d5f1 with SMTP id d2e1a72fcca58-82f8c95cdc2mr41270461b3a.30.1777271245366;
        Sun, 26 Apr 2026 23:27:25 -0700 (PDT)
X-Received: by 2002:a05:6a00:18aa:b0:82c:24a9:d5f1 with SMTP id d2e1a72fcca58-82f8c95cdc2mr41270440b3a.30.1777271244776;
        Sun, 26 Apr 2026 23:27:24 -0700 (PDT)
Received: from [10.133.33.17] (tpe-colo-wan-fw-bordernet.qualcomm.com. [103.229.16.4])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-82f8e9d6adbsm38893029b3a.18.2026.04.26.23.27.20
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 26 Apr 2026 23:27:23 -0700 (PDT)
Message-ID: <a8f9fe96-1a5c-4eac-8a47-9dc993ced185@oss.qualcomm.com>
Date: Mon, 27 Apr 2026 14:27:19 +0800
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v4 3/5] phy: qcom: edp: Add SC7280/SC8180X
 swing/pre-emphasis tables
To: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
Cc: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>,
        Vinod Koul <vkoul@kernel.org>,
        Neil Armstrong <neil.armstrong@linaro.org>,
        Stephen Boyd <swboyd@chromium.org>,
        Bjorn Andersson <andersson@kernel.org>, linux-arm-msm@vger.kernel.org,
        linux-phy@lists.infradead.org, linux-kernel@vger.kernel.org
References: <20260422-edp_phy-v4-0-c38bef2d027b@oss.qualcomm.com>
 <20260422-edp_phy-v4-3-c38bef2d027b@oss.qualcomm.com>
 <df40b4d1-6133-4d49-a7e3-47cbb2b058e9@oss.qualcomm.com>
 <cbfa3db8-e500-42ce-8302-16af7b19afe1@oss.qualcomm.com>
 <ocydv6bbja7z46yjidtemwxtvwyxc4jpmnsc5uz7eorshgr36r@v4e7oo4sgeol>
Content-Language: en-US
From: Yongxing Mou <yongxing.mou@oss.qualcomm.com>
In-Reply-To: <ocydv6bbja7z46yjidtemwxtvwyxc4jpmnsc5uz7eorshgr36r@v4e7oo4sgeol>
X-Proofpoint-GUID: Kz2R5wV2GkVivvLN0Lg2rDEYPS_3EcVN
X-Proofpoint-ORIG-GUID: Kz2R5wV2GkVivvLN0Lg2rDEYPS_3EcVN
X-Authority-Analysis: v=2.4 cv=DZEnbPtW c=1 sm=1 tr=0 ts=69ef01ce cx=c_pps
 a=oF/VQ+ItUULfLr/lQ2/icg==:117 a=nuhDOHQX5FNHPW3J6Bj6AA==:17
 a=IkcTkHD0fZMA:10 a=A5OVakUREuEA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=yx91gb_oNiZeI1HMLzn7:22
 a=-ojWompm966yaKU_kDQA:9 a=3ZKOabzyN94A:10 a=QEXdDO2ut3YA:10
 a=3WC7DwWrALyhR5TkjVHa:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwNDI3MDA2NyBTYWx0ZWRfX8MiIX+PvqTBe
 qw1IOJz2oV9XOdiU0/x0uSulotDVpQjAgfYMkGdj5PIYgw3210SmNHQf8G0cAt9AMlIcZpj3hDm
 dQ6pbWHv4Fm+Tn4gk0d9i7lCMnUp5Jylhy7nmJ9B8KWMtS6GUoX9vA1Ebl7i5Fim14Yum+Ur6kx
 v7CgIeMLkwbRtLi7iAMXfveQ3FO55ysbFnVwcV8ne2qM5eC3v6xkOhEiDkS6RZmEdY2e8LbaPJO
 c/eg/GIcykVwj2AK6N89Rk6xqjHfJLQWIQRgIc+osKabywM75MpmxGrG/6x6e9JlQtR1lK8ouQy
 9588l0TpJgZE11HiYeh186IGrr36vCIxKmwrSsFfwHt88RdKSS4OAseSdEXrMZ85kOJ2ih8GAhn
 iEz+XHPtiD5pAGsv/Vl5uyWsTHyuTSmI6GMfAQFMGL8gHhc+I1tcfVi/BLZ4zxx42BneUX6C1h9
 jP6/pQnJ2fPxycMS0cQ==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-04-27_01,2026-04-21_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 clxscore=1015 phishscore=0 spamscore=0 adultscore=0 bulkscore=0
 lowpriorityscore=0 priorityscore=1501 malwarescore=0 impostorscore=0
 suspectscore=0 classifier=typeunknown authscore=0 authtc= authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.22.0-2604200000
 definitions=main-2604270067
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260426_232728_464776_4B1A5090 
X-CRM114-Status: GOOD (  15.71  )
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

CgpPbiA0LzIzLzIwMjYgMTI6NDEgUE0sIERtaXRyeSBCYXJ5c2hrb3Ygd3JvdGU6Cj4gT24gVGh1
LCBBcHIgMjMsIDIwMjYgYXQgMTE6Mjg6NDRBTSArMDgwMCwgWW9uZ3hpbmcgTW91IHdyb3RlOgo+
Pgo+Pgo+PiBPbiA0LzIyLzIwMjYgNjo0MiBQTSwgS29ucmFkIER5YmNpbyB3cm90ZToKPj4+IFRo
ZSBzd2luZyBhbmQgcHJlZW0gc2V0dGluZ3MgZm9yIEhCUjMgbG9vayBPSwo+Pj4KPj4+IEZvciBE
UCAvIGxvdy1WZGlmZjoKPj4+Cj4+PiAuc3dpbmdfaGJyM19oYnIyIE9LCj4+PiAuc3dpbmdfaGJy
X3JiciAtIEkgZG9uJ3Qga25vdy4gVGhlIGRvY3MgYXJlIHVuY2xlYXIgd2hldGhlciB0aGUgc2Ft
ZQo+Pj4gc2V0dGluZ3Mgc2hvdWxkIGJlIHVzZWQgZm9yIFJCUiBhbmQgSEJSMywgYnV0IG1heWJl
PyBUaGVyZSdzIGEKPj4+IHNlcGFyYXRlIHRhYmxlIGZvciBtaW5pLURQIGJ1dCBJIGRvdWJ0IHRo
ZXJlJ3MgYW55IHBvaXB1IGJvYXJkcyB3aXRoCj4+PiBzdWNoIGEgY29ubmVjdG9yIChtYXliZSBz
b21lIG9ic2N1cmUgb25lcykKPj4+Cj4+PiAucHJlX2VtcGhhc2lzX2hicjNfaGJyMiBPSwo+Pj4g
LnByZV9lbXBoYXNpc19oYnJfcmJyIHNhbWUgYXMgYWJvdmUKPj4+Cj4+IFRoYW5rcyBmb3IgcG9p
bnQgdGhpcywgc28gcHJlX2VtcGhhc2lzX2hicl9yYnIgc2FtZSB3aXRoCj4+IHByZV9lbXBoYXNp
c19oYnIzX2hicjI/ICBJIGFsc28gZG9uJ3QgZ2V0IGl0J3MgUkJSIG9yIEhCUjMgZnJvbSBwaHkg
SFBHLiBCdXQKPj4gbm93IGkgdGhpbmsgb25seSBlRFAgd2lsbCBiZSB1c2VkIGluIHVwc3RyZWFt
ZWQgcG9pcHUgYm9hcmRzLiBpIGNoZWNrIHRoZQo+PiBkdHMgYW5kIG5vdCBmaW5kIGFueSBwb2lw
dSBib2FyZHMgd2lsbCB1c2UgRFAgbW9kZShvciBtaW5pIERQKS4uCj4gCj4gQWZ0ZXIgY2hlY2tp
bmcgdGhlIEhQRywgY291bGQgeW91IHBsZWFzZSBhY3R1YWxseSB0YWxrIHRvIHRoZSBjb2xsZWFn
dWVzCj4gd2hvIGJyb3VnaCB1cCB0aGUgUEhZIG9uIHRob3NlIHBsYXRmb3JtcyAod2l0aCB0aGUg
ZG93bnN0cmVhYW0ga2VybmVscyk/Cj4gVGhleSBtaWdodCBrbm93IHRoZSBkZXRhaWxzIG5vdCBj
YXB0dXJlZCBpbiB0aGUgSFBHLgo+IApUaGUgZHJpdmVyIGFjdHVhbGx5IGV4aXN0ZWQgaW4gdGhl
IHZlcnkgZmlyc3QgdXBzdHJlYW0gdmVyc2lvbiwgYnV0IGl0IApkaWRu4oCZdCB1c2UgYW55IHRh
YmxlcyBiYWNrIHRoZW4uCk9uIHRoZSBkb3duc3RyZWFtIHNpZGUsIEkgY291bGRu4oCZdCBmaW5k
IGFueSA3bm0gZURQIFBIWSBpbXBsZW1lbnRhdGlvbnMgCmVpdGhlci4KSSB0cmllZCByZWFjaGlu
ZyBvdXQgdG8gYSBmZXcgdGVhbXMsIGJ1dCB0aGlzIHBsYXRmb3JtIGlzIHF1aXRlIG9sZCBhbmQg
Cm1vc3QgcGVvcGxlIGRvbuKAmXQgcmVhbGx5IGhhdmUgY29udGV4dCBhbnkgbW9yZS4gTXkgdW5k
ZXJzdGFuZGluZyBpcyB0aGF0IAppdCB3YXMgcHJpbWFyaWx5IGEgY29tcHV0ZS1vcmllbnRlZCBj
aGlwLCBidXQgSeKAmW0gbm90IHZlcnkgZmFtaWxpYXIgd2l0aCAKdGhhdCBjb2RlIHBhdGggbXlz
ZWxmLiBBdCB0aGlzIHBvaW50LCB0aGUgb25seSByZW1haW5pbmcgb3B0aW9uIGlzIHRvIAp0cnkg
Y29udGFjdGluZyB0aGUgaGFyZHdhcmUgdGVhbSB0byBzZWUgaWYgdGhleSBoYXZlIGFueSBhZGRp
dGlvbmFsIAppbnNpZ2h0cy4KU2luY2UgdGhpcyBpcyB1bmxpa2VseSB0byBiZSByZXNvbHZlZCBx
dWlja2x5LCBJ4oCZZCBsaWtlIHRvIHByb2NlZWQgd2l0aCAKcG9zdGluZyB0aGUgbmV4dCByZXZp
c2lvbiBmaXJzdC4gRm9yIFNDODE4MFgsIGl0IHNob3VsZCBvbmx5IGV2ZXIgYmUgCnVzaW5nIGVE
UCBtb2RlLgoKCi0tIApsaW51eC1waHkgbWFpbGluZyBsaXN0CmxpbnV4LXBoeUBsaXN0cy5pbmZy
YWRlYWQub3JnCmh0dHBzOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xp
bnV4LXBoeQo=
