Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5F796606A321
	for <linux-phy@archiver.kernel.org>; Tue, 27 Oct 2026 11:15:08 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key, unprotected) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=K/He3eT/;
	dkim=fail reason="signature verification failed" (2048-bit key, unprotected) header.d=qualcomm.com header.i=@qualcomm.com header.a=rsa-sha256 header.s=qcppdkim1 header.b=dC26IiSe;
	dkim=fail reason="signature verification failed" (2048-bit key, unprotected) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.a=rsa-sha256 header.s=google header.b=C5opGbRH
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Unsubscribe-Post:List-Owner;
	bh=d/UvN37WhbG95+SKULqE8dXVPh4wMay7qVw7iEC6xLQ=; b=K/He3eT/+B7niIAo5/ke986m+z
	PFe4l/WkhsquS4achoHgg7eNmk8BaHr5FnnC90jEAQ+KpsQFuNV2RSmPrh1R8aSiz0eE7p1FvFn4P
	hC2TCCW2BCDX6yPk3oTmpqKkfKV24/tNsM83jNlWkrKSI6KsJvH7srwmlmxJqA1dWSX1FpAQlnw3v
	fTkDgqxUWVFD4bvFV726IQUyL4ipIPbZ57GFuUS0QgYD8Xw1Mav1tvECT1RgHSO5B5pKrdXxy6NVM
	HcspihKwNHV2OGWwX//kV5kXcWym3C3fn8s5IAe6bQYl2fdEEPp+42XVU+9LcIhkFFlAXcbzhogme
	3GiFykrQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xLf91-00000004Sha-4AZS;
	Tue, 27 Oct 2026 11:15:08 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xLf8z-00000004Sh2-0p9Q
	for linux-phy@lists.infradead.org;
	Tue, 27 Oct 2026 11:15:06 +0000
Received: from pps.filterd (m0279867.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 69RAeD8E3012241
	for <linux-phy@lists.infradead.org>; Tue, 27 Oct 2026 11:15:04 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	tRucvQt5o49jG1TwiHHjvTf2I1AR63Jc3hAhI3GDX5Q=; b=dC26IiSeUN59GFJo
	RQx8oyqKnkOoM5IaASm3NFGndcZBXQvyMcM3uKDSxqjVbTNnDEb3ssNNdiAF3Frn
	An/0XYKg5r2a53M1+gWpBXgKmmXv6hOA9UrY/lLXWWZuNszv8KsNBkMq+jC8jVfG
	VvSDqQobri9ti/7TgmT2vkkK9su3XGGziJ3o0Me4cG9I7PyuK2EsCpYc6Gd+zW5i
	3lwcWKa6c2dJL+ZbzcKMy1fztEha12NosOv4mCnNrlziXsUSaPXxjtyBLTwM6IN8
	apARx7ayk4qAUvQjKEBp0acX0+ZT006B33M87ANpr9JqzI7TtnA14Ni3Tj1Dwyf9
	/l9Osw==
Received: from mail-qt1-f200.google.com (mail-qt1-f200.google.com [209.85.160.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4hje3daqnq-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Tue, 27 Oct 2026 11:15:03 +0000 (GMT)
Received: by mail-qt1-f200.google.com with SMTP id d75a77b69052e-53568f05f8bso12939521cf.3
        for <linux-phy@lists.infradead.org>; Tue, 27 Oct 2026 04:15:03 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1793099703; x=1793704503; darn=lists.infradead.org;
        h=content-transfer-encoding:content-type:in-reply-to:from
         :content-language:references:cc:to:subject:user-agent:mime-version
         :date:message-id:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=tRucvQt5o49jG1TwiHHjvTf2I1AR63Jc3hAhI3GDX5Q=;
        b=C5opGbRHhVxkzC9qZ+oVTvN8J9WQ7bgB9fj9sK22wHlVFSB/3Fcr14lUPH/+dJgZxD
         L1KlgKV8zJ1yFIrQkIDn23iHkXP1HyUbQb9fDY+ScU874Ollh9kRF9e4d388B0aOqZfU
         TfTf13o5hiZL60OzTUCkP9nGB0gWsv0kESCN2735IRaeL+PVNW3xjUMlt4ru4Waa3Yc4
         hWy7l3cMjCNMnPMQ9DPy5cJMBXzlbWskTTWW7hMk9uL3UWAAfhyFLus8IX4h6lcITZgX
         zdaVcmp1uJLm4a4ZGXIkjPsW1v+A9Zho6jvh6fl1ZBgHGIk55gk8Pc+UMZPX1TnKkwe6
         Iq/g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1793099703; x=1793704503;
        h=content-transfer-encoding:content-type:in-reply-to:from
         :content-language:references:cc:to:subject:user-agent:mime-version
         :date:message-id:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=tRucvQt5o49jG1TwiHHjvTf2I1AR63Jc3hAhI3GDX5Q=;
        b=mJ7xyDv2cCTAohy2hmY+hNk5adZc/LvxTrzx+OMJ/p1H/7+e86Kr1KSrJ8rbLdxg18
         YjWJI6q0/fsNStjn5wBANdbfDWXXCb/JN5aeu6gjmrshQtVIIorlkd8L+OjaYJhszhYl
         tKKdktkeQe4GKYV6cQRJBJ7tCNP1BHRd6K9acbsEYzDwqKl88cV/u/SdwtM9bAihuC35
         kiZ3DnTGaqvDL7IVfCvWBJcnu8a7LTLUBBoxIgQIAUwguJ2cUn70Tvf9SOGdI73axnwJ
         DfmMmAmdJBBF6zdsfUyahCnUhtacaato/MKqalYXwsvQ6uO6NbOYj6rQjj8GiNgSwKun
         UrHQ==
X-Forwarded-Encrypted: i=1; AKwUvBxBks+BHduzowXKr/KKAyYtNEWVmkPEgPA24aI6e6aKd9eXFN7nAXMR5ZAIRkE2+jyj+zeKZWlrpBo=@lists.infradead.org
X-Gm-Message-State: AFq9FYJQhMEpnCQkeTF5OAh0VC2PZ1E6ELZrNCgTJP8bhGBrnUY29hTL
	cP5BrzBWkZ3eCBN21Dd1VgDlGVwza/ruwBNWASG34v8r+MLJYEEznSzIFwlX1p6iDjev8lOM493
	lrnHSBzzio2vxRcZtA1XtqHjSSEXjQU0+B8WrUdpXoM0A/w836+1qaG4KF4VfQTkhd3HC
X-Gm-Gg: AYBFou3gKUXmHbkarRrJcva7diYAjz0bSVr+Vw6PWVnG5bB+jEjLtMdMAAd45fu8FRT
	p/WXkZsyku3oGphPXRgMATbFGGc816vQtDjNLGU6cf+jnIsWMSgsiPmYK+mDiJLkWoaRgu+pRKY
	dWc/Yb3JKqg65ZD+dGr2QyAV+rMdvwU4hGPcJZlwd7qepKejrZA/bLaFg4yOjMgCc+z+4FBlsGU
	ynnEzNNcVki3lADZBIOlyJcmlDpLEHuGiRmvui8Wxn1OmVr+FsbmtAC5kjbyBkoWQa7kwk3kNtr
	TrPEMbbXOBt7rR5d88c13HXl39ZhT0fRyuhjEsMzmBTZrcrVlwRuBvldjBZUGVbiX50ifk+Ula2
	uWNW/sKOrtgeSpnDo5kSjsQ==
X-Received: by 2002:a05:620a:8a0f:b0:940:f21a:eb64 with SMTP id af79cd13be357-940f21aef09mr1112252185a.5.1793099702609;
        Tue, 27 Oct 2026 04:15:02 -0700 (PDT)
X-Received: by 2002:a05:620a:8a0f:b0:940:f21a:eb64 with SMTP id af79cd13be357-940f21aef09mr1112248085a.5.1793099702115;
        Tue, 27 Oct 2026 04:15:02 -0700 (PDT)
Received: from [192.168.226.26] ([178.235.128.140])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-c46bd4e99a2sm436376166b.24.2026.10.27.04.14.59
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 27 Oct 2026 04:15:01 -0700 (PDT)
Message-ID: <c935cf4b-04de-438d-9049-7126fd82521a@oss.qualcomm.com>
Date: Tue, 27 Oct 2026 12:14:58 +0100
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 4/7] arm64: dts: qcom: sm8450: Add CAMSS device tree node
To: Vladimir Zapolskiy <vz@kernel.org>,
        Loic Poulain <loic.poulain@oss.qualcomm.com>
Cc: Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>,
        Abel Vesa <abelvesa@kernel.org>, Bryan O'Donoghue <bod@kernel.org>,
        Vinod Koul <vkoul@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        linux-arm-msm@vger.kernel.org,
        Mauro Carvalho Chehab <mchehab@kernel.org>,
        linux-media@vger.kernel.org,
        Neil Armstrong <neil.armstrong@linaro.org>,
        Manivannan Sadhasivam <mani@kernel.org>, linux-phy@lists.infradead.org,
        Conor Dooley <conor+dt@kernel.org>, devicetree@vger.kernel.org
References: <20261023163057.775917-1-vz@kernel.org>
 <20261023163057.775917-5-vz@kernel.org>
 <CAFEp6-03Kqxya74Cd+hgueZ0D4xAcYNOx_R1sNqdMu2JrMBynw@mail.gmail.com>
 <378094fb-5f7f-42c6-a91f-158e2083a6cb@kernel.org>
 <CAFEp6-3XTotgkOKRACGLT91wUw30CgFB=44RtHnXfA6cOF7bVA@mail.gmail.com>
 <0d25a732-ccd5-4a7b-9809-93e67899b4e7@kernel.org>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <0d25a732-ccd5-4a7b-9809-93e67899b4e7@kernel.org>
X-Proofpoint-Spam-Info: AW1haW4tMjYxMDI3MDA0NCBTYWx0ZWRfX93m7JoEzubV9
 6XoFct0/o7Xz0Y4F36r0MOR+Gu60zMjWDingJopOrOK9Z+RbuoQ59wXlZwtcmrwXxwLEleoydHw
 6lOK+kUmH3bB4LSa0XafD5GWbRmjC3Y=
X-Proofpoint-GUID: xXXq16Vpo45jFlr2VaLpug0t9lny9b27
X-Proofpoint-ORIG-GUID: xXXq16Vpo45jFlr2VaLpug0t9lny9b27
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYxMDI3MDA0NCBTYWx0ZWRfX6Ff+fdW2FW0R
 2hlTJL7HH3hjysTizpuCWbaZmVuu2UlAsNClhmYjAZ+cyEiPi4I+T6gopAj2rFO1aJ9gVvdFfD5
 5o4ex/9bJwPX1GPtUAeoGKx1RYL9dvlZEMfV9lTiYGPGLzXYLUaMbsZ0VcXVvqGJy/qqbuU/RXx
 p972Xx5lW+cfnX54oZtW6GoKy+BH6qpAAh0PhObS++4zpIcYgIFtkckmvReljkYbfD0tIiO8Okp
 ZW2e8bNqLVQLcF1Vco8/fzV9/RCz6mRAAV+oj8f0w1BiU3okZl2w60t4VTqjzE45djkcnzLkX7x
 NlPQ7RbrRW73Kj7fg727iywtMEmFHjtjcwihKJ23ofY6sId9DBjcmN+onrQMCbVEuYupQ5oKSpS
 V4oRVp4qBkdHfdqJzbtlR2KMauQ+1KRnIpsySEPPIjJS0lJc5hvGduWWNydDjEPe8pMwxkJFwOi
 I+UyaIs0cikvpXViWiA==
X-Authority-Analysis: v=2.4 cv=SN/Xx+vH c=1 sm=1 tr=0 ts=6ae087b8 cx=c_pps
 a=JbAStetqSzwMeJznSMzCyw==:117 a=PRfkaYvzSr8QmIIGAkY2Sg==:17
 a=IkcTkHD0fZMA:10 a=660iZSQnnn4A:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=eoimf2acIAo5FJnRuUoq:22
 a=VwQbUJbxAAAA:8 a=VFv3GnuNtnl0mo3CAFAA:9 a=3ZKOabzyN94A:10 a=QEXdDO2ut3YA:10
 a=uxP6HrT_eTzRwkO_Te1X:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1176,Hydra:6.1.138,FMLib:17.12.100.49
 definitions=2026-10-27_02,2026-10-21_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 impostorscore=0 spamscore=0 malwarescore=0 phishscore=0 adultscore=0
 lowpriorityscore=0 clxscore=1015 priorityscore=1501 suspectscore=0
 bulkscore=0 classifier=typeunknown authscore=0 authtc= authcc= route=outbound
 adjust=0 reason=mlx scancount=1 engine=8.22.0-2610190000
 definitions=main-2610270044
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261027_041505_344074_FF20E5DF 
X-CRM114-Status: GOOD (  14.00  )
X-Spam-Score: -2.8 (--)
X-BeenThere: linux-phy@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: Linux Phy Mailing list <linux-phy.lists.infradead.org>
List-Archive: <http://lists.infradead.org/pipermail/linux-phy/>
List-Post: <mailto:linux-phy@lists.infradead.org>
List-Help: <mailto:linux-phy-request@lists.infradead.org?subject=help>
List-Subscribe: <https://lists.infradead.org/mailman/listinfo/linux-phy>,
 <mailto:linux-phy-request@lists.infradead.org?subject=subscribe>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-phy" <linux-phy-bounces@lists.infradead.org>
X-Spam-Status: No, score=-5.7 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_EF,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,USER_AGENT_SANE_1
	autolearn=no autolearn_force=no version=4.0.1
X-Spam-Checker-Version: SpamAssassin 4.0.1 (2024-03-26) on
	aws-us-west-2-korg-listserv-alma10-1

T24gMTAvMjcvMjYgMTA6NTQgQU0sIFZsYWRpbWlyIFphcG9sc2tpeSB3cm90ZToKPiBPbiAxMC8y
Ny8yNiAxMTowNywgTG9pYyBQb3VsYWluIHdyb3RlOgo+PiBPbiBNb24sIE9jdCAyNiwgMjAyNiBh
dCAxMTozOeKAr1BNIFZsYWRpbWlyIFphcG9sc2tpeSA8dnpAa2VybmVsLm9yZz4gd3JvdGU6Cgpb
Li4uXQoKPj4+PiBJcyB0aGVyZSBhIGNhbXNzICJ0b3AiIHJlZ2lzdGVyIHRvIGRlc2NyaWJlIGhl
cmU/IGUuZy4gdG8gcmV0cmlldmUgdGhlCj4+Pj4gQ0FNU1MgaGFyZHdhcmUgdmVyc2lvbi4KPj4+
Cj4+PiBJJ20gbm90IGF3YXJlIG9mIGFueXRoaW5nIGxpa2UgdGhhdC4gV2hhdCBpcyAiQ0FNU1Mg
aGFyZHdhcmUgdmVyc2lvbiI/Cj4+Pgo+Pj4gQ0FNU1MgZW1icmFjZXMgdmFyaW91cyBibG9ja3Ms
IHRoZXJlIGFyZSBDU0lEIGFuZCBWRkUsIGZ1bGwgYW5kIGxpdGUKPj4+IElQcywgYW5kIGFsbCB0
aGVzZSBjb21wb25lbnRzIGRvIGV4cG9ydCB0aGVpciB2ZXJzaW9ucyBpbmRpdmlkdWFsbHkuCj4+
Cj4+IEkgbWVhbiwgQ0FNU1MgdXN1YWxseSBoYXMgYSB0b3AtbGV2ZWwgcmVnaXN0ZXIgYmxvY2sg
KG9mdGVuIHRvcCBvcgo+PiBjcGFzX3RvcCkgdGhhdCBjb250YWlucyB0aGUgVGl0YW4vU3BlY3Ry
YSB2ZXJzaW9uIGluZm9ybWF0aW9uLCBhbG9uZwo+PiB3aXRoIHZhcmlvdXMgZ2xvYmFsIGNvbmZp
Z3VyYXRpb24gYW5kIG11eCByZWdpc3RlcnMuCj4gCj4gT24gU004NDUwIHRoZXJlIGlzICJjcGFz
X3RvcCIgcmVnaXN0ZXIgPDB4YWMxMzAwMCAweDEwMDA+IChub3QgaW4gdGhlCj4gc2VyaWVzKSwg
SSBiZWxpZXZlIHlvdSByZWZlcmVuY2UgdG8gaXQuCj4gCj4gSXMgQ1BBUyBhIG5hdHVyYWwgcGFy
dCBvZiBDQU1TUz8gQ2FuIGl0IGJlIG1vZGVsbGVkIGRpZmZlcmVudGx5LCBlLmcuCj4gYXMgYSBz
ZXBhcmF0ZSBkZXZpY2UvZHJpdmVyLCBsaWtlIGl0IHdhcyBkb25lIHdpdGggSlBFRyBvciBDU0lQ
SFk/CgoiQ1BBU19UT1AiIGlzIGZvciBhbGwgaW50ZW50cyBhbmQgcHVycG9zZXMgdGhlIHNhbWUg
YXMgIkNBTVNTX1RPUCIuCkNQQVMgaXMgZXNzZW50aWFsbHkgYSB3cmFwcGVyIGZvciAidGhpbmdz
IGluIGNhbXNzIHRoYXQgYXJlbid0CnN1YmRldmljZXM9UEhZcy9JRkVzL2V0Yy4iCgpLb25yYWQK
Ci0tIApsaW51eC1waHkgbWFpbGluZyBsaXN0CmxpbnV4LXBoeUBsaXN0cy5pbmZyYWRlYWQub3Jn
Cmh0dHBzOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXBoeQo=
