Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id C7AA1CD8C8E
	for <linux-phy@archiver.kernel.org>; Mon,  8 Jun 2026 04:35:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=lik1SsyRwiSKChHM6G2ZALoWp76ZToH6YqBsT0GgtA8=; b=4oGFubrUciZS/d
	LvtaxM5I8nMfV9zCF29a52d65S9OR1WoWME7MzEP7mDSS9HtVVts8fx5vVGl/I0SOIqCglGh5zcKb
	TcTYLGpAGmqKfwJ4wsaXtUYmW0dG7zOKO58ZX1Uxgqz7yz5vv/8SNujBcd1oxrOQvW44PVkLCAIwb
	fNVhw9C/bE33oLh1KOs4FYaveDsiwTJe3oUCWbeEmrCa1DwnkbwZgsQuB31qkOuQEV3I1/ZCQvYY9
	nRr9OyIv19fnsKNz3eKfozTNtetVQL8FGc+ccAktusx4iXjixqdlLECk3PPsK/Eg66CWJtWscSr1Y
	794UoUuH1Ryn1j+X4FfA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wWRiC-00000002nis-0soy;
	Mon, 08 Jun 2026 04:35:44 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wWRi8-00000002niW-3R06
	for linux-phy@lists.infradead.org;
	Mon, 08 Jun 2026 04:35:42 +0000
Received: from pps.filterd (m0279867.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 6580EDLG1574290
	for <linux-phy@lists.infradead.org>; Mon, 8 Jun 2026 04:35:39 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	kD26G8uJeDiGn93yq3ONwoZDPErjIr20+ejuLcBB5Z4=; b=R1yQn3+s8FvlBOVO
	Cpw7APe/1PI73ssw382rmFFUqPPGvdFVRDD5eGwk3NHkinvZ5Ch4sMHIWd6cJkJ8
	a2uR1JvVD9Xa0q4D1R65I/AW7Wwv7DMUS5WRR9qTeP9Iia8lMivv9BwUxITOsN3G
	/w20jE2DMvQiQPCNoT2wnKDZseD5/21dO3wKYdIiR2SWfDSZVt1kph5dBlMB4NGS
	ymAQUXQGsKLsr6eDnwru+ngU4WBhznz3SRe6O/wZs4D/wcapoTElRAqsJ0ujZboA
	R6E+Ns5l3+4P9jWmdK+qHWbzMKXlUzO/USjhVK7hEFHoZC3TuVL3SFXnKeFYFDRH
	VxojsQ==
Received: from mail-pg1-f200.google.com (mail-pg1-f200.google.com [209.85.215.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4em98cxa01-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Mon, 08 Jun 2026 04:35:39 +0000 (GMT)
Received: by mail-pg1-f200.google.com with SMTP id 41be03b00d2f7-c85d9f0ace9so3794042a12.1
        for <linux-phy@lists.infradead.org>; Sun, 07 Jun 2026 21:35:39 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1780893339; x=1781498139; darn=lists.infradead.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=kD26G8uJeDiGn93yq3ONwoZDPErjIr20+ejuLcBB5Z4=;
        b=GrEHS+CV2z0/GX/BrlzsVzs6LxJz0pCHTsuzBNrZ9SGNezpQ0K9nD+VJAXAyPeQi8r
         U5JcULeXlfAiyvzdOhxE9CzR6qtdY0HhaFSEYLarJMjfRIrsT6d3PHhKxvWQNXMJ6MNf
         H4fXFL+ms0ehXfwwkAmq2j5NL/j56tePIHRczTaWhMssIy4K4qKQXerTVZB4jrev3C3R
         UQiZ+6mG4qJeGZlDeD9sCf/D5QOMHWRI/C5sNFJEAIG3YnkCm8TumJkaSpnl0U/JVlu0
         uUPrAfjqBTtLlcE8OfbeRo9ES3T7g/5pOZ6OYRIsNwiD+neflGEokLlfgDOgbSb+MJ59
         R6/g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1780893339; x=1781498139;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=kD26G8uJeDiGn93yq3ONwoZDPErjIr20+ejuLcBB5Z4=;
        b=NJBc2gR6Lcf1EoXUAqNmDN6LHtYizmU+JclEvqbnU54RSj35v7zBnbk4EVK5nA9lSr
         eZ68e8A/0QJ728MxXIN21hb3Ws29Vbn3Oq3q3i0f+vy8yr5EImqggTOG9ULVpwi6940m
         C4lmKo6xGBSgP54QtmD+7qrUhunh7WW7Riwmn8DMJ3XmzF3U/0Snfm3lqGOQsjKvBuAX
         vC0K2oEisGXVVBOaAiDKen1+0kWgMZL+vt5vCkqxmXyVNg14Ri7UGd0PpkzZuUraEmzF
         rYpwS9Nqj15F8syENDTEMay2PqYg79LrGiH+9QR0Hb0SX6tgB6uzr5aPMvLFMSGp7sQe
         lmzA==
X-Forwarded-Encrypted: i=1; AFNElJ//MLJveqQpgrE+xWo3sEHZR8Hsyxffah9R8aCAPcR0cyiwXpBLhhz0NsjinilyZppS4onY5vrX47g=@lists.infradead.org
X-Gm-Message-State: AOJu0YywKTu8WVLLJkQY81WUNFO9AZV6hkVRvJ3hhm8i1QBz/kF+Atfv
	gjJ2i+85H4lwZLi49OKlNAkElDpUhVdGoghtWfNy2b5QghHHfNjXva4n0NpBKgDBGloJso6Kg5S
	ilGKREr8k25V+Py2rQYoip2xBZAMeFjiWmn/0+HYwSS8PMzchaa40QolU1Pxe94ndQ1dx
X-Gm-Gg: Acq92OGGAmWxnEXmhjiHAq08lUJYrepwsOlv77l8479cCusjOSXWE4glMfowBdIYMi9
	uyoJrAWhJKWVccTUx4DcfZ/Oi77uZsZNyE0tchZle7uhFI3V9JBl606x71St/W48itW/bwDvoHE
	a508Ys5FeAY1zY00m348sfqCJPCrhqsBj5NL85uCKL4DX1BnnQN7hscTwLHt1zA7a4Frqvciogz
	YtZ9hQXWOVavyxj4BovQgZi6TPaLnlmq72MvG8XKLe+D6MfWpAKHY7ZHbWNOJh53td0g+jPn3jG
	yBzZY6W6lFEEzRFVNGXZx+V/95uxqrdTFc/Ztyd6Gvb9r8NeRSU4UluKBwQhnuhG/dtAgKu2A43
	DtD2o0Y28wb+WIQzvVnqdH2XKaPcQNjjtn4Mq44uPXsQZDOf13m2G+F2k9RCZHv76
X-Received: by 2002:a05:6a21:2c11:b0:3b4:81b4:9b74 with SMTP id adf61e73a8af0-3b4cd0cbd08mr17473630637.42.1780893338665;
        Sun, 07 Jun 2026 21:35:38 -0700 (PDT)
X-Received: by 2002:a05:6a21:2c11:b0:3b4:81b4:9b74 with SMTP id adf61e73a8af0-3b4cd0cbd08mr17473592637.42.1780893338160;
        Sun, 07 Jun 2026 21:35:38 -0700 (PDT)
Received: from [10.218.35.45] ([202.46.22.19])
        by smtp.gmail.com with ESMTPSA id 41be03b00d2f7-c8630b2fa83sm897691a12.10.2026.06.07.21.35.33
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 07 Jun 2026 21:35:37 -0700 (PDT)
Message-ID: <aab3d70a-4939-4f55-a343-4cdeea8915b8@oss.qualcomm.com>
Date: Mon, 8 Jun 2026 10:05:31 +0530
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 2/3] dt-bindings: PCI: qcom,pcie-sm8550: Add Eliza
 compatible
To: Krzysztof Kozlowski <krzk@kernel.org>
Cc: Vinod Koul <vkoul@kernel.org>, Neil Armstrong
 <neil.armstrong@linaro.org>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley
 <conor+dt@kernel.org>,
        Lorenzo Pieralisi <lpieralisi@kernel.org>,
        =?UTF-8?Q?Krzysztof_Wilczy=C5=84ski?= <kwilczynski@kernel.org>,
        Manivannan Sadhasivam <mani@kernel.org>,
        Bjorn Helgaas
 <bhelgaas@google.com>,
        Bjorn Andersson <andersson@kernel.org>, linux-arm-msm@vger.kernel.org,
        linux-phy@lists.infradead.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, linux-pci@vger.kernel.org
References: <20260601-eliza-v2-0-6b44c9c23d5e@oss.qualcomm.com>
 <20260601-eliza-v2-2-6b44c9c23d5e@oss.qualcomm.com>
 <20260607-devious-active-bobcat-1078ab@quoll>
Content-Language: en-US
From: Krishna Chaitanya Chundru <krishna.chundru@oss.qualcomm.com>
In-Reply-To: <20260607-devious-active-bobcat-1078ab@quoll>
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwNjA4MDAzOCBTYWx0ZWRfXyqSyiXJFk++d
 iiOrmJn8tHvZw/EF7TF+PaY8QF1egD12TRcsNhkLsCpuaNaTYt1IaxAEyeMbgKtki+4wvbPYusP
 psY5USvC8DFshlaa4XvC7bBD6jsTfZ+8KzVxmy85hHCmi/99s4zS1r2edPDCJDpCp9heq05+MEh
 J96509AGVbFPN89g6tZLYEgoiFsrg7YgbSTIEa3NFzTeZK/NnUOdSCPRfm3+XpblZNl5snVf8h3
 GIj+A1i1zxAt2KNikbKePaKeJYek6zJo0JwnmN6hVFtCfrqhlVh/I9YqMMJfcixKZTqK78p6e+R
 i9uVFs9pZFWajJm7DF3a2ef6BKScEgYXusrlWId4ZQ5DZUN3sg8uWGrHMHsyl1/KPDMEfob1f5G
 FDc0UUBvMBo+X2g3mxHShuTazDPDMtZlZSDXbsZG4GHF9StAgxa8NWcE+bzQd6bpvVaMFE8fAtW
 58aQ1SiqC9GmqATkoSA==
X-Proofpoint-ORIG-GUID: oY7q42V27BIPE2UPGigC6TBKP6uc1i7o
X-Proofpoint-GUID: oY7q42V27BIPE2UPGigC6TBKP6uc1i7o
X-Authority-Analysis: v=2.4 cv=A/pc+aWG c=1 sm=1 tr=0 ts=6a26469b cx=c_pps
 a=oF/VQ+ItUULfLr/lQ2/icg==:117 a=fChuTYTh2wq5r3m49p7fHw==:17
 a=IkcTkHD0fZMA:10 a=FelO9ux0wxsA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=eoimf2acIAo5FJnRuUoq:22
 a=EOzwYm5HH2NjlfyU_mEA:9 a=3ZKOabzyN94A:10 a=QEXdDO2ut3YA:10
 a=3WC7DwWrALyhR5TkjVHa:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.125,FMLib:17.12.100.49
 definitions=2026-06-08_01,2026-06-05_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 clxscore=1015 suspectscore=0 bulkscore=0 spamscore=0 malwarescore=0
 adultscore=0 priorityscore=1501 phishscore=0 impostorscore=0
 lowpriorityscore=0 classifier=typeunknown authscore=0 authtc= authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.22.0-2605210000
 definitions=main-2606080038
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260607_213540_867166_D114028C 
X-CRM114-Status: GOOD (  12.86  )
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

CgpPbiA2LzcvMjAyNiAyOjE4IFBNLCBLcnp5c3p0b2YgS296bG93c2tpIHdyb3RlOgo+IE9uIE1v
biwgSnVuIDAxLCAyMDI2IGF0IDEwOjU5OjQ1UE0gKzA1MzAsIEtyaXNobmEgQ2hhaXRhbnlhIENo
dW5kcnUgd3JvdGU6Cj4+IFBDSWUgY29udHJvbGxlciBwcmVzZW50IGluIEVsaXphIFNvQyBpcyBi
YWNrd2FyZHMgY29tcGF0aWJsZSB3aXRoIHRoZQo+PiBjb250cm9sbGVyIHByZXNlbnQgaW4gRWxp
emEgU29DLiBIZW5jZSwgYWRkIHRoZSBjb21wYXRpYmxlIHdpdGggU004NTUwCj4gRWxpemEgU29D
IGlzIGNvbXBhdGlibGUgd2l0aCBpdHNlbGY/CsKgU29ycnksIHRoYXQncyBhIGNvcHktcGFzdGUg
ZXJyb3IgaW4gdGhlIGNvbW1pdCBtZXNzYWdlLiBJdCBzaG91bGQgcmVhZDoKwqAgIlBDSWUgY29u
dHJvbGxlciBwcmVzZW50IGluIEVsaXphIFNvQyBpcyBiYWNrd2FyZHMgY29tcGF0aWJsZSB3aXRo
IHRoZQrCoCBjb250cm9sbGVyIHByZXNlbnQgaW4gU004NTUwIFNvQy4iCgrCoCBXaWxsIGZpeCBp
biB2My4KPj4gZmFsbGJhY2suCj4gV2h5IHJlZywgY2xvY2tzIGFuZCBpbnRlcnJ1cHRzIGFyZSBm
bGV4aWJsZT8gQXJlIHRoZXJlIGRpZmZlcmVudAo+IHZhcmlhbnRzIHdpdGhpbiBFbGl6YSBTb0Ms
IGUuZy4gb25lIHdpdGhvdXQgbXNpPwpUaGVyZSBhcmUgbm8gdmFyaWFudHMgd2l0aGluIEVsaXph
IFNvQy4gVGhlIGZsZXhpYmlsaXR5IGlzIGluaGVyaXRlZApmcm9tIHRoZSBTTTg1NTAgZmFtaWx5
IGJpbmRpbmcgYW5kIGZvbGxvd3MgdGhlIHNhbWUgcGF0dGVybiBhcyB0aGUKb3RoZXIgY29tcGF0
aWJsZXMgaW4gdGhpcyBmaWxlIChrYWFuYXBhbGksIHNhcjIxMzBwLCBzbTg2NTAsIHNtODc1MCkK
d2hpY2ggYWxzbyBoYXZlIG5vIHBlci1jb21wYXRpYmxlIGNvbnN0cmFpbnRzLiBJZiB5b3UnZCBw
cmVmZXIgZXhwbGljaXQKY29uc3RyYWludHMgZm9yIEVsaXphLCBJIGNhbiBhZGQgdGhlbSBpbiB2
My4KCi0gS3Jpc2huYSBDaGFpdGFueWEuCj4KPiBCZXN0IHJlZ2FyZHMsCj4gS3J6eXN6dG9mCj4K
CgotLSAKbGludXgtcGh5IG1haWxpbmcgbGlzdApsaW51eC1waHlAbGlzdHMuaW5mcmFkZWFkLm9y
ZwpodHRwczovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1waHkK
