Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 1FDD7CD98DA
	for <linux-phy@archiver.kernel.org>; Tue, 16 Jun 2026 00:24:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=wc60jxAg/Dr2hTs/52Za3gKGiOq13psJhaSjKU9DLsI=; b=HwrSUNJ0vJmsW3
	Bzl4Tk8eIMsFPWOksHQx865VYwQpnrWtSp/rqpehi0xQv58ZDhom7/0DyFIBnh6rLEwJcjAntz0k5
	gPhWhTQhE6IaHSWq8JIwdnKepa8fb1bWj96DhoOA373ks2/JjSzkz8qmeFkruIqEug2YRmnyDEBcq
	Mx2YkUz39tTgUhEnKwFz3dXuAGh/qMISLFxbSMDbQm5O5WdLxAl1sz7N52X0wnLD7UbMp1/Pnd5F7
	OQJx9nqHlbEVvh2YqLJAOojXRSy1zIkMviy5VT+ENVh+L1mmzquDkw6y8dAwOjKTCJ9qaMmubp314
	k1JaHUghf/S3ey+catIg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wZHbq-0000000F0xp-25DI;
	Tue, 16 Jun 2026 00:24:54 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wZHbm-0000000F0xT-404y
	for linux-phy@lists.infradead.org;
	Tue, 16 Jun 2026 00:24:52 +0000
Received: from pps.filterd (m0279867.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 65G0O7Z81592485
	for <linux-phy@lists.infradead.org>; Tue, 16 Jun 2026 00:24:50 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	2392gTfYaa/VkERgW+pSEbPnUObjwEuQbYRR5es+xjo=; b=hXew5V8DhYf+lndv
	z1mkdigZ1WnM24uptbXxOrBG74gSVaK+mUlB6RTaGpNX0GtgYDiMZWgj4H2EXatu
	clN04aNJAqePu/G3t/8QIqM7BrtvgofdKYI4/CKA2VnPr3ocyFJPpmryhhOUYl97
	iGTJAG+pr8ZcMq9TdpXcfwE6P+RUgHOZonS8bBiR1MlvwMBgSpJpyHZlRIIKpu4n
	dICtfe2jxRsDIkCWd5Om+aJHhJ3AmQ1oODGnV5+3C1qokRAQalBnZ7l1IfwZfXd8
	E9jhaa+j0rkTdhhmMXt1Pv3E0ZlrV4RxW6djhQ5+iil/TdCG/njFWHq1H09z04q4
	N1Kk8A==
Received: from mail-qk1-f200.google.com (mail-qk1-f200.google.com [209.85.222.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4etfa73pwn-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Tue, 16 Jun 2026 00:24:50 +0000 (GMT)
Received: by mail-qk1-f200.google.com with SMTP id af79cd13be357-91576c147a4so1011177785a.3
        for <linux-phy@lists.infradead.org>; Mon, 15 Jun 2026 17:24:49 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1781569489; x=1782174289; darn=lists.infradead.org;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:from:to
         :cc:subject:date:message-id:reply-to;
        bh=2392gTfYaa/VkERgW+pSEbPnUObjwEuQbYRR5es+xjo=;
        b=A3AEP0vgAxlg24dsUyUcagnzeZAhnKJDEgT1L0iQGWMY5NAt6xg23tr5xL09Y3GD9U
         fM0dQFcmyojiZ/DC7dwou2UKw2Ysa/t2mht89iUx3NdJsAIj040qb969hAzNoiT0cAC2
         ie8LMIkStBkQyPtEsXR7F1DdjqgzRYDy/esT06C/7xx+mhuauU75DwnheUnENd88I5+G
         mj7KweZB1ZlAl8AeUQLsfgdSPMhM2oL1kWu26gUoTFzFk8/67l6wWzP+fnjYobZvy2V3
         2gX4zGRYl8xrPYTIesZsEbQSyzDNCuTawVPPrJu0Roo6vABaBxdt6jtBwVY9pa66983b
         z4mw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1781569489; x=1782174289;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=2392gTfYaa/VkERgW+pSEbPnUObjwEuQbYRR5es+xjo=;
        b=LwsAtdoccGVevWb9RT8Habvk8JnwdUy8iKYDK2AGQ86Dwb+nZsDKSUKzhQOoRJHYyU
         +k0MKknMPDPgV13K5gCQ3yNzIpoFqH9GpuSHl+o1H0/bg7ffRUVKSopcPpz7b0MB1wyq
         WOjAUjDM1GbPFb8GdQI4lljcrOauKxSQa06JbS/JmlEdJtDQIlewZg76FJE6n5KkiujV
         cRZPOEl5+CYzZKkaJ0jq3O9smlFwN+/hk7YzJSuEWu1lQm8aYEVWxBY8JVSlphuAxjJh
         ytQ5SCnAL31B4i7/BRZ/5RDyy8QNrhBG86xavh5tt/hBeWP2m+fOl4WdkIISX6ho3GaD
         MD1w==
X-Forwarded-Encrypted: i=1; AFNElJ91KTHIbiKAIzfFNLK66bcOEAQ9eea4T1q22NyaDe0CY6VNGdqM9gRbRCwaC0KiE1vWIbWZW9tsJzA=@lists.infradead.org
X-Gm-Message-State: AOJu0Yw27L9s+LVoju4/Ex/XH1FpTxhDDuTJ2afr4o1kcVTJOqnJx0Ak
	v3AzUMQOMqqPCLJYCgBPkQcTTjaUC44EuQTdGuptczcZobPsZdQwK3VZJjPz2kusxeh4M2NKB4n
	yvyN2GEGScJm4+w5JnDToX9ReJHca28O/DVJEkqJJLC7PVgp95nRoVDt0zUupY+4Sw98A
X-Gm-Gg: Acq92OFTpJPtcVwfKalsnu9t3nfQJq9HM0YHlhLOkZZ7G6S7AeZ16H/HW/pOSZoUz41
	vu9YU4DiMLUc0U1xWGZX4mDB3PDCk2A71wCPjyehSzBcBeb5J4TK4BnyFmpYRkPhJb79xrGB849
	fRr72ffnFKOCIbIjXKfAXIPCkwZWahUIFN24qbneZfXsIdXciFLkXcIApULVE9QJML6xmrNk9nl
	I9CaQYWIYvsBFhYtpl6ml1x4b9hIGITucAzOFlc3mq/AnTu+hI73jzz/ngaMEjP5u7q4d+bYusG
	iAO5TOdILa2odCLuQm/LtwyMLW1S0pa7XoyvsfO/qz7JxVZsvdDZebxMv4EjHc8kyX6f9cLrjXH
	6OGb7BGmLY2kgaGVIlWtVkRJmRlRhECLe7VjBlHVeO2x61/QvSOaoZUxLwXE8/m4YOhHg+80QgZ
	+NcO3NXQ10pjkykezeTlrHsTYcTQA/emlreFE=
X-Received: by 2002:a05:620a:460d:b0:915:cda5:27fb with SMTP id af79cd13be357-917f30f86b7mr2234739485a.54.1781569489017;
        Mon, 15 Jun 2026 17:24:49 -0700 (PDT)
X-Received: by 2002:a05:620a:460d:b0:915:cda5:27fb with SMTP id af79cd13be357-917f30f86b7mr2234735585a.54.1781569488527;
        Mon, 15 Jun 2026 17:24:48 -0700 (PDT)
Received: from umbar.lan (2001-14ba-a073-af00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a073:af00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-5ad2e1a6fd9sm3097412e87.46.2026.06.15.17.24.44
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 15 Jun 2026 17:24:45 -0700 (PDT)
Date: Tue, 16 Jun 2026 03:24:42 +0300
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: github.com@herrie.org
Cc: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>,
        linux-phy@lists.infradead.org, devicetree@vger.kernel.org,
        linux-arm-msm@vger.kernel.org, Vinod Koul <vkoul@kernel.org>,
        Neil Armstrong <neil.armstrong@linaro.org>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>
Subject: Re: [PATCH 1/2] dt-bindings: phy: qcom,usb-hs-phy: add
 qcom,vendor-init-seq
Message-ID: <3vmdu5t4342pyx6etdtzu3wapvwncvue5nsg3q7jx3epnkq6gu@5dwpfn6egkqe>
References: <20260603054809.565723-1-github.com@herrie.org>
 <20260603054809.565723-2-github.com@herrie.org>
 <ti5p3oreibkae4pl5sn52g3ctv3ufcs6aklwgbterksrxvxrbj@b6scawz2cqmq>
 <66905f4914dc022629158ac02df1c7df@herrie.org>
 <46lrfwoahgzoudq3afnhv4kxqs4fwj3w7u2dnx6ns6soo6pxt2@qkqbelan2iwq>
 <0f6ea4d2-3865-492e-ac6b-b008843f8d56@oss.qualcomm.com>
 <tknuizddyhfcyywmm36v4ok6idgpxridgur5qbowvmwhcbve5o@bp3z46gsfvlk>
 <0298e09a5b4497910c226269daa2586b@herrie.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <0298e09a5b4497910c226269daa2586b@herrie.org>
X-Proofpoint-ORIG-GUID: TdtlXaMDHfWiJ5pQ_hhfOijWopuBJw8S
X-Proofpoint-Spam-Info: AW1haW4tMjYwNjE2MDAwMiBTYWx0ZWRfX7ekroGj0Guny
 +QqrpRS31+NLJ5amAF6jdTImhKbq00Ia0yd/QIDFUHh+4l9gmOC1glRdvCniCTOPq5PCihFI4C5
 6vY0FkX0cPI6Q/ybIgQpRg7y8eSJ2Js=
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwNjE2MDAwMiBTYWx0ZWRfXx5hJ1BjZS91k
 YuzubHjIOFiF2v+hzlSX/Y7VFvpuAtHSCbxxNIMc+GtcEp9JLcvgy+nu/UhgoI0481LwrpE6THV
 mcW2U3AVH9K0oMj6Cqu6DSe4DspEKmSva7dEYiFnYzMZ4rpqMoDRUMkettPAB0KcgZS7gLEVmC9
 vxis3gwrLZAVG9ZxTSqQtCbuYZfNqAqZNN3KRBy74iun5vinOkjUZwBj5uNnCZi5vK/zU8Bozeb
 R2nqEPhnsAvxlTG9kBxud5AWGKBym/Uk61GOCQYF54yO2w+TMUBBku+odIdQzOQwFoq1QuEeZbe
 +1zQYtxjyDiy7VoMwN6aVOcVJtpDJBuNFtfESNOAAueArSGWey3ZREKngJ5S15p1x+yz2GNwOZl
 XTxf3+2EA/AcinPjH1rnwmveqVnKcqe99xFFpLJTvgUWtvYL4UfTiZMztHgBWQBu7D/gdy58kOV
 esyrVDN0bj6cG0KVEkA==
X-Proofpoint-GUID: TdtlXaMDHfWiJ5pQ_hhfOijWopuBJw8S
X-Authority-Analysis: v=2.4 cv=AN2yTM5Z c=1 sm=1 tr=0 ts=6a3097d2 cx=c_pps
 a=hnmNkyzTK/kJ09Xio7VxxA==:117 a=xqWC_Br6kY4A:10 a=IkcTkHD0fZMA:10
 a=FelO9ux0wxsA:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=u7WPNUs3qKkmUXheDGA7:22 a=eoimf2acIAo5FJnRuUoq:22 a=cTwmTnRGAAAA:8
 a=7tWiRPGIeWnQM0iYfUwA:9 a=3ZKOabzyN94A:10 a=QEXdDO2ut3YA:10
 a=O8hF6Hzn-FEA:10 a=PEH46H7Ffwr30OY-TuGO:22 a=GUWCSGlMWfG-xDt5EnV5:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.125,FMLib:17.12.100.49
 definitions=2026-06-16_01,2026-06-15_04,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 impostorscore=0 priorityscore=1501 phishscore=0 adultscore=0 malwarescore=0
 clxscore=1015 suspectscore=0 lowpriorityscore=0 bulkscore=0 spamscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2606040000 definitions=main-2606160002
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260615_172451_026392_1593309B 
X-CRM114-Status: GOOD (  46.92  )
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

T24gTW9uLCBKdW4gMTUsIDIwMjYgYXQgMDI6MTc6MDhQTSArMDIwMCwgbWVAaGVycmllLm9yZyB3
cm90ZToKPiBPbiAyMDI2LTA2LTEyIDAyOjI1LCBEbWl0cnkgQmFyeXNoa292IHdyb3RlOgo+ID4g
T24gVGh1LCBKdW4gMTEsIDIwMjYgYXQgMTI6Mzk6NDVQTSArMDIwMCwgS29ucmFkIER5YmNpbyB3
cm90ZToKPiA+ID4gT24gNi80LzI2IDE6MDIgQU0sIERtaXRyeSBCYXJ5c2hrb3Ygd3JvdGU6Cj4g
PiA+ID4gT24gV2VkLCBKdW4gMDMsIDIwMjYgYXQgMDY6MDk6MThQTSArMDIwMCwgbWVAaGVycmll
Lm9yZyB3cm90ZToKPiA+ID4gPj4gT24gMjAyNi0wNi0wMyAxNTo1NywgRG1pdHJ5IEJhcnlzaGtv
diB3cm90ZToKPiA+ID4gPj4+IE9uIFdlZCwgSnVuIDAzLCAyMDI2IGF0IDA3OjQ4OjA4QU0gKzAy
MDAsIEhlcm1hbiB2YW4gSGF6ZW5kb25rIHdyb3RlOgo+ID4gPiA+Pj4+IEFkZCBhbiBvcHRpb25h
bCAicWNvbSx2ZW5kb3ItaW5pdC1zZXEiIHByb3BlcnR5IGNhcnJ5aW5nIHJhdyBVTFBJCj4gPiA+
ID4+Pj4gKGFkZHJlc3MsIHZhbHVlKSBwYWlycyB0aGF0IGFyZSB3cml0dGVuIGFmdGVyIFBIWSBy
ZXNldC4KPiA+ID4gPj4+Pgo+ID4gPiA+Pj4+IFVubGlrZSB0aGUgZXhpc3RpbmcgInFjb20saW5p
dC1zZXEiIHByb3BlcnR5LCB0aGUgYWRkcmVzcyBmaWVsZCBpcwo+ID4gPiA+Pj4+IE5PVCBvZmZz
ZXQgYnkgVUxQSV9FWFRfVkVORE9SX1NQRUNJRklDLCBzbyB0aGUgbmV3IHByb3BlcnR5IGNhbgo+
ID4gPiA+Pj4+IHJlYWNoIHRoZSBzdGFuZGFyZCBVTFBJIHZlbmRvciByZWdpc3RlciByYW5nZSAo
MHgzMC0weDNmKS4gTVNNOHg2MC0KPiA+ID4gPj4+PiBjbGFzcyBoYXJkd2FyZSBuZWVkcyB0aGlz
IHJhbmdlIHRvIHByb2dyYW1tZSBwcmUtZW1waGFzaXMsIEhTIGRyaXZlcgo+ID4gPiA+Pj4+IHNs
b3BlIGFuZCBDRFIgYXV0by1yZXNldCBiaXRzIHRoZSBsZWdhY3kgbXNtX290ZyBkcml2ZXIgdXNl
ZCB0byBzZXQKPiA+ID4gPj4+PiB2aWEgcGxhdGZvcm0gZGF0YS4KPiA+ID4gPj4+Cj4gPiA+ID4+
PiBBcmUgdGhvc2UgcmVnaXN0ZXIgd3JpdGVzIHNwZWNpZmljIHRvIHRoZSBkZXZpY2Ugb3IgdG8g
dGhlIHdob2xlCj4gPiA+ID4+PiBwbGF0Zm9ybT8gSW4gdGhlIGxhdHRlciBjYXNlIHBsZWFzZSBl
eHRlbmQgdGhlIGRyaXZlciB0byB3cml0ZSB0aGVtLgo+ID4gPiA+Pgo+ID4gPiA+PiBMb29raW5n
IGF0IGV2ZXJ5IE1TTTh4NjAgcmVmZXJlbmNlIGtlcm5lbCBJIGNvdWxkIGZpbmQgKFF1YWxjb21t
J3Mgb3duCj4gPiA+ID4+IG1zbTh4NjAgYm9hcmQsIEhQIFRvdWNoUGFkIC8gQVBRODA2MCwgYW5k
IHNvbWUgSFRDL1NhdW1zdW5nIE1TTTg2NjAKPiA+ID4gPj4gZGV2aWNlcyksIHRoZSB3cml0ZXMg
c3BsaXQgaW50byB0d28gZ3JvdXBzOgo+ID4gPiA+Pgo+ID4gPiA+PiBQbGF0Zm9ybS1sZXZlbCAo
c2FtZSBhY3Jvc3MgYWxsIE1TTTh4NjAgaGFyZHdhcmUpOgo+ID4gPiA+PiAgLSByZWcgMHgzNiBi
aXRzIDErMjogQ0RSIGF1dG8tcmVzZXQgZGlzYWJsZWQsIFNFMSBnYXRpbmcgZGlzYWJsZWQKPiA+
ID4gPj4gIC0gcmVnIDB4MzIgYml0cyBbNTo0XTogcHJlLWVtcGhhc2lzIGF0IDIwJQo+ID4gPiA+
Pgo+ID4gPiA+PiBCb2FyZC1zcGVjaWZpYzoKPiA+ID4gPj4gIC0gcmVnIDB4MzIgYml0cyBbMzow
XTogSFMgZHJpdmVyIHNsb3BlIOKAlCBIUCBUb3VjaFBhZCB1c2VzIDUsIEhUQwo+ID4gPiA+PiAg
ICBkZXZpY2VzIHVzZSAxLiBUaGlzIGNsZWFybHkgZGVwZW5kcyBvbiBib2FyZCBsYXlvdXQgKHRy
YWNlIGxlbmd0aCwKPiA+ID4gPj4gICAgY29ubmVjdG9yIGxvYWRpbmcsIGV0Yy4pLgo+ID4gPiA+
Pgo+ID4gPiA+PiBTbyB0aGUgcGxhdGZvcm0tbGV2ZWwgd3JpdGVzIHNob3VsZCBtb3ZlIHVuY29u
ZGl0aW9uYWxseSBpbnRvIHRoZSBkcml2ZXIKPiA+ID4gPj4gYmVoaW5kIGEgbWF0Y2gtZGF0YSBm
bGFnIGZvciB0aGUgTVNNOHg2MC1jbGFzcyBjb21wYXRpYmxlLCBhbmQgb25seSB0aGUKPiA+ID4g
Pj4gSFMgZHJpdmVyIHNsb3BlIHZhbHVlIGJlbG9uZ3MgaW4gRFQuCj4gPiA+ID4KPiA+ID4gPiBM
b29rcyBsaWtlIGl0LiBQbGVhc2UgaGFyZGNvZGUgdGhlIHZhbHVlIGZvciB5b3VyIHBsYXRmb3Jt
IGluIHRoZSBkcml2ZXIKPiA+ID4gPiAod2l0aCB0aGUgY29tbWVudCksIG1lYW53aGlsZSB3ZSBj
YW4gdHJ5IGxvb2tpbmcgdXAgdGhlIGFjdHVhbCB2YWx1ZXMuCj4gPiA+IAo+ID4gPiBEbyB3ZSBo
YXZlIHRoZSB2YWx1ZXMgZm9yIGEgTVRQL1FSRCAob3Igd2hhdGV2ZXIgdGhleSB1c2VkIHRvIGJl
Cj4gPiA+IGNhbGxlZAo+ID4gPiBiYWNrIHRoZW4uLiksIGxpa2Ugd2Ugd291bGQgdXN1YWxseSBw
dXQgaW4gdGhlcmU/Cj4gPiAKPiA+IEFzIGZhciBhcyBJIGNhbiB1bmRlcnN0YW5kIG1zbS0zLjAg
YW5kIG1zbS0zLjQgbW9zdCBvZiB0aGUgYm9hcmRzIHdlcmUKPiA+IHdyaXRpbmcgMCBoZXJlIChh
bHRob3VnaCBpdCBtaWdodCBoYXZlIGJlZW4gdW5leHBlY3RlZCkuIE5vbmUgb2YgdGhlCj4gPiBi
b2FyZCBmaWxlcyBzZXQgdGhlIGhzZHJ2c2xvcGUgdmFsdWUgKHdoaWNoIG1lYW5zIDApLgo+ID4g
Cj4gPiBQbGVhc2UgY29ycmVjdCBtZSBpZiBJJ20gd3JvbmcuIEkgc2VlIHRoYXQgZm9yIHRlbmRl
cmxvaW4ga2VybmVscyBjaGFuZ2UKPiA+IHRoYXQgdG8gMHg1LCBidXQgSSBjYW4ndCBmaW5kIGEg
c2Vuc2libGUgY29tbWl0IG1lc3NhZ2UuCj4gPiAKPiA+IEkgY291bGQgbm90IGZpbmQgdGhlIGRv
Y3VtZW50YXRpb24gZm9yIHZlbmRvciBVTFBJIHJlZ2lzdGVycyBmb3IgdGhvc2UKPiA+IGNoaXBz
LCBzbyBJIGRvbid0IHRoaW5rIHdlIGNhbiBpZGVudGlmeSwgaG93IHRvIG1ha2Ugc2Vuc2Ugb2Yg
dGhvc2UKPiA+IHZhbHVlcy4gSW4gc3VjaCBhIGNhc2UgYW5kIGhhdmluZyBkaWZmZXJlbnQgYm9h
cmQtc3BlY2lmaWMgdmFsdWVzLCB3ZQo+ID4gZG9uJ3QgaGF2ZSBhIGJldHRlciBvcHRpb24gdGhh
biBoYXZpbmcgYSBxY29tLGhzZHJ2c2xvcGUgKG9yIHNpbWlsYXJseQo+ID4gbmFtZWQpIHByb3Bl
cnR5IGluIERULgo+IERtaXRyeS9Lb25yYWQsCj4gCj4gVGhlIGJpdC1sZXZlbCBtZWFuaW5nICpp
cyogZG9jdW1lbnRlZCBieXRlLWZvci1ieXRlIGFjcm9zcwo+IGV2ZXJ5IE1TTTh4NjAgZG93bnN0
cmVhbSB0cmVlIEkgY291bGQgZmluZDogQ29kZSBBdXJvcmEgaXMgdGhlCj4gY2Fub25pY2FsIHNv
dXJjZToKPiAKPiAgICAgYXJjaC9hcm0vbWFjaC1tc20vaW5jbHVkZS9tYWNoL21zbV9oc3VzYl9o
dy5oCj4gCj4gICAgICNkZWZpbmUgVUxQSV9DT05GSUdfUkVHMyAgICAgICAgMHgzMgo+ICAgICAj
ZGVmaW5lIFVMUElfRElHT1VUX0NUUkwgICAgICAgIDB4MzYgICAgICAgICAgLyogb24gTVNNN3gz
MCAvIE1TTTh4NjAgKi8KPiAgICAgI2RlZmluZSBVTFBJX0NEUl9BVVRPUkVTRVQgICAgICAoMSA8
PCAxKQo+ICAgICAjZGVmaW5lIFVMUElfU0UxX0dBVEUgICAgICAgICAgICgxIDw8IDIpCj4gICAg
ICNkZWZpbmUgVUxQSV9QUkVfRU1QSEFTSVNfTUFTSyAgKDMgPDwgNCkKPiAgICAgI2RlZmluZSBV
TFBJX0hTRFJWU0xPUEVfTUFTSyAgICAoMHgwRikKPiAKPiAgIHJlZyAweDMyIFs1OjRdOiBwcmUt
ZW1waGFzaXMgbGV2ZWwgKDAwIGRpc2FibGVkLCAxMSA9IDIwJSwgMTAgPSAxMCUpCj4gICByZWcg
MHgzMiBbMzowXTogSFMgZHJpdmVyIHNsb3BlCj4gICByZWcgMHgzNiBiaXQgMTogQ0RSIGF1dG8t
cmVzZXQgZW5hYmxlCj4gICByZWcgMHgzNiBiaXQgMjogU0UxIGdhdGluZyBlbmFibGUKPiAKPiBU
aGUgbGVnYWN5IGBtc203Mmtfb3RnLmNgIHNlbWFudGljcyBmb3IgdGhlIDB4MzYgYml0cyBhcmUg
aW52ZXJ0ZWQ6Cj4gc2V0dGluZyB0aGUgYml0IGRpc2FibGVzIHRoZSBmdW5jdGlvbiAoc2VlIHNl
dF9jZHJfYXV0b19yZXNldCgpIGFuZAo+IHNldF9zZTFfZ2F0aW5nKCkpLiAgRXZlcnkgTVNNOHg2
MCByZWZlcmVuY2UgYm9hcmQgc2V0cyBib3RoIGJpdHMsCj4gaS5lLiBDRFIgYXV0by1yZXNldCBk
aXNhYmxlZCArIFNFMSBnYXRpbmcgZGlzYWJsZWQuCj4gCj4gU3VydmV5aW5nIGV2ZXJ5IE1TTTh4
NjAtY2xhc3MgYm9hcmQgZmlsZSBJIGNhbiByZWFjaDogUXVhbGNvbW0ncyBvd24KPiByZWZlcmVu
Y2UsIFNhbXN1bmcsIFNvbnksIEhUQywgYW5kIEhQOiB0aGUgcGxhdGZvcm0tbGV2ZWwgdmFsdWVz
Cj4gYXJlIHVuYW5pbW91czoKPiAKPiAgIHByZS1lbXBoYXNpcyAgICAgPSAyMCUKPiAgIENEUiBh
dXRvLXJlc2V0ICAgPSBkaXNhYmxlZAo+ICAgU0UxIGdhdGluZyAgICAgICA9IGRpc2FibGVkCj4g
Cj4gfCAgVmVuZG9yIC8gYm9hcmQgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICB8IGhz
ZHJ2c2xvcGUgfAo+IHwgIC0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0t
LS0tLS0tfC0tLS0tLS0tLS0tLXwKPiB8ICBRdWFsY29tbSByZWZlcmVuY2UgKFNVUkYgLyBGRkEg
LyBGbHVpZCAvICAgICAgIHwgICAgICAgICAgICB8Cj4gfCAgICBEcmFnb24gLyBGdXNpb24gLS0g
Ym9hcmQtbXNtOHg2MC5jKSAgICAgICAgICB8IHVuc2V0ICgwKSAgfAo+IHwgIFNhbXN1bmcgR2Fs
YXh5IFMyIGZhbWlseSAoUTEgLyBDZWxveCAvIERhbGkgLyAgfCAgICAgICAgICAgIHwKPiB8ICAg
IGdlbmVyaWMgOHg2MCBNVFApICAgICAgICAgICAgICAgICAgICAgICAgICAgIHwgdW5zZXQgKDAp
ICB8Cj4gfCAgU29ueSBNU004NjYwIChzb255LWtlcm5lbC1tc204NjYwKSAgICAgICAgICAgICB8
IHVuc2V0ICgwKSAgfAo+IHwgIEhUQyBNU004NjYwIChzaG9vdGVyIC8gaG9saWRheSAvIHB5cmFt
aWQgLyAgICAgfCAgICAgICAgICAgIHwKPiB8ICAgIGRvdWJsZXNob3QgLyBzaG9vdGVyX3UgLyBy
dWJ5KSAgICAgICAgICAgICAgIHwgMSAgICAgICAgICB8Cj4gfCAgSFAgVG91Y2hQYWQgKGJvYXJk
LXRlbmRlcmxvaW4uYykgICAgICAgICAgICAgICB8IDUgICAgICAgICAgfAo+IAo+IFNvIFF1YWxj
b21tJ3Mgb3duIE1UUCwgdGhlIGNsb3Nlc3QgdGhpbmcgdG8gYSByZWZlcmVuY2UgcGxhdGZvcm0g
d2UKPiBoYXZlLCBsZWF2ZXMgaHNkcnZzbG9wZSBhdCB0aGUgc2lsaWNvbiBkZWZhdWx0ICgwKS4g
IFR3byBPRU1zIChIVEMsCj4gSFApIG92ZXJyaWRlIGl0IHRvIG5vbi16ZXJvIHZhbHVlcyB0aGF0
IG1hdGNoIHRoZWlyIGJvYXJkIGxheW91dC4KPiBOZWl0aGVyIG92ZXJyaWRlIGhhcyBhIGNvbW1p
dCBtZXNzYWdlLiBIVEMncyB2YWx1ZSBpcyBidXJpZWQgaW4gYW4KPiBpbml0X3NlcSBhcnJheSwg
SFAncyBhcHBlYXJzIGFzIGAuaHNkcnZzbG9wZSA9IDB4MDVgIGluCj4gYm9hcmQtdGVuZGVybG9p
bi5jIHdpdGggbm8gY29tbWVudC4gIEkndmUga2VwdCBUb3VjaFBhZCdzIDUgYmVjYXVzZQo+IHRo
YXQncyB0aGUgdmFsdWUgdGhlIGRldmljZSBzaGlwcGVkIHdpdGggYW5kIG91ciBIUyBsaW5rIGlz
IGhhcHB5Cj4gd2l0aCBpdDsgY2hhbmdpbmcgaXQgcmlza3MgcmVncmVzc2luZyBleWUgbWFyZ2lu
IG9uIHRoZSBzaWxpY29uIHdlCj4gc3RpbGwgaGF2ZSB0byB0ZXN0IGFnYWluc3QuCj4gCj4gU28g
dGhlIHBsYW4gaXMgZXhhY3RseSB3aGF0IHlvdSBib3RoIGFscmVhZHkgY29udmVyZ2VkIG9uOgo+
IAo+ICAgMS4gRHJvcCBxY29tLHZlbmRvci1pbml0LXNlcSBmcm9tIHRoZSBiaW5kaW5nICh0aGlz
IHBhdGNoIGdvZXMgYXdheQo+ICAgICAgZW50aXJlbHkpLgo+ICAgMi4gSW4gdGhlIGRyaXZlciwg
aGFyZGNvZGUgdGhlIHRocmVlIHBsYXRmb3JtLWxldmVsIHdyaXRlcyBiZWhpbmQKPiAgICAgIHRo
ZSBxY29tLHVzYi1ocy1waHktbXNtODY2MCBjb21wYXRpYmxlIG1hdGNoLWRhdGEsIHdpdGggYQo+
ICAgICAgY29tbWVudCBjaXRpbmcgbXNtX2hzdXNiX2h3LmggYXMgdGhlIHNvdXJjZSBmb3IgdGhl
IGJpdCBuYW1lcy4KPiAgIDMuIEFkZCBhIHNpbmdsZSBxY29tLGhzLWRydi1zbG9wZSBwcm9wZXJ0
eSAodTgsIDAuLjE1KSBmb3IgdGhlCj4gICAgICBib2FyZC12YXJ5aW5nIHZhbHVlLiAgVG91Y2hQ
YWQgRFQgc2V0cyA1LiAgQWJzZW50IMOi4oCh4oCZIGxlYXZlIHNpbGljb24KPiAgICAgIGRlZmF1
bHQgaW4gcGxhY2UsIG1hdGNoaW5nIFF1YWxjb21tL1NhbXN1bmcvU29ueSByZWZlcmVuY2UKPiAg
ICAgIGJlaGF2aW91ci4KPiAKPiBJJ2xsIHNlbmQgdGhlIG5ldyB2IGluIHRoYXQgc2hhcGU6IHNp
bmdsZSBkdC1iaW5kaW5ncyBwYXRjaAo+IChxY29tLGhzLWRydi1zbG9wZSkgcGx1cyB0aGUgZHJp
dmVyIHBhdGNoIHRoYXQgaGFyZGNvZGVzIHRoZSBwbGF0Zm9ybQo+IHdyaXRlcyBhbmQgY29uc3Vt
ZXMgdGhlIG5ldyBwcm9wZXJ0eS4KClNvdW5kcyBnb29kLiBQbGVhc2UgZXhwbGFpbiBpbiB0aGUg
Y29tbWl0IG1lc3NhZ2VzIHRoYXQgeW91IGNhbid0IGRlY29kZQpob3cgdGhlIHZhbHVlcyBjb3Jy
ZXNwb25kIHRvIHRoZSBhY3R1YWwgc2xvcGUgdmFsdWVzIChJIGNvdWxkbid0IGZpbmQKY29ycmVz
cG9uZGluZyBkb2MgaW5zaWRlIFF1YWxjb21tKS4KCi0tIApXaXRoIGJlc3Qgd2lzaGVzCkRtaXRy
eQoKLS0gCmxpbnV4LXBoeSBtYWlsaW5nIGxpc3QKbGludXgtcGh5QGxpc3RzLmluZnJhZGVhZC5v
cmcKaHR0cHM6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtcGh5
Cg==
