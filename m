Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 7BC98CCF2DA
	for <linux-phy@archiver.kernel.org>; Mon, 19 Oct 2026 07:15:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=jX8zpT35Uz07F9alfZN1gqJbHkJ/MrrVjhjhoOLNw08=; b=A5htUilbhZOe1O
	K//70inGzz71E9l40KXFvZPtgbql1p58X+STikUQxJ0hCowWKWVrfJsaSTRwXapx663ungqarhUqg
	YfVOLON18arBZyrTRD087EgigOgxA0npRA4JVsaoLFNWa+nyyuiP7/aDPkJQdwD0da8KAV185cHcP
	1L+GFeyWM5VqhbTelIoikrQmpL6uT8u1Df0GEC0Phmor/+j2xWowUE9ioRmhYYYvUwlMMwFRyNDAz
	SXCYrbOGRvBRolcS3iCYcGUFpoUHqLY/7ENRR92b6sadGT3fx3yd7iY2ceB+tyhrAn/6MuOnqCrXY
	p3LJ33lQJY5FHPHgjmRg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xIhbD-00000006ko0-0Q1P;
	Mon, 19 Oct 2026 07:15:59 +0000
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xIhbB-00000006kne-26H0
	for linux-phy@lists.infradead.org;
	Mon, 19 Oct 2026 07:15:58 +0000
Received: from pps.filterd (m0279870.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 69J4j2r01702371
	for <linux-phy@lists.infradead.org>; Mon, 19 Oct 2026 07:15:55 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	M4MJT6YeGZibiJc5UkweyuheztzJk0NqPeuQLRZjQJU=; b=ScPWYaEDZXPmjJ10
	lh0BDztgXADdYkXLkFXqlkLUG8izVusL7yibYfS0p3FyX149joZhW2xqurASsQF5
	1ShdgTUVognEBo63ZSYEGxNMorHGXegLhWxrlnI/cNULHM2VtoJNASn3AEVdjj3y
	tCUa0mz8nGEdImafyMAoYnGYxlT6f5T7SUD6w6atYbMDQAD0SrDRzvp5tbdWf5xl
	VeTlkjpOAoYnxzlqGZr0HXqvueK9+9yGifaj9A3btOBEmqHjbtp1Kc+2790XSrHl
	shlc7IdHRN6hUQgX46u4n0SSomXi1y+Yjz0s0zuGFRDlHHYh0gyDtMgk9nrtrzkw
	zdVuzw==
Received: from mail-dy1-f199.google.com (mail-dy1-f199.google.com [74.125.82.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4hd5w19h0t-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Mon, 19 Oct 2026 07:15:55 +0000 (GMT)
Received: by mail-dy1-f199.google.com with SMTP id 5a478bee46e88-35d4538fd74so6663541eec.1
        for <linux-phy@lists.infradead.org>; Mon, 19 Oct 2026 00:15:55 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1792394154; x=1792998954; darn=lists.infradead.org;
        h=content-transfer-encoding:content-type:in-reply-to:from
         :content-language:references:cc:to:subject:user-agent:mime-version
         :date:message-id:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=M4MJT6YeGZibiJc5UkweyuheztzJk0NqPeuQLRZjQJU=;
        b=UOh2ZrmUI+G+ADRBheInvnLN0pX7E3znMgQnda7q9hzgfPHsYsaDFTJ81IGniiP/yC
         9Xu2gh+5BT6kmHY65j7jChIgQLoxuaEy925Wu/QPvUUs2udZizC9kV2PdF8ZAqj1cqvL
         iOcR2CqX8ToE/WxWEcJwDZMbZoUVPfSrFRj8vIXtOgXej5uggIMU68DrEtV9Z0rAc9XF
         gwY6RUN66xmww2UHu/bw5ZTIOj7JvsESf51qEclk/j532t9qvVZJat+t+/sWpJAyZqsu
         haWCvtyAX63clDOiclINRjPWmV7N/lCcO/w29ku00yidIcG6A77qVt7y2gJLHqw5L+Wm
         Tx9Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1792394154; x=1792998954;
        h=content-transfer-encoding:content-type:in-reply-to:from
         :content-language:references:cc:to:subject:user-agent:mime-version
         :date:message-id:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=M4MJT6YeGZibiJc5UkweyuheztzJk0NqPeuQLRZjQJU=;
        b=jdzmOw7Fm9IFnyyNkbkhFq52bquwHoY2w0qS8lnfD6wAj7aH4xDOTs7VS3pxMN6QhR
         9eWbNXBwTiYWtvPcP+gLpTem6aHDXRgT+S5OEQGTC9svH6j7R+uA0ybkgU47YxLjtPhl
         wMEg6VQ5xxgwWZbP2ul+efxbsRlnhmMl3/ysXWDiV7NuP7373xjUaeVdolcpl6Dy4/8p
         doIIbwaJ3trTwtpOZAh/x58voOQg97bAfyMdsr4phRJNHYASWg0xGIlapIra4T2aOo/B
         FSrHD4z6mrb7FV1vIRQtyxmG5J3Q+M+QhxEqTmhehYWrtJk3ilirysybB4mpDF+VlMx/
         FYPA==
X-Forwarded-Encrypted: i=1; AKwUvBypKuJ+Q7rXdW/2PrjSSBeuKDeQADsBdhFX3M2AzHT3Vqtj+bNUlO3Oj1bBYtY+eOfiCQxQCnJtA54=@lists.infradead.org
X-Gm-Message-State: AFq9FYLINsWC46h4AWkoIV0UNjt8xssW3iOD57AhyEtnIdbGDmhjDSJ0
	vGbgj4d5vcLDlcWavXWf+1UYZDGI26Vv3VM27TUN/a1M2/V8QsMkQi9YjjUkolN/NooxlyDxR/p
	Y5TYpkjdxCUjiiqNKgeZ58Q5Ta1LDeBUq3j82HwiDHZXLHOVZZx89wsztMXXvVjVCjz2N
X-Gm-Gg: AYBFou1lEVaQfnwxR8T+nmyf7dSnNc4GUVLQ32q0aVIy9WVDxUnEJ6GSdrXcndtiBhJ
	iKvQk8grrOlGQGSO/jzeduB2IrM79hA7unDLSOxr++FE8HFY3lVyp4c+zFIBa34kU2YcId/YI9a
	MUiaMm5zPLzAGzhP9c0Pfa3VfRrSiNSiuU4RtoaW6DWJBKExTLlR5A64eLPGfp2Rh/FzmnEWzCp
	iLWF/R59V9ofOj7r+26cFTKXY2IdVlZBwKqyAq3VmrVsM6PU+wLSMrJWNdM0Twvv2tT9zOBcCxc
	EBOXvkSYwtOut8/x7eSxOMwFVIy+EhC03SshbFFKQR/h1F9SffPnS1tGQAbdI52hkPTxVRzKbYR
	YzbecVfDrcMK6l3LJvp43jcpsMYY96Q==
X-Received: by 2002:a05:7301:b13:b0:357:e9:dcea with SMTP id 5a478bee46e88-361a1863976mr9222059eec.15.1792394154521;
        Mon, 19 Oct 2026 00:15:54 -0700 (PDT)
X-Received: by 2002:a05:7301:b13:b0:357:e9:dcea with SMTP id 5a478bee46e88-361a1863976mr9222017eec.15.1792394153891;
        Mon, 19 Oct 2026 00:15:53 -0700 (PDT)
Received: from [192.168.1.10] ([103.211.19.100])
        by smtp.gmail.com with ESMTPSA id 5a478bee46e88-3608308a87csm49525855eec.28.2026.10.19.00.15.48
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 19 Oct 2026 00:15:53 -0700 (PDT)
Message-ID: <188ee6c7-533d-46ec-8c42-1fbefba54f06@oss.qualcomm.com>
Date: Mon, 19 Oct 2026 12:45:46 +0530
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH RFC 0/6] phy/media: Add generic MIPI C-PHY support to
 CSI-2 stack
To: Bryan O'Donoghue <bod@kernel.org>, Vinod Koul <vkoul@kernel.org>,
        Neil Armstrong <neil.armstrong@linaro.org>,
        Manivannan Sadhasivam <mani@kernel.org>,
        Bryan O'Donoghue <bryan.odonoghue@linaro.org>,
        Vladimir Zapolskiy <vladimir.zapolskiy@linaro.org>,
        Loic Poulain <loic.poulain@oss.qualcomm.com>,
        Mauro Carvalho Chehab <mchehab@kernel.org>,
        Anusha Arun Nandi <anusha.nandi@oss.qualcomm.com>
Cc: Vikram Sharma <vikram.sharma@oss.qualcomm.com>,
        linux-phy@lists.infradead.org, linux-kernel@vger.kernel.org,
        linux-media@vger.kernel.org, linux-arm-msm@vger.kernel.org
References: <pFAaFSKH8thStYg6_Ew1gWdIvj5lbNBF36QKdamV1cU1Nc73wEZfM_KdQWL2NmB5fvaUpMPen7qMOzjHZ9ROIQ==@protonmail.internalid>
 <20261017-cphy_support-v1-0-8b0e1237ce95@oss.qualcomm.com>
 <141c5032-1915-4dac-bbcf-e697b762ae40@kernel.org>
Content-Language: en-US
From: Nihal Kumar Gupta <nihal.gupta@oss.qualcomm.com>
In-Reply-To: <141c5032-1915-4dac-bbcf-e697b762ae40@kernel.org>
X-Proofpoint-Spam-Info: AW1haW4tMjYxMDE5MDAyOCBTYWx0ZWRfX+Fo9/6HLrx5g
 dbACmvpuRf8doK8cjPiexxE9CCWRZDukaCe35rbp2a2rC8tgOWa53fal3MYcHljrenrL/oCTQww
 N2aI8TokrJz8z5B3H7Xpk1JcRkukiHg=
X-Authority-Analysis: v=2.4 cv=KuPYSmWN c=1 sm=1 tr=0 ts=6ad5c3ab cx=c_pps
 a=cFYjgdjTJScbgFmBucgdfQ==:117 a=ocEEpg4cTnoGtXECQz/e5g==:17
 a=IkcTkHD0fZMA:10 a=660iZSQnnn4A:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=gowsoOTTUOVcmtlkKump:22
 a=9L-LwuC9zpQyaOcaYhsA:9 a=3ZKOabzyN94A:10 a=QEXdDO2ut3YA:10
 a=scEy_gLbYbu1JhEsrz4S:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYxMDE5MDAyOCBTYWx0ZWRfX6ewZDFchWtgR
 mjdRcnAd/9qBe/DIl3ZI9ZBZIh2PtDbOB7uzLAn1rYD0WZBXV1w17IZ/MAxc+XnI8btq4qFdHla
 hdCFKTHKa6MeRX3AXYk2oCSyK8eIscztWpS5MXKjmGmCw9JSCGEuwiQuZZ6wLed+KI2021V2V16
 YBNS0dKJ8Lo2RIA0bWLZXDa3Sh9bZVxaboLo7JyD1L80XQLgsccMa1mkgDLBkaxLu5cCDjn4CDu
 Rnod5gLluwTnmSjuXCtmR9fQcSWp1HyvbtLJH63jJCGWjRC0A4zACky/udjokRbJVxd8V3LW3xb
 g28khBAQ0Ao2o3AjVw/B9+gC8I7QZpz+OA/NtFuQpLuVi/5Qt93YfHSRZyjIPQvGe95BaOq/0Zi
 PH5WZY1TUameddyuEAlD6pXJdCi6NS6EUPoZZ0RfKOKXuHMYzuX7mGuC//O3q4WYZC891TlSFnh
 symIzWxYKTFR5tuWwTA==
X-Proofpoint-ORIG-GUID: MXtkiykQn-lolPIP5U63wu4PsQum87ZG
X-Proofpoint-GUID: MXtkiykQn-lolPIP5U63wu4PsQum87ZG
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1176,Hydra:6.1.134,FMLib:17.12.100.49
 definitions=2026-10-19_02,2026-10-14_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 phishscore=0 bulkscore=0 priorityscore=1501 impostorscore=0 malwarescore=0
 spamscore=0 clxscore=1015 lowpriorityscore=0 adultscore=0 suspectscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2610080000 definitions=main-2610190028
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261019_001557_658375_CFC817B2 
X-CRM114-Status: GOOD (  24.47  )
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

CgpPbiAxOC0xMC0yMDI2IDA1OjA5LCBCcnlhbiBPJ0Rvbm9naHVlIHdyb3RlOgo+PiDCoCBkcml2
ZXJzL21lZGlhL3BsYXRmb3JtL3Fjb20vY2Ftc3MvY2Ftc3MuY8KgwqDCoMKgwqDCoMKgwqDCoCB8
wqDCoCA4ICstCj4+IMKgIGRyaXZlcnMvcGh5L3F1YWxjb21tL3BoeS1xY29tLW1pcGktY3NpMi0z
cGgtZHBoeS5jIHwgMTU5ICsrKysrKysrKysrKysrKysrLS0tLQo+IAo+IFNvIG9uIHRoaW5nIEkg
bm90aWNlIGFib3V0IHRoaXMgc2VyaWVzIGFuZCBsaWtlIGlzIHRoYXQgdGhlcmUncyBhIHNtYWxs
IGNoYW5nZSB0byB0aGUgZXhpc3RpbmcgM3BoLWRwaHkuYwo+IAo+IC0gU2luY2UgaXQgc3VwcG9y
dHMgM3BoLWNwaHkgdGhlIGZpbGUgc2hvdWxkIGJlIHJlbmFtZWQKPiDCoCAzcGgtY3BoeS1kcGh5
LmMgKG9yIHNvbWV0aGluZykKSSBhZ3JlZSB3aXRoIHRoZSBkaXJlY3Rpb24gaGVyZS4gS2VlcGlu
ZyB0aGUgMy1waGFzZSBDUEhZIGFuZCBEUEhZIHN1cHBvcnQKaW4gYSBzaW5nbGUgZHJpdmVyIGxv
b2tzIGxpa2UgdGhlIHJpZ2h0IG1vZGVsLgoKPiAtIEkgbGlrZSB0aGUgcHJvZ3Jlc3NpdmUgbmF0
dXJlIG9mIGhlIGNoYW5nZXMgaW4gdGhpcyBzZXJpZXMKPiDCoCBhcyBzdHJ1Y3R1cmFsbHkgdGhl
IHJpZ2h0IHdheSB0byBhZGQgc3R1ZmYgaW4uIFNtYWxsIGRpZ2VzdGFibGUKPiDCoCBjb21taXRz
Cj4gLSBJIHRoaW5rIHRoZSBtaXNzaW5nIHBpZWNlIGhlcmUgaXMgZGF0YV9sYW5lc1tdIGFuZCBs
YW5lX3BvbGFyaXRpZXNbXQo+IMKgIHBlciB0aGUgb3RoZXIgc2VyaWVzIGZyb20gUWNvbQo+IC0g
QW5vdGhlciB0aGluZyBpcyB0aGUgb3RoZXIgc2VyaWVzIGZyb20gQW51c2hhIGhhcwo+IMKgIGEg
bW9yZSBhZHZhbmNlZCBtaXBpX29wcyBkYXRhLXN0cnVjdHVyZSBmb3IgQ1BIWS4KPiAKPiBCYXNp
Y2FsbHkgSSBsaWtlIHRoZSBhcHByb2FjaCB0YWtlbiBpbiB0aGlzIHNlcmllcyBmb3IgYSBzbWFs
bGVyIGNoYW5nZSB0byB0aGUgcGh5LXFjb20tbWlwaS1jc2kyLTNwaC1kcGh5LmMgZmlsZS4KPiAK
PiBJJ2QgbGlrZSB0aGUgYmVzdCBvZiBib3RoIHNlcmllcyAtIEkgdGhpbmsgdGhlcmUgaXMgYWxv
dCB0byByZXNvbHZlIG9uIGxhbmVzLCBkYXRhLWxhbmVzIGFuZCBsYW5lLXBvbGFyaXRpZXMgaW4g
dGhlIG90aGVyIHNlcmllcyBhbmQgbG9va2luZyBhdCB0aGlzIHNlcmllcywgaXQgc2VlbXMgdG8g
bWUgd2UgZG9uJ3QgbmVlZCBhIHNlcGFyYXRlIHBoeS1xY29tLW1pcGktY3NpMi0zcGgtY3BoeS5j
LCBJIHRoaW5rIEtvbnJhZCBvYnNlcnZlZCBpbiBHZW9yZ2UncyBzZXJpZXMgdGhhdCByZWFsbHkg
dGhlIGZpbGUgZGVhbHMgd2l0aCAzLXBoYXNlIFBIWXMgYW5kIHRoYXQgc2VlbXMgdHJ1ZSBlbm91
Z2guCj4gCj4gUGxlYXNlIHdvcmsgb3V0IGJldHdlZW4geW91cnNlbGYgYW5kIEFudXNoYSB3aGF0
J3MgbmV4dC4KPiAKPiBJZiBwb3NzaWJsZSBJIHdvdWxkIHByZWZlciB0byBjb250YWluIDNwaCBD
UEhZIGFuZCBEUEhZIHRvIG9uZSBmaWxlIGFzIGlzIGRvbmUgaGVyZSAtIGF0IHRoZSBzYW1lIHRp
bWUgdGhlIGRlZmluaXRpb24gb2YgQ1BIWSBvcHMgYW5kIGxhbmUgbWFwcGluZ3MgaXMgY2xvc2Vy
IHRvIHRoZSBzcGVjIGluIHRoZSBvdGhlciBzZXJpZXMuCj4gCj4gSSB0aGluayBlaXRoZXIgeW91
IHNob3VsZCB0YWtlIEFudXNoYSdzIHN0cnVjdHMgYW5kIGxhbmUgZGVmaW5pdGlvbnMgb3IgQW51
c2hhIHNob3VsZCB0YWtlIHlvdXIgYXBwcm9hY2ggdG8gbWluaW1hbCBjaGFuZ2UgdG8gdGhlIHBo
eS1xY29tLW1pcGktY3NpMi0zcGgtZHBoeS5jIHJlbmFtaW5nIGl0Lgo+IE9uZSBvZiB5b3UgbmVl
ZHMgdG8gcGljayB1cCB0aGUgcGF0Y2hlcyBmcm9tIHRoZSBvdGhlciBvbmUuCj4gCkkgY2FuIHBp
Y2sgdXAgdGhlIENQSFkgb3BzL2xhbmUgbWFwcGluZyBwaWVjZXMgZnJvbSBBbnVzaGEncyBzZXJp
ZXMgYW5kCnBvc3QgdGhlIGNvbWJpbmVkIGNvbW1vbiBzZXJpZXMuIEFudXNoYSwgaWYgeW91IHBy
ZWZlciB0byBjYXJyeSBpdCBpbnN0ZWFkLApwbGVhc2UgZmVlbCBmcmVlIHRvIHRha2UgdGhpcyBz
ZXJpZXMgYW5kIGZvbGQgaW4geW91ciBDUEhZIG9wcy9sYW5lIG1hcHBpbmcKY2hhbmdlcy4KClRo
ZSBzcGxpdCBJIHN1Z2dlc3QgaXM6CgotIENvbWJpbmVkIGNvbW1vbiBzZXJpZXM6IGRyaXZlciBy
ZW5hbWUgKyBnZW5lcmljIDNwaCBDUEhZIHN1cHBvcnQgKyBDUEhZIG9wcy9sYW5lIG1hcHBpbmcu
Ci0gRm9sbG93LXVwIGZyb20gQW51c2hhOiBMZW1hbnMvTW9uYWNvLXNwZWNpZmljIGxhbmUvcmVn
aXN0ZXIgcHJvZ3JhbW1pbmcuCi0gRm9sbG93LXVwIGZyb20gR2VvcmdlOiBIYW1vYSBzdXBwb3J0
IG9uIHRvcCBvZiB0aGUgY29tbW9uIENQSFkgc3VwcG9ydC4KCi0tIApSZWdhcmRzLApOaWhhbCBL
dW1hciBHdXB0YQoKCi0tIApsaW51eC1waHkgbWFpbGluZyBsaXN0CmxpbnV4LXBoeUBsaXN0cy5p
bmZyYWRlYWQub3JnCmh0dHBzOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZv
L2xpbnV4LXBoeQo=
