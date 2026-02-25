Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 05437EFD204
	for <linux-phy@archiver.kernel.org>; Wed, 25 Feb 2026 08:00:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Q3XT9u6OMOhdkxoqt0eKC1jYZc2BQbgKyVySPS71AOU=; b=KUamlG3zT1tqZn
	nhj/LOmsCgYz3CrQN5KpQBxNfYSeWILLk/MGpL5cU8lT2q05uk+woQujXuiCNRcgS5+LOMk6ieTu1
	r7J9D54FLgE2SnUqTwvYQUznC+V/Oa21e+X3dJ9YSHutXHCrYo5U09AzogeJxXDSMQYj64eWUgOkF
	/DM+KLVuD2Rsvu+ljUYwuA+BEXTfd7HcoBdo55vW7ibOOFXD4al9ydfCkJx8aEH9sa15tzSjzfYGc
	acx0vMt+mfzjNr/U/y+iRippCifuCErxvI3L4tpKuQqgE1t+i8nRL+f2sYYe4fWYhUR2nCOBaQRAU
	8apiDWs0nIOb79CcQv7A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vv9oo-00000003Siv-0uaB;
	Wed, 25 Feb 2026 08:00:26 +0000
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vv9ol-00000003SiV-2EvY
	for linux-phy@lists.infradead.org;
	Wed, 25 Feb 2026 08:00:24 +0000
Received: from pps.filterd (m0279869.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 61P2MT9t583230
	for <linux-phy@lists.infradead.org>; Wed, 25 Feb 2026 08:00:22 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	7GyPCX4s3bHnIw6xPuH3MulLGRJovVoI+WeruDlF4W0=; b=LV+QCZw9aL3iEixL
	r7NFIN1SEreU3z3DzMdkpU7rKnrHrymZKxN9+4dlMmJcyEuz0B29ahlwLHyeVePw
	1RFm0cF66sPBJpKy9ewJZcr1mzyDLcgkhMXfwezJ8n6HJPRY3SKXZHsC5MeNYV9b
	XfY3u37VTP0ddXsyvnFoM7437z7h5H/nmF4h17nJ/XJdJ5pw4VKD8q/K9F4Dg7is
	NqSpQKQ2CqyelFzPFSS51zk302h+ujXktnJBW04qZxZRUpXJAyaK8t38hjVA+NXP
	QRzAux/U1/gtXr0REYOV4utGzLv4L3cmhBhUrEc43X7EcOZm7b30VCsKzxjoGT6Z
	8X3h1A==
Received: from mail-pf1-f198.google.com (mail-pf1-f198.google.com [209.85.210.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4chg2gtd7e-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Wed, 25 Feb 2026 08:00:22 +0000 (GMT)
Received: by mail-pf1-f198.google.com with SMTP id d2e1a72fcca58-824b42b8a81so24447873b3a.3
        for <linux-phy@lists.infradead.org>; Wed, 25 Feb 2026 00:00:22 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1772006421; x=1772611221; darn=lists.infradead.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=7GyPCX4s3bHnIw6xPuH3MulLGRJovVoI+WeruDlF4W0=;
        b=UPhvLQyX5x9nVsnCGPxNfIFedcqL3a05H8qGS1WTwcBxwW3jSoLlVPHrbJawQ+lIRJ
         +Y0YcuPjB2RMQA/K0iHQEymmkHhh2QtqbUGLvaBFVxVizReYky7M67Z6lj3wuweBFlYr
         E6wwwZehelU0Xd1qEsZs2FJkYUzcfsJHbW2ZkBrN+WcITbLkugI6sG3ctZrsenvyGos8
         ZDBzNT5DDzyon/1Z9Zv7Zb/s/okh4e0zjvGHbfH8N3eb43a82X2s4trm1GdeU8UrmVxK
         /82NfGcd5VG84mvtfyon7lElXgHclGC6z+4SAJ0B4C0v961Y5WVG52WVejTtQqr15NBw
         uJ6g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1772006421; x=1772611221;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=7GyPCX4s3bHnIw6xPuH3MulLGRJovVoI+WeruDlF4W0=;
        b=ePAu3ht5nijuwqiH5tm+bPUAr0mGFwSLfoWJduI+kJcKFhNxs/JBnzrVyYtvx2OAWD
         Ci/ixau7rK8V/kOj1FAp4Q3J4ZA68pqsm1ykX0cg+CmXOn0vTgA3GtJw+2SaLsmmz1V/
         ZPlejOU+jRgix98575MERkx9UQGU5OjXs+LTbGM4UlDkLDt00KDIBDEjc8iVtjxjDeiJ
         eP93IJAwjVm8+jm8d4xaHa8lC7QRL5z/ine7U/U/q6WGBel8kwhOsAKnEMxIxsEQBOCU
         c0ZvBITRCNiqhUgAc4anzqVt9bOqJLGxMKr8iTVC/3ou3HyXhfKofu4UKWhs58cClkUR
         x3FQ==
X-Forwarded-Encrypted: i=1; AJvYcCWfCtc1PpoQkk3Tw3H6v75mxvG0AACfq1hSFyWW3L2zvVc0q5UvcMrdKQc8HJtPB/+XRh3KQ8detIg=@lists.infradead.org
X-Gm-Message-State: AOJu0YwYaZKzIMYXfDWS5y5hNtaxn1VH0Z/m6XCj1vKJhYf4oEANsgok
	3Wjd10vs2apkcofbOZFbF6ERP4ln1Od4RNimojM6wzbvZzzGtAENC8MDUb1cS2UpB9NwNZBzyqb
	yp8ZrzNhaiJu9ut0HtGUC7CtZ75UCERSsNVKz1PO6h8JmsdcigVZube3WI5UWXN23+LCc
X-Gm-Gg: ATEYQzzDAxvoXgNpfb0pw+wYDOBBa2OlKQSBJKX1QwFWNclj28TTifV/Ook0kEa8s1D
	CAAhlegwgAA3E7iwNURjXrmeM16Qx3fbgtmR2cFizjbTmlS9kt5xj3PCivbRZvOYPVHc0KsD+tm
	nt/HkuSGrp8eMwXzNTqUGlMyHPxxyMCwAexz9k+k9C6qBN28ypmsE7v4ARamzksYSm92c1wnt0o
	itKli2BEYWTdIPd0efOQG3i+zZzrXcYQmpdOmVUFGfQ8GPER8yAGarWLND3+Y/HFuAeSaE4MI96
	kGHQPI1KM/DgtdtIgIbB6ftwR8pf6dektHvx9yobAhtShInASo44ru/uvVT8pJP6qiPCmxiZpqr
	BcUS6Ad3CgACM7rldVW7WYd92yvh7Lt2eSU/BFjiC0hJWha8gcPnKgMQ8YGf7lbDNKBLAh8hE5u
	R1aOKwDaVigmKybkq1
X-Received: by 2002:a05:6a00:2e16:b0:7ef:d070:df1e with SMTP id d2e1a72fcca58-826da8bde47mr14214857b3a.3.1772006420982;
        Wed, 25 Feb 2026 00:00:20 -0800 (PST)
X-Received: by 2002:a05:6a00:2e16:b0:7ef:d070:df1e with SMTP id d2e1a72fcca58-826da8bde47mr14214809b3a.3.1772006420313;
        Wed, 25 Feb 2026 00:00:20 -0800 (PST)
Received: from [10.133.33.74] (tpe-colo-wan-fw-bordernet.qualcomm.com. [103.229.16.4])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-826dd692b99sm13116288b3a.24.2026.02.25.00.00.18
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 25 Feb 2026 00:00:19 -0800 (PST)
Message-ID: <70824913-ab52-4737-ae49-50cbe6251e4c@oss.qualcomm.com>
Date: Wed, 25 Feb 2026 16:00:15 +0800
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 3/3] phy: qcom: edp: Add eDP phy mode switch support
To: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>,
        Vinod Koul <vkoul@kernel.org>,
        Neil Armstrong <neil.armstrong@linaro.org>
Cc: linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
        linux-kernel@vger.kernel.org
References: <20260205-edp_phy-v1-0-231882bbf3f1@oss.qualcomm.com>
 <20260205-edp_phy-v1-3-231882bbf3f1@oss.qualcomm.com>
 <af15838f-6a31-4017-ae5d-7b5e30f24aa4@oss.qualcomm.com>
 <845165e6-4595-41de-8cff-d065e8f6b6be@oss.qualcomm.com>
 <f7fed0cc-0c59-4a75-b045-a83df924113d@oss.qualcomm.com>
Content-Language: en-US
From: Yongxing Mou <yongxing.mou@oss.qualcomm.com>
In-Reply-To: <f7fed0cc-0c59-4a75-b045-a83df924113d@oss.qualcomm.com>
X-Proofpoint-ORIG-GUID: tzxuITX0_NVszxpU1-X07jR5itgL0LPU
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMjI1MDA3NyBTYWx0ZWRfX5JxkU4b7BTt4
 gjRoxII8T1BNySM/dQ1ej/xXf8PxVtSUUDruCzF1dhlpjopu7BuyH+naL65Xg9KKTBsG7Z1Cr0j
 8kClkr1dqdG4pMZ5uWtXH1a2PM9EeWYBK4fDN6U1Q8j8vC+RA/FjSJNlM89HznTQC+wpT1p7Ect
 93oeCDiI8Aygy7ObJm9YT0JT3WspvLfA+9olaJlWzse5sMIlGuJFVNkoInxEhSPfALfp+K/YYPM
 9MQU7H6hyfX19M5ZPAQNDwmlkdpdd2jlVjs7zLR4xM/nUNWrxtlxIFQ8tzf3eaDArzw4843LHu+
 +Yk+dUHSjwBJdvXLrxz6CePj4fkHaPFJVXZ3Ms87OdqUQOku8bCNYk1LaNZzzX/Tr1wU03ZKKeE
 EnTkJuA5HTPO7yo/An7VkWMShjVgko+fX6jobuveRdIQe9XP49plWQufaudgWoyoC6Xuiel64hl
 IhWWAN87Wo75fqCFwsA==
X-Authority-Analysis: v=2.4 cv=ftHRpV4f c=1 sm=1 tr=0 ts=699eac16 cx=c_pps
 a=m5Vt/hrsBiPMCU0y4gIsQw==:117 a=nuhDOHQX5FNHPW3J6Bj6AA==:17
 a=IkcTkHD0fZMA:10 a=HzLeVaNsDn8A:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=_glEPmIy2e8OvE2BGh3C:22
 a=EUspDBNiAAAA:8 a=7HR7IauXUe_kPJgae54A:9 a=3ZKOabzyN94A:10 a=QEXdDO2ut3YA:10
 a=IoOABgeZipijB_acs4fv:22
X-Proofpoint-GUID: tzxuITX0_NVszxpU1-X07jR5itgL0LPU
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-02-24_03,2026-02-23_03,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 priorityscore=1501 malwarescore=0 suspectscore=0 clxscore=1015 spamscore=0
 impostorscore=0 lowpriorityscore=0 phishscore=0 bulkscore=0 adultscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2602130000 definitions=main-2602250077
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260225_000023_712532_52B537F9 
X-CRM114-Status: GOOD (  15.47  )
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

CgpPbiAyLzEzLzIwMjYgNzowNiBQTSwgS29ucmFkIER5YmNpbyB3cm90ZToKPiBPbiAyLzEwLzI2
IDExOjI5IEFNLCBZb25neGluZyBNb3Ugd3JvdGU6Cj4+Cj4+Cj4+IE9uIDIvNi8yMDI2IDc6MDIg
UE0sIEtvbnJhZCBEeWJjaW8gd3JvdGU6Cj4+PiBPbiAyLzUvMjYgMTA6MjAgQU0sIFlvbmd4aW5n
IE1vdSB3cm90ZToKPj4+PiBBZGQgRFAvZURQIHN3aXRjaCBzdXBwb3J0IGJ5IHNwbGl0dGluZyB0
aGUgUEhZIHN3aW5nL3ByZS1lbXBoYXNpcyB0YWJsZXMKPj4+PiBpbnRvIHNlcGFyYXRlIERQIGFu
ZCBlRFAgY29uZmlndXJhdGlvbnMuIFRoaXMgYWxsb3dzIHRoZSBkcml2ZXIgdG8gc2VsZWN0Cj4+
Pj4gdGhlIGNvcnJlY3QgdGFibGUgYmFzZWQgb24gdGhlIGlzX2VkcCBmbGFnLgo+Pj4+Cj4+Pj4g
QWRkIGEgZGVkaWNhdGVkIHRhYmxlIGZvciB0aGUgU0M3MjgwL2dseW11ciBwbGF0Zm9ybXMsIGFz
IHRoZXkgYXJlIG5vdAo+Pj4+IGNvbXBhdGlibGUgd2l0aCB0aGUgb3RoZXJzLgo+Pj4+Cj4+Pj4g
U2lnbmVkLW9mZi1ieTogWW9uZ3hpbmcgTW91IDx5b25neGluZy5tb3VAb3NzLnF1YWxjb21tLmNv
bT4KPj4+PiAtLS0KPj4+Cj4+PiBbLi4uXQo+Pj4KPj4+PiArc3RhdGljIGNvbnN0IHU4IGVkcF9z
d2luZ19oYnIyX2hicjNfdjNbNF1bNF0gPSB7Cj4+Pj4gK8KgwqDCoCB7IDB4MGIsIDB4MTEsIDB4
MTYsIDB4MWIgfSwKPj4+PiArwqDCoMKgIHsgMHgwYiwgMHgxOSwgMHgxZiwgMHhmZiB9LAo+Pj4+
ICvCoMKgwqAgeyAweDE4LCAweDFmLCAweGZmLCAweGZmIH0sCj4+Pj4gK8KgwqDCoCB7IDB4MWYs
IDB4ZmYsIDB4ZmYsIDB4ZmYgfQo+Pj4+ICt9Owo+Pj4+ICsKPj4+PiArc3RhdGljIGNvbnN0IHU4
IGVkcF9wcmVfZW1wX2hicjJfaGJyM192M1s0XVs0XSA9IHsKPj4+PiArwqDCoMKgIHsgMHgwYywg
MHgxNSwgMHgxOSwgMHgxZSB9LAo+Pj4+ICvCoMKgwqAgeyAweDA5LCAweDE0LCAweDE5LCAweGZm
IH0sCj4+Pj4gK8KgwqDCoCB7IDB4MGYsIDB4MTQsIDB4ZmYsIDB4ZmYgfSwKPj4+PiArwqDCoMKg
IHsgMHgwZCwgMHhmZiwgMHhmZiwgMHhmZiB9Cj4+Pj4gK307Cj4+Pgo+Pj4gVGhpcyBpcyBub3Qg
cXVpdGUgaW4gbGluZSB3aXRoIGRvY3MgZm9yIGtvZGlhay4gTm93LCBpZiB5b3UgaGF2ZQo+Pj4g
YmV0dGVyL25ld2VyIHNlcXVlbmNlcyB0aGFuIHRoZSBIUEcsIEknbSBub3Qgb2JqZWN0aW5nLCBi
dXQgcGxlYXNlCj4+PiBjcm9zcy1jaGVjawo+Pj4KPj4+IHRoZSByZXN0IG9mIHRoaXMgcGF0Y2gg
SSB0aGluayBsb29rcyBmaW5lCj4+Pgo+Pj4gS29ucmFkCj4+IFRoYW5rcyBmb3IgcG9pbnQgdGhh
dC4uCj4+Pj4gK3N0YXRpYyBjb25zdCB1OCBlZHBfc3dpbmdfaGJyMl9oYnIzX3YzWzRdWzRdID0g
ewo+Pj4+ICvCoMKgwqAgeyAweDBiLCAweDExLCAweDE2LCAweDFiIH0sCj4+IGhlcmUgc2hvdWxk
IGJlIHsgMHgwNiwgMHgxMSwgMHgxNiwgMHgxYiB9LCBhcnJbMF1bMV06IDB4MGItPjB4MDYKPj4g
ZG9lcyB0aGlzIGxvb2tzIGZpbmU/IHdpbGwgY2hlY2sgdGFibGVzIGFnYWluLi4KPiAKPiBGb3Ig
a29kaWFrIEkgc2VlOgo+IAo+IGVEUCBIQlIyMyAvIGxvdyB2ZGlmZjoKPiAKPiBzd2luZwo+IDB4
MGIsIDB4MTEsIDB4MTcsIDB4MWMKPiAweDEwLCAweDE5LCAweDFmCj4gMHgxOSwgMHgxZgo+IDB4
MWYKPiAKPiBwcmVlbXAKPiAweDBjLCAweDE1LCAweDE5LCAweDFlCj4gMHgwOCwgMHgxNSwgMHgx
OQo+IDB4MGUsIDB4MTQKPiAweDBkCj4gCj4gKG5vdGljZSBob3cgdGhhdCBtb3N0bHkgZGlmZmVy
cyBieSB0aGUgbG93ZXN0IGJpdCBiZWluZyAobm90KXNldCB2cwo+IHlvdXIgcHJvcG9zYWwpCj4g
Cj4gZURQIEhCUjIzIC8gaGlnaCB2ZGlmZjoKPiAKPiBzd2luZwo+IDB4MGEsIDB4MTEsIDB4MTcs
IDB4MWYKPiAweDBjLCAweDE0LCAweDFkCj4gMHgxNSwgMHgxZgo+IDB4MTcKPiAKPiBwcmVlbXAK
PiAKPiAweDA4LCAweDExLCAweDE3LCAweDFiCj4gMHgwMCwgMHgwYywgMHgxMwo+IDB4MDUsIDB4
MTAsCj4gMHgwMAo+IAo+IEtvbnJhZApIaSwgdGhpcyBpcyBkaWZmZXJlbnQgZnJvbSB3aGF0IEkg
c2F3LiB3aGF0IGkgc2F3CmZyb20ga29kaWFrIEhQRzoKZURQIGxvdyB2ZGlmZiAoSGlnaCBIQlIp
OgogIDB4MDYsIDB4MTEsIDB4MTYsIDB4MUIKICAweDBCLCAweDE5LCAweDFmCiAgMHgxOCwgMHgx
ZgogIDB4MWYKCiAgcHJlZW1wCiAgMHgwYywgMHgxNSwgMHgxOSwgMHgxZQogIDB4MDksIDB4MTQs
IDB4MTkKICAweDBmLCAweDE0CiAgMHgwZAoKZURQIGhpZ2ggdmRpZmYgKEhpZ2ggSEJSKToKICBz
d2luZwogIDB4MGEsIDB4MTEsIDB4MTcsIDB4MWYKICAweDBjLCAweDE0LCAweDFkCiAgMHgxNSwg
MHgxZgogIDB4MTcKCiAgcHJlZW1wCgogIDB4MDgsIDB4MTEsIDB4MTYsIDB4MWIKICAweDAwLCAw
eDBjLCAweDEzCiAgMHgwNSwgMHgxMCwKICAweDAwClRoZSBzZXQgb2YgdmFsdWVzIHlvdSBwcm92
aWRlZCBsb29rcyBtb3JlIGxpa2UgZGF0YSBmcm9tIExlTWFucyAvIApTQzgyODB4cCAvIGdseW11
ciAobG93IHZpZGZmKS4gSeKAmWxsIGZvbGxvdyB1cCBieSBlbWFpbCBsYXRlciB0byBjb25maXJt
IAp3aGV0aGVyIHRoaXMgaXMgZHVlIHRvIHVzIHVzaW5nIGRpZmZlcmVudCBIUEdzLgoKdGhhbmtz
LgoKLS0gCmxpbnV4LXBoeSBtYWlsaW5nIGxpc3QKbGludXgtcGh5QGxpc3RzLmluZnJhZGVhZC5v
cmcKaHR0cHM6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtcGh5
Cg==
