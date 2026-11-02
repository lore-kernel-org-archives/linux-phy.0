Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 70EB2606A329
	for <linux-phy@archiver.kernel.org>; Mon,  2 Nov 2026 09:20:10 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key, unprotected) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=l2OtHb4U;
	dkim=fail reason="signature verification failed" (2048-bit key, unprotected) header.d=qualcomm.com header.i=@qualcomm.com header.a=rsa-sha256 header.s=qcppdkim1 header.b=YNGjC+uw;
	dkim=fail reason="signature verification failed" (2048-bit key, unprotected) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.a=rsa-sha256 header.s=google header.b=A7ontbpx
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Unsubscribe-Post:List-Owner;
	bh=UxaF/Lm9KnjHC3ug+0JTsvTkjV2hLFzLq/mpGGjM6L4=; b=l2OtHb4UIF9cbNJHH0gqHVvfV4
	8fbUnz04bdsJXAXHCK/pIwZ45Xu9OvVl8uQk1PAKfidxPrWNaATK66Y+17cu2tAMRxYWBJDObuZ1h
	cTVeclSk8pp4oweAZwOyKF/AZbj1oCD6zAGqLJaDJgYHYMHCW5jjo9iC6PdjJINWYbIAiDSXXADtP
	6Qub0xmMY5OiUNaVQ3Femj+lKvOj1m8UhreTc6FqmbqXru1zhYftDsQyP8KvLf2wXo5BV0dRNxmuy
	4s6FHoQMcKu9tCGLd8DMHNyEBp4Dc5tGwpuz41IEFz+sigTFp7N5LmjNlq2NNlGuBVJaaJKZe9Q/A
	mc2ShafA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xNoD4-0000000FyrQ-0lb2;
	Mon, 02 Nov 2026 09:20:10 +0000
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xNoCm-0000000Fyok-3vIL
	for linux-phy@lists.infradead.org;
	Mon, 02 Nov 2026 09:20:08 +0000
Received: from pps.filterd (m0279869.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 6A29B1J54015067
	for <linux-phy@lists.infradead.org>; Mon, 2 Nov 2026 09:19:52 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	dM+Oq09U0gik6VMseiUnNNkPS3lC70s6n7NCT9prtKE=; b=YNGjC+uwSIOe6IL5
	XYWV8m7UJxqekJmwv8ib6Xq+BPVZHqvll9zDlwCVSrMd7OiSrPXOCvuojNJa0glH
	fbbXSXHylWnKOaHacVw2hg7AtOmFftSoxfEOhXWf7nTO2J6VKmmYdX9ApjVdXBus
	fGT2oKTkFf69bkdk7R2EvxQyVNw0zYXuNQiBhD1FfETdyLCY+ZnHpMGNodAdyTG8
	xvPxK7CdYf0uWKZs89QVfiTvCEnGbDtjTF+5Plp98yElAvuBIT6T885Sc6cH6BF8
	MEJJejp28wwIqo3/L4y+Ak0E9H6DtcW7IyqXoIc38tRM0ppnw6Zvi71PNIrn0+e1
	CkLSMg==
Received: from mail-pf1-f199.google.com (mail-pf1-f199.google.com [209.85.210.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4hn7b6p9s1-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Mon, 02 Nov 2026 09:19:51 +0000 (GMT)
Received: by mail-pf1-f199.google.com with SMTP id d2e1a72fcca58-8a06750c74fso2055103b3a.0
        for <linux-phy@lists.infradead.org>; Mon, 02 Nov 2026 01:19:51 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1793611191; x=1794215991; darn=lists.infradead.org;
        h=content-transfer-encoding:content-type:in-reply-to:from
         :content-language:references:cc:to:subject:user-agent:mime-version
         :date:message-id:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=dM+Oq09U0gik6VMseiUnNNkPS3lC70s6n7NCT9prtKE=;
        b=A7ontbpx50WK+l8IoCpdo7TRpYupbqud/8TB9F9MuqUglFtPoGJJofKmjjZB5sdq3z
         QjgzxyzZbmSxYfuEyHj7bQm4G8r92AjVxVfVC+el5psxq2zWNiDH00pLalMlLctJyKWW
         zluREzcAy+KZka5qOhO94bjydryIeXwxjzDtLjdZPo4MJ4dUAXfNhbnKuCe/Fa0aYhBg
         3LExdG7ykMFW1ozu8C2kAOAis4Fvi7IX470yRRMxitxzb9kVyiJm624cqN7inPdWyaYp
         U+zkhSHwc6gqF7ylLJnhNAmfFspEkk2ddckPofbO4dhb4u50kmuaAp+IMqgh0BnVcyfj
         pvwA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1793611191; x=1794215991;
        h=content-transfer-encoding:content-type:in-reply-to:from
         :content-language:references:cc:to:subject:user-agent:mime-version
         :date:message-id:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=dM+Oq09U0gik6VMseiUnNNkPS3lC70s6n7NCT9prtKE=;
        b=fu4wbQB1LrzO4otJlRjvws4jmVLZTnPNTomakfSwYwLjaeR9M2EDaBLa6k8DYfbE9l
         wlZfAqTowjxn5Oqy7rHaXV2efQjKM85WY6r1/9ws65L3lpAGGx2IE82AOzWQfy8JE6iK
         ZcnzOVJjAPoDFMN/1kn3k6XOGhj1PdEbkGZEJYZFxTZefUMJwF32r0R/MIvOSdTfJ7Wj
         DML/0UxTVKYyFy6sivxeiWYeS678UPgo8grGlKUP7zssTumx524YBg7sJXJrRkUUfGav
         HIFB+N1h/hySZMhJZYwDFchTdG/mq3aYVWyD6c71bzpGb2kkWnhtDDDzNSxh0NG0maLj
         DX6Q==
X-Gm-Message-State: APuU4Z8Skk1HXFGBdxbBApmQU1kF9iIGCKcZ9uwbZDJIOT7POHMkKkqp
	EgucJKQnw6VOQjf+vHrgLR209pb8GMT5FihI3sVkc2mNF+lDct7Hko+JpOxG5sF/CjgXoNKNIYA
	gdlb1xiIScnL8wNJNKFLTMh6x4Uzehnj6U1ZgWPWU/yvOlX6h+h8l31B/mJBt9B//yos9DtAn0C
	se
X-Gm-Gg: AYBFou3JGS3vJR3+JN1jo5uwdfgKuX4rAdqOdSterVjKFz4nU5n8c99qxctRHOvhFTI
	F4y4tLoFnq8/nrUi4BHaqrrDJbH7DE7g+El9bICEM+t5dXn5KrcZQbmNZmIv58GwBnyt8E/PQUG
	xzrcMJbCCzMjTwXCZBffhR6LnxKpFD8VWCgqtdJMkO37xlw7Fc1o4/7AzitMUrIbwnVLF/ul2dv
	kx9FxyQ/Ppgjl9nHvZ+k2yf13HvIcc5F6S030M6v34Ni0+xZNbOsrRYnJKglXU87L5o84R99YPt
	yqLwqRP+u74/mW1i9uz329XFTLAlBlgFR0GfCk/ODgG8ZEP/P2+v7Eo7fOjX2V1e4jucAeM6m1m
	PszC+QDoslE+4W2hpJxDyJJlrP3FT5kaFEWhyU8+plGehU4Hu9XcMfofOya3b97Z6GWg4xViVO0
	fM86qfRbnky/ZYaPsIU8Ak//KUB/Xq9Isj
X-Received: by 2002:a05:6a00:3990:b0:886:ead5:6d3b with SMTP id d2e1a72fcca58-8a9bffd29a8mr7141350b3a.53.1793611190859;
        Mon, 02 Nov 2026 01:19:50 -0800 (PST)
X-Received: by 2002:a05:6a00:3990:b0:886:ead5:6d3b with SMTP id d2e1a72fcca58-8a9bffd29a8mr7141327b3a.53.1793611190336;
        Mon, 02 Nov 2026 01:19:50 -0800 (PST)
Received: from [10.239.96.176] ([114.94.8.21])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-8aad963cfe7sm1780249b3a.19.2026.11.02.01.19.45
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 02 Nov 2026 01:19:50 -0800 (PST)
Message-ID: <d5531292-b2e4-43eb-b931-2b0f72d5a6f2@oss.qualcomm.com>
Date: Mon, 2 Nov 2026 17:19:43 +0800
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v23 12/15] arm64: dts: qcom: kaanapali: Add CAMSS and
 CSIPHY block definitions
To: Vladimir Zapolskiy <vladimir.zapolskiy@linaro.org>,
        Bryan O'Donoghue <bod@kernel.org>, Vinod Koul <vkoul@kernel.org>,
        Neil Armstrong <neil.armstrong@linaro.org>,
        Manivannan Sadhasivam <mani@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley
 <conor+dt@kernel.org>,
        Bryan O'Donoghue <bryan.odonoghue@linaro.org>,
        Loic Poulain <loic.poulain@oss.qualcomm.com>,
        Mauro Carvalho Chehab <mchehab@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>,
        Abel Vesa <abelvesa@kernel.org>
Cc: linux-phy@lists.infradead.org, linux-media@vger.kernel.org,
        linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org,
        jeyaprakash.soundrapandian@oss.qualcomm.com,
        Vijay Kumar Tumati <vijay.tumati@oss.qualcomm.com>,
        Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
References: <20261028-kaanapali-camss-v23-0-95f250b18612@oss.qualcomm.com>
 <20261028-kaanapali-camss-v23-12-95f250b18612@oss.qualcomm.com>
 <55aef663-254a-4d36-b9ec-3ce7f4c4c74a@linaro.org>
Content-Language: en-US
From: Hangxiang Ma <hangxiang.ma@oss.qualcomm.com>
In-Reply-To: <55aef663-254a-4d36-b9ec-3ce7f4c4c74a@linaro.org>
X-Proofpoint-ORIG-GUID: a22yemfkkvSLjEuWk6G3j2QhETtRCuMf
X-Authority-Analysis: v=2.4 cv=QuvLTlyd c=1 sm=1 tr=0 ts=6ae855b7 cx=c_pps
 a=WW5sKcV1LcKqjgzy2JUPuA==:117 a=Uz3yg00KUFJ2y2WijEJ4bw==:17
 a=IkcTkHD0fZMA:10 a=zJRp6_cAMcgA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=_glEPmIy2e8OvE2BGh3C:22
 a=EUspDBNiAAAA:8 a=iN3j4yL-2maCF0JdeDkA:9 a=3ZKOabzyN94A:10 a=QEXdDO2ut3YA:10
 a=OpyuDcXvxspvyRM73sMx:22
X-Proofpoint-GUID: a22yemfkkvSLjEuWk6G3j2QhETtRCuMf
X-Proofpoint-Spam-Info: AW1haW4tMjYxMTAyMDAzNyBTYWx0ZWRfXyasYEYEmmYft
 Dg4xZCfbp5kXzXNqwFGpnKj9R7A52pb+nMfVwi62rFnThv84tTxGE9WYx76fY/AvXrDK1oJWKRr
 AHZtgmejJrUWPst3G/73m6xaXbbNlpQ=
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYxMTAyMDAzNyBTYWx0ZWRfX7ysh19pOdNGx
 KC9+hisRbtEeJGmHSmYu/1SEIFcrCQKQT/2bjkb0eLjAeXrqceFz6qufVcw5yJZRKs0V0/dRNdE
 gvM8K/6UdT6bW7+xa95bRHP2v28gOJZ+qL5tpuMoyMlMxL7GVkrdbl+2x99b5gdpi/rAkTfTauL
 50wKKFgSp49k8FagLDjSbN3ufcmNoNsDXhoCxlE74lGlJSJCV53IzUmhUFrBJLrbMkMZNykgdOo
 mjvbd7er3IyCIuEcoJvrIXw7vLvormGtKoYDCFnxxtqpWtt63vpkWpAkxRkltcBHKE1xWY5yI9o
 8z/GIZLz93vWuVmw0Wnn45yL7SAg2Y3RyTd5gMLcYPGnaESffjFL9gP4ksX3LGSyAlpzfhR+bfA
 36sQmudjirYtzEbZ+7BGiRk/coqyRyw/w1euIQr8LYWvaaG476CGgiRuAFLHX/ZD05QOkQwx8bA
 Xe+TrS2TIjjn4P7mNIQ==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1176,Hydra:6.1.138,FMLib:17.12.100.49
 definitions=2026-11-02_03,2026-10-21_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 bulkscore=0 phishscore=0 lowpriorityscore=0 adultscore=0 clxscore=1015
 impostorscore=0 priorityscore=1501 malwarescore=0 spamscore=0 suspectscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2610300000 definitions=main-2611020037
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261102_012002_877749_25F606C2 
X-CRM114-Status: GOOD (  13.90  )
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
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Sender: "linux-phy" <linux-phy-bounces@lists.infradead.org>
X-Spam-Status: No, score=-15.4 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_EF,HEADER_FROM_DIFFERENT_DOMAINS,
	INCLUDES_CR_TRAILER,INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,
	SPF_PASS,USER_AGENT_SANE_1 autolearn=ham autolearn_force=no
	version=4.0.1
X-Spam-Checker-Version: SpamAssassin 4.0.1 (2024-03-26) on
	aws-us-west-2-korg-listserv-alma10-1

T24gMTAvMzEvMjAyNiA3OjQ2IFBNLCBWbGFkaW1pciBaYXBvbHNraXkgd3JvdGU6Cj4gT24gMTAv
MjgvMjYgMTc6MjAsIEhhbmd4aWFuZyBNYSB3cm90ZToKPj4gRGVzY3JpYmUgdGhlIENBTVNTIGFu
ZCBDU0lQSFkgYmxvY2tzIG9uIEthYW5hcGFsaSBzbyB0aGF0IGNhbWVyYSAKPj4gcGlwZWxpbmVz
Cj4+IGNhbiBiZSBlbmFibGVkIGJ5IGJvYXJkIGRldmljZSB0cmVlcy4KPj4KPj4gVGhlIGNhbWVy
YSBzdWJzeXN0ZW0gY29udGFpbnM6Cj4+IC0gNiB4IENTSVBIWSAoQ1NJIFBoeXNpY2FsIExheWVy
KQo+PiAtIDMgeCBUUEcgKFRlc3QgUGF0dGVybiBHZW5lcmF0b3IpCj4+IC0gMyB4IENTSUQgKENT
SSBEZWNvZGVyKQo+PiAtIDIgeCBDU0lEIExpdGUKPj4gLSAzIHggVkZFIChWaWRlbyBGcm9udCBF
bmQpLCA1IFJESSBwZXIgVkZFCj4+IC0gMiB4IFZGRSBMaXRlLCA0IFJESSBwZXIgVkZFIExpdGUK
Pj4KPj4gUmV2aWV3ZWQtYnk6IEtvbnJhZCBEeWJjaW8gPGtvbnJhZC5keWJjaW9Ab3NzLnF1YWxj
b21tLmNvbT4KPj4gU2lnbmVkLW9mZi1ieTogSGFuZ3hpYW5nIE1hIDxoYW5neGlhbmcubWFAb3Nz
LnF1YWxjb21tLmNvbT4KPj4gLS0tCj4+IMKgIGFyY2gvYXJtNjQvYm9vdC9kdHMvcWNvbS9rYWFu
YXBhbGkuZHRzaSB8IDQwMSArKysrKysrKysrKysrKysrKysrKysrIAo+PiArKysrKysrKysrCj4+
IMKgIDEgZmlsZSBjaGFuZ2VkLCA0MDEgaW5zZXJ0aW9ucygrKQo+Pgo+PiBkaWZmIC0tZ2l0IGEv
YXJjaC9hcm02NC9ib290L2R0cy9xY29tL2thYW5hcGFsaS5kdHNpIGIvYXJjaC9hcm02NC8gCj4+
IGJvb3QvZHRzL3Fjb20va2FhbmFwYWxpLmR0c2kKPj4gaW5kZXggZTQ4YTE3OWQwNzIyLi4wYzhm
ZDdkYTU1YjcgMTAwNjQ0Cj4+IC0tLSBhL2FyY2gvYXJtNjQvYm9vdC9kdHMvcWNvbS9rYWFuYXBh
bGkuZHRzaQo+PiArKysgYi9hcmNoL2FybTY0L2Jvb3QvZHRzL3Fjb20va2FhbmFwYWxpLmR0c2kK
Pj4gQEAgLTIwLDYgKzIwLDcgQEAKPj4gwqAgI2luY2x1ZGUgPGR0LWJpbmRpbmdzL2ludGVyY29u
bmVjdC9xY29tLGthYW5hcGFsaS1ycG1oLmg+Cj4+IMKgICNpbmNsdWRlIDxkdC1iaW5kaW5ncy9p
bnRlcnJ1cHQtY29udHJvbGxlci9hcm0tZ2ljLmg+Cj4+IMKgICNpbmNsdWRlIDxkdC1iaW5kaW5n
cy9tYWlsYm94L3Fjb20taXBjYy5oPgo+PiArI2luY2x1ZGUgPGR0LWJpbmRpbmdzL3BoeS9waHku
aD4KPj4gwqAgI2luY2x1ZGUgPGR0LWJpbmRpbmdzL3BoeS9waHktcWNvbS1xbXAuaD4KPj4gwqAg
I2luY2x1ZGUgPGR0LWJpbmRpbmdzL3Bvd2VyL3Fjb20tcnBtcGQuaD4KPj4gwqAgI2luY2x1ZGUg
PGR0LWJpbmRpbmdzL3JlZ3VsYXRvci9xY29tLHJwbWgtcmVndWxhdG9yLmg+Cj4+IEBAIC0zNTk3
LDYgKzM1OTgsMzg0IEBAIHVzYl9kcF9xbXBwaHlfZHBfaW46IGVuZHBvaW50IHsKPj4gwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqAgfTsKPj4gwqDCoMKgwqDCoMKgwqDCoMKgIH07Cj4+ICvCoMKg
wqDCoMKgwqDCoCBjYW1zczogaXNwQDkwMGIwMDAgewo+PiArwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oCBjb21wYXRpYmxlID0gInFjb20sa2FhbmFwYWxpLWNhbXNzIjsKPj4gKwo+PiArwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoCByZWcgPSA8MHgwIDB4MDkwMGIwMDAgMHgwIDB4MTAwMD4sCj4+ICvCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIDwweDAgMHgwOTI1MzAwMCAweDAgMHg1ZTgw
PiwKPj4gK8KgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgPDB4MCAweDA5MjYzMDAw
IDB4MCAweDVlODA+LAo+PiArwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCA8MHgw
IDB4MDkyNzMwMDAgMHgwIDB4NWU4MD4sCj4+ICvCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgIDwweDAgMHgwOTJkMzAwMCAweDAgMHgzODgwPiwKPj4gK8KgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqAgPDB4MCAweDA5MmU3MDAwIDB4MCAweDM4ODA+LAo+PiArwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCA8MHgwIDB4MDkzZmQwMDAgMHgwIDB4NDAwPiwK
Pj4gK8KgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgPDB4MCAweDA5M2ZlMDAwIDB4
MCAweDQwMD4sCj4+ICvCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIDwweDAgMHgw
OTNmZjAwMCAweDAgMHg0MDA+LAo+PiArwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oCA8MHgwIDB4MDkxNTEwMDAgMHgwIDB4MjAwMDA+LAo+PiArwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoCA8MHgwIDB4MDkxNzEwMDAgMHgwIDB4MjAwMDA+LAo+PiArwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCA8MHgwIDB4MDkxOTEwMDAgMHgwIDB4MjAwMDA+LAo+
PiArwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCA8MHgwIDB4MDkyZGMwMDAgMHgw
IDB4MTMwMD4sCj4+ICvCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIDwweDAgMHgw
OTJmMDAwMCAweDAgMHgxMzAwPjsKPj4gK8KgwqDCoMKgwqDCoMKgwqDCoMKgwqAgcmVnLW5hbWVz
ID0gInRvcCIsCj4+ICvCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCAiY3Np
ZDAiLAo+PiArwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgImNzaWQxIiwK
Pj4gK8KgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgICJjc2lkMiIsCj4+ICvC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCAiY3NpZF9saXRlMCIsCj4+ICvC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCAiY3NpZF9saXRlMSIsCj4+ICvC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCAiY3NpdHBnMCIsCj4+ICvCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCAiY3NpdHBnMSIsCj4+ICvCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCAiY3NpdHBnMiIsCj4gCj4gVGhlc2UgSS9P
IHJlZ2lvbnMgc2hvdWxkIGJlIG5hbWVkICJ0cGdYIi4KPgoKQUNLCgo+PiArwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgInZmZTAiLAo+PiArwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqAgInZmZTEiLAo+PiArwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqAgInZmZTIiLAo+PiArwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqAgInZmZV9saXRlMCIsCj4+ICvCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoCAidmZlX2xpdGUxIjsKPj4gKwo+PiArwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCBjbG9j
a3MgPSA8JmNhbWNjIENBTV9DQ19DQU1OT0NfTlJUX0FYSV9DTEs+LAo+PiArwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqAgPCZjYW1jYyBDQU1fQ0NfQ0FNTk9DX1JUX0FYSV9DTEs+LAo+
PiArwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgPCZjYW1jYyBDQU1fQ0NfQ0FNX1RP
UF9BSEJfQ0xLPiwKPj4gK8KgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIDwmY2FtY2Mg
Q0FNX0NDX0NBTV9UT1BfRkFTVF9BSEJfQ0xLPiwKPj4gK8KgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgIDwmY2FtY2MgQ0FNX0NDX0NBTU5PQ19SVF9URkVfMF9NQUlOX0NMSz4sCj4+ICvC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCA8JmNhbWNjIENBTV9DQ19DQU1OT0NfUlRf
VEZFXzFfTUFJTl9DTEs+LAo+PiArwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgPCZj
YW1jYyBDQU1fQ0NfQ0FNTk9DX1JUX1RGRV8yX01BSU5fQ0xLPiwKPj4gK8KgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgIDwmY2FtY2MgQ0FNX0NDX0NBTU5PQ19SVF9JRkVfTElURV9DTEs+
LAo+PiArwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgPCZjYW1jYyBDQU1fQ0NfQ1NJ
RF9DTEs+LAo+PiArwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgPCZjYW1jYyBDQU1f
Q0NfQ1NJRF9DU0lQSFlfUlhfQ0xLPiwKPj4gK8KgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgIDwmZ2NjIEdDQ19DQU1FUkFfSEZfQVhJX0NMSz4sCj4+ICvCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoCA8JmdjYyBHQ0NfQ0FNRVJBX1NGX0FYSV9DTEs+LAo+PiArwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgPCZjYW1jYyBDQU1fQ0NfVEZFXzBfTUFJTl9DTEs+LAo+
PiArwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgPCZjYW1jYyBDQU1fQ0NfVEZFXzBf
TUFJTl9GQVNUX0FIQl9DTEs+LAo+PiArwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAg
PCZjYW1jYyBDQU1fQ0NfVEZFXzFfTUFJTl9DTEs+LAo+PiArwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqAgPCZjYW1jYyBDQU1fQ0NfVEZFXzFfTUFJTl9GQVNUX0FIQl9DTEs+LAo+PiAr
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgPCZjYW1jYyBDQU1fQ0NfVEZFXzJfTUFJ
Tl9DTEs+LAo+PiArwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgPCZjYW1jYyBDQU1f
Q0NfVEZFXzJfTUFJTl9GQVNUX0FIQl9DTEs+LAo+PiArwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqAgPCZjYW1jYyBDQU1fQ0NfSUZFX0xJVEVfQ0xLPiwKPj4gK8KgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgIDwmY2FtY2MgQ0FNX0NDX0lGRV9MSVRFX0FIQl9DTEs+LAo+PiAr
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgPCZjYW1jYyBDQU1fQ0NfSUZFX0xJVEVf
Q1BIWV9SWF9DTEs+LAo+PiArwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgPCZjYW1j
YyBDQU1fQ0NfSUZFX0xJVEVfQ1NJRF9DTEs+LAo+PiArwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqAgPCZjYW1jYyBDQU1fQ0NfUURTU19ERUJVR19YT19DTEs+Owo+PiArwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoCBjbG9jay1uYW1lcyA9ICJjYW1ub2NfbnJ0X2F4aSIsCj4+ICvCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgImNhbW5vY19ydF9heGkiLAo+PiAr
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgICJjcGFzX2FoYiIsCj4+
ICvCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgImNwYXNfZmFzdF9h
aGIiLAo+PiArwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgICJjcGFz
X3ZmZTAiLAo+PiArwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgICJj
cGFzX3ZmZTEiLAo+PiArwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
ICJjcGFzX3ZmZTIiLAo+PiArwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgICJjcGFzX3ZmZV9saXRlIiwKPj4gK8KgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoCAiY3NpZCIsCj4+ICvCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqAgImNzaWRfY3NpcGh5X3J4IiwKPiAKPiBUaGlzIGNsb2NrIHNob3VsZCBiZSBuYW1l
ZCAiY3NpcGh5X3J4IiBsaWtlIG9uIHNhODc3NXAgYW5kIGEgbnVtYmVyCj4gb2Ygb3RoZXIgcGxh
dGZvcm1zLgo+IAoKQUNLCgo+PiArwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgICJnY2NfYXhpX2hmIiwKPj4gK8KgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoCAiZ2NjX2F4aV9zZiIsCgpXaWxsIHJlbW92ZSB0aGlzIHVudXNlZCBjbG9jayBh
cyB3ZWxsPj4gK8KgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCAidmZl
MCIsCj4+ICvCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgInZmZTBf
ZmFzdF9haGIiLAo+PiArwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
ICJ2ZmUxIiwKPj4gK8KgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCAi
dmZlMV9mYXN0X2FoYiIsCj4+ICvCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqAgInZmZTIiLAo+PiArwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgICJ2ZmUyX2Zhc3RfYWhiIiwKPj4gK8KgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoCAidmZlX2xpdGUiLAo+PiArwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgICJ2ZmVfbGl0ZV9haGIiLAo+PiArwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgICJ2ZmVfbGl0ZV9jcGh5X3J4IiwKPj4gK8KgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCAidmZlX2xpdGVfY3NpZCIsCj4+ICvCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgInFkc3NfZGVidWdfeG8iOwoKCi0t
LQpCZXN0IFJlZ2FyZHMsCkhhbmd4aWFuZwoKCi0tIApsaW51eC1waHkgbWFpbGluZyBsaXN0Cmxp
bnV4LXBoeUBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHBzOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9t
YWlsbWFuL2xpc3RpbmZvL2xpbnV4LXBoeQo=
