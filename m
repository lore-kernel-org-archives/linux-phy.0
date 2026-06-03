Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id C2380CD6E60
	for <linux-phy@archiver.kernel.org>; Wed,  3 Jun 2026 23:03:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=cYhwZI3G5C+ztqHrp2VIoruEmmCGOlWWa7Mi2tuCzWo=; b=mb7ygV7aodOpXi
	kgsHRNhnqNLtLaMR+zWFNZYqj4dzfOHLld68xJzYlFVv/aOPpQokw0qT/+gRx09XNzeAeZ5ZLp6RQ
	ET3pbbcgn1402Utp8RGTHm0OG5NtKirrvtxibquqjK04L6AckpiAskJ3weA3SIfz/STRLdsOYgK8S
	7AK3A2YQvdgl4X8D4/vequ2GtrVIPotMnZENXVEuffPlcsErTScg3IPPIcxKj8HqzLW7OUCmjtqQX
	GfaTCu+ylucMUSSALXq2/9EPKZC/6H11QLWAavEFhRAmG9h1Ts7fP/9X6RA/QNCZBbIEHUlr5VyKd
	wRYHnw4XKn3eoaSZPZrQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wUuc4-0000000Fuph-1K5M;
	Wed, 03 Jun 2026 23:03:04 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wUuc1-0000000FupG-1Hpn
	for linux-phy@lists.infradead.org;
	Wed, 03 Jun 2026 23:03:02 +0000
Received: from pps.filterd (m0279865.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 653JZetN1039943
	for <linux-phy@lists.infradead.org>; Wed, 3 Jun 2026 23:03:00 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	JeN5N58iH3KPzWRzuASBqAKPV6sY1na34kyQoy18huE=; b=h8mcAIA89dCTJUqj
	1ohXh+yidK6GjxzkE2J/mtkGG1R5j6tMMsmyqkZujTpPfbjoyG98Pb6glQAdOl7N
	8O8eHjLDwCpfHsB7Igen8zzJ7pm3ozGC9LJvq/2QQfGseplwghyq1T1x7df0/e0N
	M0HsbfrHi89AtXYF0h5hHZDYfZVmHk3wjFAJDjSX8y3woNwYEUfs6owvJEpsygQg
	ds8NXRDt0aj+bTSgRD+k/ctiFtnsJ2KHm9hPSqKGlIrURum5t2ZH4gpEqCu9Hf5S
	UgWf2ZH+ztsKfKJToDqHt4iLH2P/5grvvf8zoVk8EIqZVE3+2MmgGvnni7f1CNGP
	dp2Rug==
Received: from mail-ot1-f70.google.com (mail-ot1-f70.google.com [209.85.210.70])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4ejtj8gnsn-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Wed, 03 Jun 2026 23:03:00 +0000 (GMT)
Received: by mail-ot1-f70.google.com with SMTP id 46e09a7af769-7e6dd5840c1so57559a34.2
        for <linux-phy@lists.infradead.org>; Wed, 03 Jun 2026 16:03:00 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1780527780; x=1781132580; darn=lists.infradead.org;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:from:to
         :cc:subject:date:message-id:reply-to;
        bh=JeN5N58iH3KPzWRzuASBqAKPV6sY1na34kyQoy18huE=;
        b=KCf5N0TlY3oW9gYBjmsq5x6p1fu8uNF42J0tMl+56oc3rfG79WOSlEg1riQtBBuX7Q
         V9maVig7Jf07xMSvGTTW3eGfTbIMu1/SKY0oZCq+k6jGiRB/uA6emMIJPW+FnrnDSc5a
         Tb0BTLJfBxIc3lKlkPdZ0AEZ4ICa/GpkMXXC6dLMXvY6PktjMc8Ulimiw563HNwVoVCr
         j+lvKKgyBNS7kX3D+CYpgpnnE9F+PHGQIOijQlFCTOW8GoGZRC2BI074hPd9/W+OWOZq
         ULR2DD38b/sMpB3RLhlpjTUZO0XnnElbhQVWe1HX0UCSjOC7i63gzZGucDXKpTYCZSXO
         1tCQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1780527780; x=1781132580;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=JeN5N58iH3KPzWRzuASBqAKPV6sY1na34kyQoy18huE=;
        b=ZcI6qODUfmXsQNrbfjRykly41bfgtQWH5PIEuJgj0dcJBSNimeBlz/tUGSrYIEX4V7
         zinCAx5gaeVjbf87dAy4apkpIBi0SSXu/cUt3MUfW1GRTIyBvF+jTJKE0OLMFglmUmaL
         75eUDGwe6OOmgHSMKVgJ1i7c0asknQez9dZHlqCmkaFSX3n+i1zXlCcQ4gXfESG9RhJT
         rgf57hHSPRwkwESdldanXcfd9+iu+Ut373719UBa7I4Zdt1GTzR1IT36DOjXer6Le/V8
         Zamu/mokeOMnMyiL5iPmpnRj9pv+fTFexsFz0UEgnwwqr3frxp9c0I7kZ9e6GTAoQpkQ
         Z7yA==
X-Gm-Message-State: AOJu0YwUiqo932llmIXd/80D0iQ1FFZQAp6b53Qs0OdeSePkZjurrJUC
	1TSzYArWp9QCJzlYmWQC8ujnUuEH0RKh5TIats93OaCSzC20upVAJxUFWZLR1iMWQgEGOcaXm3Z
	qkGostdUaiQo6mHSbxTW7GLCJXWAdUhNxPznDxvWPL210/46sFcUl760reCd57tcFbwGh
X-Gm-Gg: Acq92OEnpXHva3JvP8q2NwK0BORiyc2WHVvhdM9plDYS7QJXzBF1LkjQUvSaXODvv1r
	qbF+I/wNhcfHjxjaYMer1Zd6xpNrWXB3xbd8mxDV2720JNbWceQZZjjp4kpAbDR6CmTENvLci2x
	wt3L08YmDKiH2WK63PegmyW8pFnZXukIGIVAJl2K305lKUI6Ni1VpVzZRYjs2vzY0TxQKyZuQez
	tI/M76gSZRE3Hq9PdQFCGYtsbsU37j2PhPjlYzKSbciU/WQ9J6RS9F+fH1CO9MevpNtjfgDdKL0
	478ZeUEBt1FpWOAcRcIl/0OQ5pVDf/tjxWkgJeDTEHwxz+9Al8Y8aDudzWGOxUfRU4xjI4wL6mL
	Ey8DhbxYP8oCm3YgNpLIrQYxCenFDQrkKJAVJa4SJXUOz0L+EE0xycdQFdHfiDxmupfEtSwYad8
	rZph7EJ61YstodjUerEg7v0YTFq2ot5DoXOsPCHzi7mOCUoQ==
X-Received: by 2002:a05:6830:6d46:b0:7e6:dc7a:f459 with SMTP id 46e09a7af769-7e6e9b41683mr3482485a34.11.1780527779670;
        Wed, 03 Jun 2026 16:02:59 -0700 (PDT)
X-Received: by 2002:a05:6830:6d46:b0:7e6:dc7a:f459 with SMTP id 46e09a7af769-7e6e9b41683mr3482465a34.11.1780527779262;
        Wed, 03 Jun 2026 16:02:59 -0700 (PDT)
Received: from umbar.lan (2001-14ba-a073-af00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a073:af00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-5aa7b97ac34sm879928e87.39.2026.06.03.16.02.56
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 03 Jun 2026 16:02:56 -0700 (PDT)
Date: Thu, 4 Jun 2026 02:02:55 +0300
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: github.com@herrie.org, me@herrie.org
Cc: linux-phy@lists.infradead.org, devicetree@vger.kernel.org,
        linux-arm-msm@vger.kernel.org, Vinod Koul <vkoul@kernel.org>,
        Neil Armstrong <neil.armstrong@linaro.org>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>
Subject: Re: [PATCH 1/2] dt-bindings: phy: qcom,usb-hs-phy: add
 qcom,vendor-init-seq
Message-ID: <46lrfwoahgzoudq3afnhv4kxqs4fwj3w7u2dnx6ns6soo6pxt2@qkqbelan2iwq>
References: <20260603054809.565723-1-github.com@herrie.org>
 <20260603054809.565723-2-github.com@herrie.org>
 <ti5p3oreibkae4pl5sn52g3ctv3ufcs6aklwgbterksrxvxrbj@b6scawz2cqmq>
 <66905f4914dc022629158ac02df1c7df@herrie.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <66905f4914dc022629158ac02df1c7df@herrie.org>
X-Proofpoint-ORIG-GUID: y8r1Sbo9YSY1IdWbCUGqFK7L33NtRRG5
X-Proofpoint-GUID: y8r1Sbo9YSY1IdWbCUGqFK7L33NtRRG5
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwNjAzMDIyNSBTYWx0ZWRfXymdAG61AVSXr
 esS5AuPrpzqKahY8qVVYMVmvVDSDPMx7gMZAVxqVI+ijbk7UqVGjZIZ4w2xzG3jzjb4mJRaKbJZ
 9FgOP/CRzhnHkLJfY9MnA60zAWTDCtGRjbK2d1fNzbVWbhq9UWAuHRvsX4WChp5VQ8jwpY7n9fS
 bB8/OtMKM5qhCOvpxUhF8sZnEsW6DIapceDTJ2oDZcm3hOsmsvZlga5LHPW+sLrOlx3B84hiuBA
 TEpQUQuFDn0s35OBzM5+bmJ6ulwKmR8FHYrrfXqhZa03OB4qxvA/DjPZo4i4IQP3kQaLms/+CPE
 lmgpzPpay7ZjF5yzzveapI3351QDcavZvSi+Hk/XTCwspAPHrhes9snRpETgItD+6RejUcHvlaa
 tpPI9oaPa7uFGGd2v4NxIER26Omo2o7DuBWDv0sv3w1jbTCidA0Hl1aepBfh8xS62SJj15QNA9e
 IUsw9trEpZKYf8EcLaQ==
X-Authority-Analysis: v=2.4 cv=f4p4wuyM c=1 sm=1 tr=0 ts=6a20b2a4 cx=c_pps
 a=7uPEO8VhqeOX8vTJ3z8K6Q==:117 a=xqWC_Br6kY4A:10 a=IkcTkHD0fZMA:10
 a=FelO9ux0wxsA:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=u7WPNUs3qKkmUXheDGA7:22 a=Um2Pa8k9VHT-vaBCBUpS:22 a=cTwmTnRGAAAA:8
 a=q7v_v86hoVCxAHImI00A:9 a=3ZKOabzyN94A:10 a=QEXdDO2ut3YA:10
 a=EXS-LbY8YePsIyqnH6vw:22 a=GUWCSGlMWfG-xDt5EnV5:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.125,FMLib:17.12.100.49
 definitions=2026-06-03_06,2026-05-28_03,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 spamscore=0 suspectscore=0 phishscore=0 bulkscore=0 clxscore=1015
 adultscore=0 priorityscore=1501 impostorscore=0 malwarescore=0
 lowpriorityscore=0 classifier=typeunknown authscore=0 authtc= authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.22.0-2605210000
 definitions=main-2606030225
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260603_160301_376244_BDC144EB 
X-CRM114-Status: GOOD (  30.60  )
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

T24gV2VkLCBKdW4gMDMsIDIwMjYgYXQgMDY6MDk6MThQTSArMDIwMCwgbWVAaGVycmllLm9yZyB3
cm90ZToKPiBPbiAyMDI2LTA2LTAzIDE1OjU3LCBEbWl0cnkgQmFyeXNoa292IHdyb3RlOgo+ID4g
T24gV2VkLCBKdW4gMDMsIDIwMjYgYXQgMDc6NDg6MDhBTSArMDIwMCwgSGVybWFuIHZhbiBIYXpl
bmRvbmsgd3JvdGU6Cj4gPiA+IEFkZCBhbiBvcHRpb25hbCAicWNvbSx2ZW5kb3ItaW5pdC1zZXEi
IHByb3BlcnR5IGNhcnJ5aW5nIHJhdyBVTFBJCj4gPiA+IChhZGRyZXNzLCB2YWx1ZSkgcGFpcnMg
dGhhdCBhcmUgd3JpdHRlbiBhZnRlciBQSFkgcmVzZXQuCj4gPiA+IAo+ID4gPiBVbmxpa2UgdGhl
IGV4aXN0aW5nICJxY29tLGluaXQtc2VxIiBwcm9wZXJ0eSwgdGhlIGFkZHJlc3MgZmllbGQgaXMK
PiA+ID4gTk9UIG9mZnNldCBieSBVTFBJX0VYVF9WRU5ET1JfU1BFQ0lGSUMsIHNvIHRoZSBuZXcg
cHJvcGVydHkgY2FuCj4gPiA+IHJlYWNoIHRoZSBzdGFuZGFyZCBVTFBJIHZlbmRvciByZWdpc3Rl
ciByYW5nZSAoMHgzMC0weDNmKS4gTVNNOHg2MC0KPiA+ID4gY2xhc3MgaGFyZHdhcmUgbmVlZHMg
dGhpcyByYW5nZSB0byBwcm9ncmFtbWUgcHJlLWVtcGhhc2lzLCBIUyBkcml2ZXIKPiA+ID4gc2xv
cGUgYW5kIENEUiBhdXRvLXJlc2V0IGJpdHMgdGhlIGxlZ2FjeSBtc21fb3RnIGRyaXZlciB1c2Vk
IHRvIHNldAo+ID4gPiB2aWEgcGxhdGZvcm0gZGF0YS4KPiA+IAo+ID4gQXJlIHRob3NlIHJlZ2lz
dGVyIHdyaXRlcyBzcGVjaWZpYyB0byB0aGUgZGV2aWNlIG9yIHRvIHRoZSB3aG9sZQo+ID4gcGxh
dGZvcm0/IEluIHRoZSBsYXR0ZXIgY2FzZSBwbGVhc2UgZXh0ZW5kIHRoZSBkcml2ZXIgdG8gd3Jp
dGUgdGhlbS4KPiAKPiBMb29raW5nIGF0IGV2ZXJ5IE1TTTh4NjAgcmVmZXJlbmNlIGtlcm5lbCBJ
IGNvdWxkIGZpbmQgKFF1YWxjb21tJ3Mgb3duCj4gbXNtOHg2MCBib2FyZCwgSFAgVG91Y2hQYWQg
LyBBUFE4MDYwLCBhbmQgc29tZSBIVEMvU2F1bXN1bmcgTVNNODY2MAo+IGRldmljZXMpLCB0aGUg
d3JpdGVzIHNwbGl0IGludG8gdHdvIGdyb3VwczoKPiAKPiBQbGF0Zm9ybS1sZXZlbCAoc2FtZSBh
Y3Jvc3MgYWxsIE1TTTh4NjAgaGFyZHdhcmUpOgo+ICAtIHJlZyAweDM2IGJpdHMgMSsyOiBDRFIg
YXV0by1yZXNldCBkaXNhYmxlZCwgU0UxIGdhdGluZyBkaXNhYmxlZAo+ICAtIHJlZyAweDMyIGJp
dHMgWzU6NF06IHByZS1lbXBoYXNpcyBhdCAyMCUKPiAKPiBCb2FyZC1zcGVjaWZpYzoKPiAgLSBy
ZWcgMHgzMiBiaXRzIFszOjBdOiBIUyBkcml2ZXIgc2xvcGUg4oCUIEhQIFRvdWNoUGFkIHVzZXMg
NSwgSFRDCj4gICAgZGV2aWNlcyB1c2UgMS4gVGhpcyBjbGVhcmx5IGRlcGVuZHMgb24gYm9hcmQg
bGF5b3V0ICh0cmFjZSBsZW5ndGgsCj4gICAgY29ubmVjdG9yIGxvYWRpbmcsIGV0Yy4pLgo+IAo+
IFNvIHRoZSBwbGF0Zm9ybS1sZXZlbCB3cml0ZXMgc2hvdWxkIG1vdmUgdW5jb25kaXRpb25hbGx5
IGludG8gdGhlIGRyaXZlcgo+IGJlaGluZCBhIG1hdGNoLWRhdGEgZmxhZyBmb3IgdGhlIE1TTTh4
NjAtY2xhc3MgY29tcGF0aWJsZSwgYW5kIG9ubHkgdGhlCj4gSFMgZHJpdmVyIHNsb3BlIHZhbHVl
IGJlbG9uZ3MgaW4gRFQuCgpMb29rcyBsaWtlIGl0LiBQbGVhc2UgaGFyZGNvZGUgdGhlIHZhbHVl
IGZvciB5b3VyIHBsYXRmb3JtIGluIHRoZSBkcml2ZXIKKHdpdGggdGhlIGNvbW1lbnQpLCBtZWFu
d2hpbGUgd2UgY2FuIHRyeSBsb29raW5nIHVwIHRoZSBhY3R1YWwgdmFsdWVzLgoKPiAKPiA+IElm
IHlvdSBoYXZlIHF1ZXN0aW9ucyByZWdhcmRpbmcgYW55IG9mIHRoZSBiaXRmaWVsZHMsIHBsZWFz
ZSBhc2sgaGVyZSwKPiA+IHdlIGNhbiB0cnkgZmluZGluZyB0aGUgZGF0YSBmb3IgdGhvc2UuCj4g
Cj4gT25lIHRoaW5nIEkgaGF2ZW4ndCBiZWVuIGFibGUgdG8gbmFpbCBkb3duOiBldmVyeSBIVEMg
TVNNODY2MCBib2FyZCBhbHNvCj4gd3JpdGVzIDB4MEMgKGJpdHMgMiBhbmQgMykgdG8gVUxQSSBy
ZWdpc3RlciAweDMxIHZpYSBwaHlfaW5pdF9zZXEsIGJ1dAo+IHRoZSBIUCBUb3VjaFBhZCB3ZWJP
UyBrZXJuZWwgbmV2ZXIgc2V0cyB0aGF0IHJlZ2lzdGVyIHRocm91Z2ggaXRzIG5hbWVkCj4gcGxh
dGZvcm0gZmllbGRzIOKAlCBhbmQgVVNCIHdvcmtzIGZpbmUgb24gdGhlIFRvdWNoUGFkIHdpdGhv
dXQgaXQuIERvIHlvdQo+IGtub3cgd2hhdCB0aG9zZSB0d28gYml0cyBpbiAweDMxIGNvbnRyb2w/
IElmIHRoZXkgYXJlIG5lZWRlZCBvbiBDSSA0NW5tCj4gUEhZIHNpbGljb24gYnV0IG5vdCBvbiB0
aGUgQVBRODA2MCBQSFkgdmFyaWFudCwgSSBzaG91bGQgcHJvYmFibHkgbGVhdmUKPiB0aGVtIG91
dCBvZiB0aGUgZHJpdmVyIGFuZCBub3RlIHdoeS4KPiAKPiBJIGRvbid0IGhhdmUgYW55IHRlY2hu
aWNhbCBkb2N1bWVudGF0aW9uIGZvciB0aGUgUzMgU29DIGZhbWlseSwgZXhjZXB0IGZvcgo+IHRo
ZSBsZWdhY3kga2VybmVscyAoSFAsIFNhbXN1bmcsIEhUQykgYW5kIGEgYnVuY2ggb2YgdmFyaW91
cyBIUCBUb3VjaFBhZAo+IHZhcmlhbnRzLgoKQWdhaW4sIHBsZWFzZSB1c2UgdGhlIHZhbHVlIGZv
ciB5b3VyIGN1cnJlbnQgcGxhdGZvcm0sIGFkZCBhIG5vdGUgdG8gdGhlCmNvbW1pdCBtZXNzYWdl
IGFuZCB0byB0aGUgY29kZS4KCgotLSAKV2l0aCBiZXN0IHdpc2hlcwpEbWl0cnkKCi0tIApsaW51
eC1waHkgbWFpbGluZyBsaXN0CmxpbnV4LXBoeUBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHBzOi8v
bGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXBoeQo=
