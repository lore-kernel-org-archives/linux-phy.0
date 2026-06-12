Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 47058CD98C7
	for <linux-phy@archiver.kernel.org>; Fri, 12 Jun 2026 00:25:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ys+QfrHEF3KBcFi332+wdtAKbIXvgUVPXHvi6lqayjc=; b=ooYCgEGzc7XKOW
	3aQO9IbjHMzlUDdyFsJjF+mB4BrNMseWd/5RKCIW9/4grmIQP7brt0yVNM1X3mCtbjMjVXpDrchdn
	KUchmEg5NQpbTGwN1wH1Kofz6BU5OEe5InnpBbMcG4RePe+i/tdPIcXymjmi7Z7EaFVJLyR4+ruZK
	hcJXfvokB73RzjLxyvGP7HQzNSgI9KBjrxPORlnSmHm9pEDE5YXaA9Xdzckj1u2D4+h9BLon3E4Ep
	lxFDe1TpFrkhstuTMo7zIvkgSvIzcgsIG3kH/ReFPxdr+dLZFQNgSWFPyaJnzO1iLHTuGHm2AfsWq
	qO97+40H8ZuqRODpkZCA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wXpiP-0000000ADlT-3kfB;
	Fri, 12 Jun 2026 00:25:41 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wXpiN-0000000ADl7-3j9K
	for linux-phy@lists.infradead.org;
	Fri, 12 Jun 2026 00:25:41 +0000
Received: from pps.filterd (m0279864.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 65BMSl6i1932365
	for <linux-phy@lists.infradead.org>; Fri, 12 Jun 2026 00:25:39 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	iSS1+Hj+2kWYpMTK7YCbA6hsiqdGiTmna2KojhDTjkg=; b=FawRp0twJnaY8fg6
	9OpnSaqjKR3DLTIdP176OUIRxkykpEwlEOscVfLvKOJ3VPdDoaSxkUA6UgfdD8Xb
	zBYmu49Pa24KeadEBv10bX+tzTEIfIvWDV3NKOeaihdQ8xr/shprTIbqWM7sGm88
	DbgG8Dx70YOYtq5NFyI9DxV3HYFPDMhYox+8GqXoYh4cmxxLWEWpAcrUxO1Sj/HN
	61/Jzd9zVfKsZDN2zZWpHRtlUxfRrlupuFU3AG+ByD8Et7qCit8HnM6medvxD3xp
	rbn2J1eNPKXqtS709tPr0kcg7mLhxJBgxVBIqQxLSdtlV1hIoVnmDvJt/IQ5GphJ
	GpIGBQ==
Received: from mail-qt1-f197.google.com (mail-qt1-f197.google.com [209.85.160.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4er2r7125c-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Fri, 12 Jun 2026 00:25:39 +0000 (GMT)
Received: by mail-qt1-f197.google.com with SMTP id d75a77b69052e-51787404d3eso7341641cf.1
        for <linux-phy@lists.infradead.org>; Thu, 11 Jun 2026 17:25:38 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1781223938; x=1781828738; darn=lists.infradead.org;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:from:to
         :cc:subject:date:message-id:reply-to;
        bh=iSS1+Hj+2kWYpMTK7YCbA6hsiqdGiTmna2KojhDTjkg=;
        b=AqO9YKZDeamrtirskdZv9Bilag+I5rrkQue2HHU/Uh+4fxWL3i5Q9YH8eH8o21R7Kl
         4tBQwQl8hpGGtBR63abVjx92SmXQORfMwcaTaH65DatUZ+lNFrwRByTmv1E4w4w3yUMP
         H5gDgPpgs2qI76IIwg0EJ84QQkMYL+/ER2NDpVg+sxQmGWngljjqWDwzcHLHr/TC9f+A
         GrkFLmJIqpdfqi18+mblSJQNZUr/Vi04e8ly6lZ943TYrqBFLPKBx/eXVBnkOasaCKg1
         grnNQtAWPpkcHvOYj+9zGes21IMDG8NkLxa2b0Zqyg9bIYlT6VyWiU85qdUt0fkJxnPj
         5ZVw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1781223938; x=1781828738;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=iSS1+Hj+2kWYpMTK7YCbA6hsiqdGiTmna2KojhDTjkg=;
        b=OEqfPEkOiqcUlIW28ZN3Wj2pf6fPk3fz93vD53vKQtOrKkvrIn/u/aRQT+54lnXGiV
         sfIxyxfDFUIy2xbrCNmBC7IeHLr6rct85nOVbf2qSIXObhJeHbOtEnp12XUDEsC+8xpR
         nT9Z69YNy33vx4tAX3atme6YKhe/VcoJBacRMQLCuEuFeMtDzJ+f7KjHBbBlEE4eydsS
         7ztB9fTEzDMcIC7zDRd+9tMyjEwNszWF+QQXY+51jJMvANGwprA1SQ3wUwZPCHf6ZkV+
         HhDRMhaKzIWWQ/4rkzaSk/uR768L3DeJ3kx6Dv2mSLmtx+dJVrEIMxQDvZr2u6fOoZ93
         N0Zw==
X-Forwarded-Encrypted: i=1; AFNElJ+Vy4BWAy79r6Rddk/SZWhosEsoUYd9/mZjM4beb+mF8hF1p5IPRch+VBNQ40RrPrwlgQpOgHXtlLU=@lists.infradead.org
X-Gm-Message-State: AOJu0Yw6LrLTOCiws5tS8fl96lHeFG/9aTRX6tLWgOtb+QvlqmTDbkkD
	T/YlT47ymvSdKFncn+FrIqdPHZAD0XVHySPbDJa9gAzdak210fKKjvO41LqC0dkowCRzmtxe6f5
	Y1LRB68UzfX/vqVMZ4RF7gntYGixnRayt8dic+Xzo92e4fWwhp47UYTYd7bvvLZs38bIMY5q5Cx
	hb
X-Gm-Gg: Acq92OF0s2a6apPa6MQpgHRZqSxfFH9aliMHfbVM5RXwqIhckHXNlb+PuvGKj8iyIG2
	ux1OluFR1piUq2il1jk3IyOgmqoiP2vEP3kjuoW4cE2O7FlvgsCV4ibi0+ZSAUdI4Y/yi6h5t/X
	t0vcv1e8mSP9aTMNc2dwXYC9qlzmeJd3TnUpJsmWyG1+gHUFRaxQYPGUwPCPHofZh0Bhs3/gzZm
	lln+ecezYdh9lUbiejRC5yAZRfsp6/fkNQNhrvceRmkfSLbiB4Ex/Q3YEMl7w5IAYMQi7KAcauY
	uo+Sy45to1mW4Vu4hLYY+GRVWLIyp2JSEXCv3szx1CX7yiaQFbOzCIQchIsPjSmVtIgzdy4f4qQ
	uroDu0+g5dH7LhrqZsmLPDUrrfQ3bGnWH9ZNiGlSIUW1hsQKriBFanoJP+mWVVdjL8KcS0sVw7y
	DZuUI9Ycp9ylcXOc40Y+RYqsk3SrLcQHrsG8Y=
X-Received: by 2002:ac8:5a95:0:b0:517:7ed5:b56a with SMTP id d75a77b69052e-517fe1d9786mr7577901cf.15.1781223937810;
        Thu, 11 Jun 2026 17:25:37 -0700 (PDT)
X-Received: by 2002:ac8:5a95:0:b0:517:7ed5:b56a with SMTP id d75a77b69052e-517fe1d9786mr7577381cf.15.1781223937289;
        Thu, 11 Jun 2026 17:25:37 -0700 (PDT)
Received: from umbar.lan (2001-14ba-a073-af00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a073:af00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-5ad2e162013sm57653e87.10.2026.06.11.17.25.33
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 11 Jun 2026 17:25:34 -0700 (PDT)
Date: Fri, 12 Jun 2026 03:25:31 +0300
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
Cc: github.com@herrie.org, me@herrie.org, linux-phy@lists.infradead.org,
        devicetree@vger.kernel.org, linux-arm-msm@vger.kernel.org,
        Vinod Koul <vkoul@kernel.org>,
        Neil Armstrong <neil.armstrong@linaro.org>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>
Subject: Re: [PATCH 1/2] dt-bindings: phy: qcom,usb-hs-phy: add
 qcom,vendor-init-seq
Message-ID: <tknuizddyhfcyywmm36v4ok6idgpxridgur5qbowvmwhcbve5o@bp3z46gsfvlk>
References: <20260603054809.565723-1-github.com@herrie.org>
 <20260603054809.565723-2-github.com@herrie.org>
 <ti5p3oreibkae4pl5sn52g3ctv3ufcs6aklwgbterksrxvxrbj@b6scawz2cqmq>
 <66905f4914dc022629158ac02df1c7df@herrie.org>
 <46lrfwoahgzoudq3afnhv4kxqs4fwj3w7u2dnx6ns6soo6pxt2@qkqbelan2iwq>
 <0f6ea4d2-3865-492e-ac6b-b008843f8d56@oss.qualcomm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <0f6ea4d2-3865-492e-ac6b-b008843f8d56@oss.qualcomm.com>
X-Proofpoint-ORIG-GUID: IEY_ydHwMSvS2V-mcjQSc6815flvciSx
X-Authority-Analysis: v=2.4 cv=RJGD2Yi+ c=1 sm=1 tr=0 ts=6a2b5203 cx=c_pps
 a=EVbN6Ke/fEF3bsl7X48z0g==:117 a=xqWC_Br6kY4A:10 a=IkcTkHD0fZMA:10
 a=FelO9ux0wxsA:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=u7WPNUs3qKkmUXheDGA7:22 a=DJpcGTmdVt4CTyJn9g5Z:22 a=cTwmTnRGAAAA:8
 a=zUIbg9vhP_L5b9AsXv0A:9 a=3ZKOabzyN94A:10 a=QEXdDO2ut3YA:10
 a=a_PwQJl-kcHnX1M80qC6:22 a=GUWCSGlMWfG-xDt5EnV5:22
X-Proofpoint-GUID: IEY_ydHwMSvS2V-mcjQSc6815flvciSx
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwNjEyMDAwMiBTYWx0ZWRfX6ihJOKMn9NvE
 EnjTidJmjxvL0VrWsuTcWE2EFwBtlLCk2VpIxvMqQrN6MEAiikUs6IhhRXzgdGDCaIUImbtHqHi
 B8RmpxFDAPsMUiZxH4OnVQ5EvSO3MDlHWPTl2M6XHFkVflyhH9jC7JLZwhWpPa3J0HbKCidifM9
 bmG96/6CG7P5RAYRCfpeY/A/jal+FgYTjSTqjU2tbCbTNfInfeCalJNPfRjRDPqTy91NrPB9ZHH
 oM1P8TETiFhu+jkoBLHUKLZPWDUxGO1aHifkCmzFsmqs/FivFrfiaPpc8uLEUREoLVfxsBkGGdH
 oVfwDc5+cIYMPcdcxUQQeTEU2lsyObmnf5QUc83g8iRKLD48xF2+ccYxZ0vs414+nFCC0x8NmWB
 n0VpKMQ/Mc7k6HCS6o+fjFFcajFHcVcFl8z+UqeoAxV+YfD2MebD0crH67CtUlb+P1Pr/1TSEuU
 RhNxNd151IhNJxJ1t2A==
X-Proofpoint-Spam-Info: AW1haW4tMjYwNjEyMDAwMiBTYWx0ZWRfX/+aC4V0orM2a
 zcHrUL1XmXpz8wrETWxihAEdcPJrY2ZONr3Pi3lgJg4ACozeoYdkgMaVEN8fugzeieQAh5WhsvV
 duc5qm4NnMEBkw98ep2jgK4nlGkz48E=
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.125,FMLib:17.12.100.49
 definitions=2026-06-11_05,2026-06-11_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 suspectscore=0 phishscore=0 spamscore=0 adultscore=0 lowpriorityscore=0
 malwarescore=0 priorityscore=1501 impostorscore=0 bulkscore=0 clxscore=1015
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2606040000 definitions=main-2606120002
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260611_172539_975339_12150ABD 
X-CRM114-Status: GOOD (  29.00  )
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

T24gVGh1LCBKdW4gMTEsIDIwMjYgYXQgMTI6Mzk6NDVQTSArMDIwMCwgS29ucmFkIER5YmNpbyB3
cm90ZToKPiBPbiA2LzQvMjYgMTowMiBBTSwgRG1pdHJ5IEJhcnlzaGtvdiB3cm90ZToKPiA+IE9u
IFdlZCwgSnVuIDAzLCAyMDI2IGF0IDA2OjA5OjE4UE0gKzAyMDAsIG1lQGhlcnJpZS5vcmcgd3Jv
dGU6Cj4gPj4gT24gMjAyNi0wNi0wMyAxNTo1NywgRG1pdHJ5IEJhcnlzaGtvdiB3cm90ZToKPiA+
Pj4gT24gV2VkLCBKdW4gMDMsIDIwMjYgYXQgMDc6NDg6MDhBTSArMDIwMCwgSGVybWFuIHZhbiBI
YXplbmRvbmsgd3JvdGU6Cj4gPj4+PiBBZGQgYW4gb3B0aW9uYWwgInFjb20sdmVuZG9yLWluaXQt
c2VxIiBwcm9wZXJ0eSBjYXJyeWluZyByYXcgVUxQSQo+ID4+Pj4gKGFkZHJlc3MsIHZhbHVlKSBw
YWlycyB0aGF0IGFyZSB3cml0dGVuIGFmdGVyIFBIWSByZXNldC4KPiA+Pj4+Cj4gPj4+PiBVbmxp
a2UgdGhlIGV4aXN0aW5nICJxY29tLGluaXQtc2VxIiBwcm9wZXJ0eSwgdGhlIGFkZHJlc3MgZmll
bGQgaXMKPiA+Pj4+IE5PVCBvZmZzZXQgYnkgVUxQSV9FWFRfVkVORE9SX1NQRUNJRklDLCBzbyB0
aGUgbmV3IHByb3BlcnR5IGNhbgo+ID4+Pj4gcmVhY2ggdGhlIHN0YW5kYXJkIFVMUEkgdmVuZG9y
IHJlZ2lzdGVyIHJhbmdlICgweDMwLTB4M2YpLiBNU004eDYwLQo+ID4+Pj4gY2xhc3MgaGFyZHdh
cmUgbmVlZHMgdGhpcyByYW5nZSB0byBwcm9ncmFtbWUgcHJlLWVtcGhhc2lzLCBIUyBkcml2ZXIK
PiA+Pj4+IHNsb3BlIGFuZCBDRFIgYXV0by1yZXNldCBiaXRzIHRoZSBsZWdhY3kgbXNtX290ZyBk
cml2ZXIgdXNlZCB0byBzZXQKPiA+Pj4+IHZpYSBwbGF0Zm9ybSBkYXRhLgo+ID4+Pgo+ID4+PiBB
cmUgdGhvc2UgcmVnaXN0ZXIgd3JpdGVzIHNwZWNpZmljIHRvIHRoZSBkZXZpY2Ugb3IgdG8gdGhl
IHdob2xlCj4gPj4+IHBsYXRmb3JtPyBJbiB0aGUgbGF0dGVyIGNhc2UgcGxlYXNlIGV4dGVuZCB0
aGUgZHJpdmVyIHRvIHdyaXRlIHRoZW0uCj4gPj4KPiA+PiBMb29raW5nIGF0IGV2ZXJ5IE1TTTh4
NjAgcmVmZXJlbmNlIGtlcm5lbCBJIGNvdWxkIGZpbmQgKFF1YWxjb21tJ3Mgb3duCj4gPj4gbXNt
OHg2MCBib2FyZCwgSFAgVG91Y2hQYWQgLyBBUFE4MDYwLCBhbmQgc29tZSBIVEMvU2F1bXN1bmcg
TVNNODY2MAo+ID4+IGRldmljZXMpLCB0aGUgd3JpdGVzIHNwbGl0IGludG8gdHdvIGdyb3VwczoK
PiA+Pgo+ID4+IFBsYXRmb3JtLWxldmVsIChzYW1lIGFjcm9zcyBhbGwgTVNNOHg2MCBoYXJkd2Fy
ZSk6Cj4gPj4gIC0gcmVnIDB4MzYgYml0cyAxKzI6IENEUiBhdXRvLXJlc2V0IGRpc2FibGVkLCBT
RTEgZ2F0aW5nIGRpc2FibGVkCj4gPj4gIC0gcmVnIDB4MzIgYml0cyBbNTo0XTogcHJlLWVtcGhh
c2lzIGF0IDIwJQo+ID4+Cj4gPj4gQm9hcmQtc3BlY2lmaWM6Cj4gPj4gIC0gcmVnIDB4MzIgYml0
cyBbMzowXTogSFMgZHJpdmVyIHNsb3BlIOKAlCBIUCBUb3VjaFBhZCB1c2VzIDUsIEhUQwo+ID4+
ICAgIGRldmljZXMgdXNlIDEuIFRoaXMgY2xlYXJseSBkZXBlbmRzIG9uIGJvYXJkIGxheW91dCAo
dHJhY2UgbGVuZ3RoLAo+ID4+ICAgIGNvbm5lY3RvciBsb2FkaW5nLCBldGMuKS4KPiA+Pgo+ID4+
IFNvIHRoZSBwbGF0Zm9ybS1sZXZlbCB3cml0ZXMgc2hvdWxkIG1vdmUgdW5jb25kaXRpb25hbGx5
IGludG8gdGhlIGRyaXZlcgo+ID4+IGJlaGluZCBhIG1hdGNoLWRhdGEgZmxhZyBmb3IgdGhlIE1T
TTh4NjAtY2xhc3MgY29tcGF0aWJsZSwgYW5kIG9ubHkgdGhlCj4gPj4gSFMgZHJpdmVyIHNsb3Bl
IHZhbHVlIGJlbG9uZ3MgaW4gRFQuCj4gPiAKPiA+IExvb2tzIGxpa2UgaXQuIFBsZWFzZSBoYXJk
Y29kZSB0aGUgdmFsdWUgZm9yIHlvdXIgcGxhdGZvcm0gaW4gdGhlIGRyaXZlcgo+ID4gKHdpdGgg
dGhlIGNvbW1lbnQpLCBtZWFud2hpbGUgd2UgY2FuIHRyeSBsb29raW5nIHVwIHRoZSBhY3R1YWwg
dmFsdWVzLgo+IAo+IERvIHdlIGhhdmUgdGhlIHZhbHVlcyBmb3IgYSBNVFAvUVJEIChvciB3aGF0
ZXZlciB0aGV5IHVzZWQgdG8gYmUgY2FsbGVkCj4gYmFjayB0aGVuLi4pLCBsaWtlIHdlIHdvdWxk
IHVzdWFsbHkgcHV0IGluIHRoZXJlPwoKQXMgZmFyIGFzIEkgY2FuIHVuZGVyc3RhbmQgbXNtLTMu
MCBhbmQgbXNtLTMuNCBtb3N0IG9mIHRoZSBib2FyZHMgd2VyZQp3cml0aW5nIDAgaGVyZSAoYWx0
aG91Z2ggaXQgbWlnaHQgaGF2ZSBiZWVuIHVuZXhwZWN0ZWQpLiBOb25lIG9mIHRoZQpib2FyZCBm
aWxlcyBzZXQgdGhlIGhzZHJ2c2xvcGUgdmFsdWUgKHdoaWNoIG1lYW5zIDApLgoKUGxlYXNlIGNv
cnJlY3QgbWUgaWYgSSdtIHdyb25nLiBJIHNlZSB0aGF0IGZvciB0ZW5kZXJsb2luIGtlcm5lbHMg
Y2hhbmdlCnRoYXQgdG8gMHg1LCBidXQgSSBjYW4ndCBmaW5kIGEgc2Vuc2libGUgY29tbWl0IG1l
c3NhZ2UuCgpJIGNvdWxkIG5vdCBmaW5kIHRoZSBkb2N1bWVudGF0aW9uIGZvciB2ZW5kb3IgVUxQ
SSByZWdpc3RlcnMgZm9yIHRob3NlCmNoaXBzLCBzbyBJIGRvbid0IHRoaW5rIHdlIGNhbiBpZGVu
dGlmeSwgaG93IHRvIG1ha2Ugc2Vuc2Ugb2YgdGhvc2UKdmFsdWVzLiBJbiBzdWNoIGEgY2FzZSBh
bmQgaGF2aW5nIGRpZmZlcmVudCBib2FyZC1zcGVjaWZpYyB2YWx1ZXMsIHdlCmRvbid0IGhhdmUg
YSBiZXR0ZXIgb3B0aW9uIHRoYW4gaGF2aW5nIGEgcWNvbSxoc2RydnNsb3BlIChvciBzaW1pbGFy
bHkKbmFtZWQpIHByb3BlcnR5IGluIERULgoKLS0gCldpdGggYmVzdCB3aXNoZXMKRG1pdHJ5Cgot
LSAKbGludXgtcGh5IG1haWxpbmcgbGlzdApsaW51eC1waHlAbGlzdHMuaW5mcmFkZWFkLm9yZwpo
dHRwczovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1waHkK
