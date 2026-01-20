Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 2E7B0D2ECF7
	for <linux-phy@archiver.kernel.org>; Tue, 20 Jan 2026 09:28:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=I6wmrwUDv7KPaNxLorDzJ4UDXiRFNzjrHW3tIizLphw=; b=eo/E8XdyC7cqY6
	XbTrWzn3tZpGDlYQsLFcakWNEfR1toTyoLZPFcYrZeMvYxACp1MR6kKpr3ZUt8PR4VJJ/twenpdIE
	Q9EUrraRdyW/6CGIH65YywllWkrhMmSR2UcWZ9cYgb1lrUggBavJ3GsqWaGEeiVkxPDnd3GvgXtv9
	bzdYLEzXoIkMACQnqsC5sGk9aU/fvFpvg1h4DEOUqIRBQEpN+qYuEkmh8sCGYzmzCyFqJcW65nhPW
	e2+IR5CDrBaKj7xbMTtbcXorz0UjiJtCLQthdCgcH0rhui9/lGT67mgJdQQOed6Md/trcqzLVvdcA
	zWgARXhfR1vp44PwguJA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vi82L-00000003X6Q-3e2E;
	Tue, 20 Jan 2026 09:28:33 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vi82K-00000003X66-009y
	for linux-phy@bombadil.infradead.org;
	Tue, 20 Jan 2026 09:28:32 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=In-Reply-To:Content-Transfer-Encoding:
	Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:
	Sender:Reply-To:Content-ID:Content-Description;
	bh=LDuluuRcOj3oAhAhMzTa0gmYjYkM3opUPACJ58+MEtE=; b=CJUKey10lOjSQBKS31Al++GcHf
	9fGw62rgFqVkr2MO3tiRFeRshWic4IZipe0YhILiRyPvEuRkY8njcK+nikzoJ2tgtm5LPSLHqlN/m
	QDE/ZaCIdRa16rc6u9v92UR2GvS7MJGzTW0Kio5oLzcVGqFdW9g1M8ucZZ8NpUrkkBUltNdQR0ncO
	bcTH8b5DiHB4+Tk5OuiSbJMo+jZLqVZzaXpnGyuHf1QHZbPiXG2gIVVlctgaT8zW2DOZosDuAPDFf
	mRnZjm9B3HxZcftNLb/e2J1GuItrIgEEijwTGanvDhbHjXm/aSz3QBVJ32A5VuJjUxLkeCdeV3WPG
	NjTnmztQ==;
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by desiato.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vi82G-0000000DhYJ-2ewL
	for linux-phy@lists.infradead.org;
	Tue, 20 Jan 2026 09:28:30 +0000
Received: from pps.filterd (m0279862.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 60K33Gif3805028
	for <linux-phy@lists.infradead.org>; Tue, 20 Jan 2026 09:28:24 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	LDuluuRcOj3oAhAhMzTa0gmYjYkM3opUPACJ58+MEtE=; b=Pu1b26T5tSG6utZ2
	TaoC6xael9Gy22SPMpmzawqJx+4/39VDfJHLYvSLMAQrSagsK4Pblp0WGz4aiNGl
	+DgxtKBDcL42TK0WFMIcxiXxW4bOcu+q+1aqE6ExVzzc5MxMYpl00CqRWJ3wOJoa
	GoVpmDDxISgc0MFeVzYVPWOZ46CglGgnQTZo4u3vtW+uqsJPAZYCHrg80uBYOWl6
	KXfv6G+yRDDe7PH7i7DdGdgGouYtQbjfbeDioAN0IO3GKVUBB2DCMxqXD38wVUqQ
	wTf3DyWZEiApifjFg3qJUVIr/rgxpLBYMbzntJ/PAj0Hzc4/MpYfzW3E4uLIfMLL
	qIL4/g==
Received: from mail-qv1-f71.google.com (mail-qv1-f71.google.com [209.85.219.71])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4bt1f8923c-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Tue, 20 Jan 2026 09:28:23 +0000 (GMT)
Received: by mail-qv1-f71.google.com with SMTP id 6a1803df08f44-88888397482so132643646d6.1
        for <linux-phy@lists.infradead.org>; Tue, 20 Jan 2026 01:28:23 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1768901302; x=1769506102; darn=lists.infradead.org;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:from:to
         :cc:subject:date:message-id:reply-to;
        bh=LDuluuRcOj3oAhAhMzTa0gmYjYkM3opUPACJ58+MEtE=;
        b=EbZjpzldujx6T6ToIIyry3kV3Lzjl6JNUS+XxKQTUXENpQw8nAgfklA1qnaRnWGzPT
         rwmCJRiIX+J6UwGEb508omH0+PYL4oOrnuHiVKJWD77QAWIafraJIF+44PKsmt4VyZHQ
         XW8dS8AQd/E/KXsy9mTI/lT1qjZ6hZ2kg664+NUOrhJ90m82J7wAOiZHVs+g3jTbtb1q
         k2c0eS3GjMOe0M9aSTQaKxs2TtWAciw3kNOG9lmFPrl5EShrCWZ0dTExq1ZGEu69Ejpb
         h7DMgbYZmwq2fbPnM5Z9zexG7MIiygUld56hhbwbKWhw+0yTL4rIYj63/VZVkrR09/i1
         VSOg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1768901302; x=1769506102;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=LDuluuRcOj3oAhAhMzTa0gmYjYkM3opUPACJ58+MEtE=;
        b=DaYAjSyEktozvqv8woPXMcO5xDrc7rKOdMysBp+F15gL0BoY+gzwyOs4MaKW8m9pP0
         0/PE159IrkNGExKykE9MzSHZzHZ7I/efKaFaxlaByqWNFJv/D4+RUr1hyploLei8FxXd
         8HzjgBb+UGHwx5V6V2/FNnc5MlULDZVcYEOMKP3ml9xL1RDP/sIJLEk7OcX136ATke/g
         lx/2q3jZuiOhxQqr+j6yEHT3eluen4ifVaQKZY5lYzBpLFQTI0IkK4lXqfRABLP+92cP
         CYaYf0h1yVSwdH8CM5mDP45x+NMsg0hZKGox0U/AacjGvBI9ZyYCd9r3KjVUzgJeAlu4
         5R9g==
X-Forwarded-Encrypted: i=1; AJvYcCVB36/dXpbNA8wsvKnR4DLO40aUrzJzFB4YArKvrjCnJUy3hjOWFfvYT46029WFNmY11d0MdgctW1M=@lists.infradead.org
X-Gm-Message-State: AOJu0YxXW9St1sbTy7mMNI0v1aE5eViFehaKOAhzP7ktMWJomyBajIFD
	oVmhOozM1yzBwDwy7ItxHjO7Mm5yhIJzMwZ3d0UJRL0Vub494OsjvmqAMqNiBuatWSMSmwWcLdl
	jpEioScjCInlULCrmPHkyXoMvEtxAVPV8haHjw7xjG1QZkfDk5YyTffgEp0ikyWqB0qGv
X-Gm-Gg: AZuq6aII3gYv2cihVvVpn0yyBSw0Z/g6e+odA1CQdJMSu91GVhwKnD7A8UY/4abB4x3
	ZzocSit76ZwVjGGpYsO/hK68FEb0w+ihrrkrXAGsQOXe8Ru5+gzVJ+ktCqvIH3cfD4ihBfqLEaD
	gBP9scK/VG5OMGyLqcBTkQs/jdErmP9lERTT8t/651rD5ijEcgbW/SezzSp9DveQo8dEjYQ2nqm
	3e1tPPEqAIQlC8dciT41cJ+XPWn8VKzEqWBSrhVhD1lPlKueM+WqlfW7nGng9DNDzW385G4wXzm
	KnXcNU4BPslgKUkOGbZlLqq2L9pP6JHqD2WmUrDR8vPyUK/7Te6JSBc3xe1+kGETfF666PcV18w
	c2t903IZm+nYtLF5xy9yooPt75poU0wrxKkLH2RiBNsZVIdg4kG1Swm7ymWj9MX+FQfxk7LEi/A
	FPRVEdcofW6zrGqadUUFRCWRw=
X-Received: by 2002:a05:6214:194f:b0:786:8f81:42f with SMTP id 6a1803df08f44-894638dca24mr16257536d6.39.1768901302426;
        Tue, 20 Jan 2026 01:28:22 -0800 (PST)
X-Received: by 2002:a05:6214:194f:b0:786:8f81:42f with SMTP id 6a1803df08f44-894638dca24mr16257396d6.39.1768901301998;
        Tue, 20 Jan 2026 01:28:21 -0800 (PST)
Received: from umbar.lan (2001-14ba-a073-af00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a073:af00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-59bfce7da74sm3120178e87.40.2026.01.20.01.28.20
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 20 Jan 2026 01:28:21 -0800 (PST)
Date: Tue, 20 Jan 2026 11:28:19 +0200
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: Yongxing Mou <yongxing.mou@oss.qualcomm.com>
Cc: Vinod Koul <vkoul@kernel.org>, Neil Armstrong <neil.armstrong@linaro.org>,
        linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
        linux-kernel@vger.kernel.org, stable@vger.kernel.org,
        Abel Vesa <abel.vesa@oss.qualcomm.com>
Subject: Re: [PATCH v2] drm/msm/dp: Correct LeMans/Monaco DP phy
 Swing/Emphasis setting
Message-ID: <bq4usuzu7dl42ruduy4whbgnfamgnmyj7wuyd2oa472qet6tyv@pdku43m6e45x>
References: <20260119-klm_dpphy-v2-1-52252190940b@oss.qualcomm.com>
 <47skckagggxijdhinmmibtrd3dydixtj6pccrgjwyczs7bj2te@2rq2iprmzvyf>
 <749e716e-a6cb-4adb-8ffc-0d6f4c6d56c4@oss.qualcomm.com>
 <5ytgf7saw6yfvqzqmy4gtjygo4cx52vomi7mwswc7hgedzz3rb@eiqxiqs2cjmb>
 <8c63a77c-1676-461a-bfcf-55202e723718@oss.qualcomm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <8c63a77c-1676-461a-bfcf-55202e723718@oss.qualcomm.com>
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMTIwMDA3OCBTYWx0ZWRfXzX78m1KbdugP
 +w06JpNRzar0VT0rhqVkycYHKJXfkOfqTm0ghPMIq36oFEzubFv9VE4ickYw5OH94AgNQdfyr0D
 Z053yyHZ5UrMMpDORcpPwcjTjai6mu8QRfVvmjja+aDxKQhgXzWokmGsDMXkG9UBMwh/WIbaMRs
 i+ECWzsvk/i34Krr4SJx1qz//EWpPP09FKf+TXQbCWGBHAewcGSLLOxVB1VpZBF6t1ljiCTkduF
 YPX6j7W6/9pjA/4B251gUMWX8VBFMxkrx9rRA7L9/gUj2+i449IItj0r/qJ9m2jTI42l5CDWAzJ
 d1iWZNoM+3d1RTx0YjwIeewPPwQdHrwExcHrB2OzaeOqq0DmO3wRRWMud9lLWNFMPrNCIq6Xoil
 4xVHfnkVCS5YctrzvYuIGKI5a2P4mC6yOfcGu48OVAO2XZJ0a9luv6qCl2TIfxJyn+o9w2cttMZ
 yJ3+v/qdpAx2okZjJjg==
X-Proofpoint-GUID: WE37A2TJAhP4NHUfEDQel3CHVbLVe9ri
X-Proofpoint-ORIG-GUID: WE37A2TJAhP4NHUfEDQel3CHVbLVe9ri
X-Authority-Analysis: v=2.4 cv=LdQxKzfi c=1 sm=1 tr=0 ts=696f4ab7 cx=c_pps
 a=UgVkIMxJMSkC9lv97toC5g==:117 a=xqWC_Br6kY4A:10 a=IkcTkHD0fZMA:10
 a=vUbySO9Y5rIA:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=VwQbUJbxAAAA:8 a=EUspDBNiAAAA:8 a=JfrnYn6hAAAA:8 a=SNWZ2FZe9L-OGZU4zVUA:9
 a=3ZKOabzyN94A:10 a=QEXdDO2ut3YA:10 a=1HOtulTD9v-eNWfpl4qZ:22
 a=1CNFftbPRP8L7MoqJWF3:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2026-01-20_02,2026-01-19_03,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 phishscore=0 bulkscore=0 clxscore=1015 impostorscore=0 spamscore=0
 priorityscore=1501 lowpriorityscore=0 adultscore=0 suspectscore=0
 malwarescore=0 classifier=typeunknown authscore=0 authtc= authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.22.0-2601150000
 definitions=main-2601200078
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260120_092829_019890_8543DA54 
X-CRM114-Status: GOOD (  31.29  )
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

T24gVHVlLCBKYW4gMjAsIDIwMjYgYXQgMDM6NTY6MTBQTSArMDgwMCwgWW9uZ3hpbmcgTW91IHdy
b3RlOgo+IAo+IAo+IE9uIDEvMjAvMjAyNiAxMToxMiBBTSwgRG1pdHJ5IEJhcnlzaGtvdiB3cm90
ZToKPiA+IE9uIFR1ZSwgSmFuIDIwLCAyMDI2IGF0IDEwOjQzOjQ2QU0gKzA4MDAsIFlvbmd4aW5n
IE1vdSB3cm90ZToKPiA+ID4gCj4gPiA+IAo+ID4gPiBPbiAxLzE5LzIwMjYgODo1NSBQTSwgRG1p
dHJ5IEJhcnlzaGtvdiB3cm90ZToKPiA+ID4gPiBPbiBNb24sIEphbiAxOSwgMjAyNiBhdCAwODoz
NzoyMFBNICswODAwLCBZb25neGluZyBNb3Ugd3JvdGU6Cj4gPiA+ID4gPiBDdXJyZW50bHksIHRo
ZSBMZU1hbnMvTW9uYWNvIGRldmljZXMgYW5kIHRoZWlyIGRlcml2YXRpdmUgcGxhdGZvcm1zCj4g
PiA+ID4gPiBvcGVyYXRlIGluIERQIG1vZGUgcmF0aGVyIHRoYW4gZURQIG1vZGUuIFBlciB0aGUg
UEhZIEhQRywgdGhlIFN3aW5nIGFuZAo+ID4gPiA+ID4gRW1waGFzaXMgc2V0dGluZ3MgbmVlZCB0
byBiZSBjb3JyZWN0ZWQgdG8gdGhlIHByb3BlciB2YWx1ZXMuCj4gPiA+ID4gCj4gPiA+ID4gTm8s
IHRoZXkgbmVlZCB0byBiZSBjb25maWd1cmVkIGR5bmFtaWNhbGx5LiBJIHdyb3RlIGVhcmxpZXIg
dGhhdCB0aGUKPiA+ID4gPiBkcml2ZXIgbmVlZHMgcmVmYWN0b3JpbmcuCj4gPiA+ID4gCj4gPiA+
IEhpLCBEbWl0cnkuIEkgcGxhbiB0byBzdWJtaXQgdGhlbSBpbiB0aGlzIG9yZGVyOiB0aGlzIHBh
dGNoIOKGkiBMRE8gcGF0Y2gg4oaSCj4gPiA+IHJlZmFjdG9yLgo+ID4gPiBTaW5jZSB0aGUgcmVm
YWN0b3IgaW52b2x2ZXMgbW9yZSBwbGF0Zm9ybXMgYW5kIG1heSB0YWtlIHNvbWUgdGltZSwgSeKA
mWQgbGlrZQo+ID4gPiB0byBnZXQgdGhpcyBwYXRjaCBtZXJnZWQgZmlyc3QuCj4gPiAKPiA+IFRo
aXMgcGF0Y2ggaXMgaW5jb3JyZWN0LiBJdCB0cmFkZXMgd29ya2luZyBvbiBzb21lIHBsYXRmb3Jt
cyAoRFApIHZzCj4gPiB3b3JraW5nIG9mIHNvbWVvIHRoZXIgcGxhdGZvcm1zIChlRFApLiBJIGRv
bid0IHRoaW5rIGl0IGlzIGEgcHJvcGVyIGZpeAo+ID4gZm9yIGFueSBwcm9ibGVtLgo+ID4gCj4g
R290IGl0Li4gd2lsbCBwb3N0IHJlZmFjdG9yIHNlcmllcy4KClRoYW5rcyEgSSBkb24ndCBzZWUg
YSBnb29kIHdheSB0byBmaXggeW91ciBpc3N1ZSB3aXRob3V0IHJlc3RydWN0dXJpbmcKdGhlIGRy
aXZlci4KCk5vdGUsIHRoZSBkcml2ZXIgaGFzIHRvIHN1cHBvcnQgYm90aCBvbGRlciBEVCAod2hp
Y2ggdXNlZCBzZXBhcmF0ZSAtZWRwCmFuZCAtZHAgY29tcGF0cykgYW5kIHRoZSBjdXJyZW50IG9u
ZS4KCj4gPiA+ID4gPiAKPiA+ID4gPiA+IFRoaXMgd2lsbCBoZWxwIGFjaGlldmUgc3VjY2Vzc2Z1
bCBsaW5rIHRyYWluaW5nIG9uIHNvbWUgZG9uZ2xlcy4KPiA+ID4gPiA+IAo+ID4gPiA+ID4gQ2M6
IHN0YWJsZUB2Z2VyLmtlcm5lbC5vcmcKPiA+ID4gPiA+IEZpeGVzOiAzZjEyYmYxNjIxM2MgKCJw
aHk6IHFjb206IGVkcDogQWRkIHN1cHBvcnQgZm9yIGVEUCBQSFkgb24gU0E4Nzc1UCIpCj4gPiA+
ID4gPiBSZXZpZXdlZC1ieTogQWJlbCBWZXNhIDxhYmVsLnZlc2FAb3NzLnF1YWxjb21tLmNvbT4K
PiA+ID4gPiA+IFNpZ25lZC1vZmYtYnk6IFlvbmd4aW5nIE1vdSA8eW9uZ3hpbmcubW91QG9zcy5x
dWFsY29tbS5jb20+Cj4gPiA+ID4gPiAtLS0KPiA+ID4gPiA+IENoYW5nZXMgaW4gdjI6Cj4gPiA+
ID4gPiAtIFNlcGFyYXRlIHRoZSBMRE8gY2hhbmdlIG91dC5bS29ucmFkXVtEbWl0cnldCj4gPiA+
ID4gPiAtIE1vZGlmeSB0aGUgY29tbWl0IG1lc3NhZ2UuW0RtaXRyeV0KPiA+ID4gPiA+IC0gTGlu
ayB0byB2MTogaHR0cHM6Ly9sb3JlLmtlcm5lbC5vcmcvci8yMDI2MDEwOS1rbG1fZHBwaHktdjEt
MS1hNmI2YWJlMzgyZGVAb3NzLnF1YWxjb21tLmNvbQo+ID4gPiA+ID4gLS0tCj4gPiA+ID4gPiAg
ICBkcml2ZXJzL3BoeS9xdWFsY29tbS9waHktcWNvbS1lZHAuYyB8IDIzICsrKysrKysrKysrKysr
KysrKysrKystCj4gPiA+ID4gPiAgICAxIGZpbGUgY2hhbmdlZCwgMjIgaW5zZXJ0aW9ucygrKSwg
MSBkZWxldGlvbigtKQo+ID4gPiA+ID4gCj4gPiA+ID4gCj4gPiA+IAo+ID4gPiAKPiA+ID4gLS0g
Cj4gPiA+IGxpbnV4LXBoeSBtYWlsaW5nIGxpc3QKPiA+ID4gbGludXgtcGh5QGxpc3RzLmluZnJh
ZGVhZC5vcmcKPiA+ID4gaHR0cHM6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGlu
Zm8vbGludXgtcGh5Cj4gPiAKPiAKCi0tIApXaXRoIGJlc3Qgd2lzaGVzCkRtaXRyeQoKLS0gCmxp
bnV4LXBoeSBtYWlsaW5nIGxpc3QKbGludXgtcGh5QGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cHM6
Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtcGh5Cg==
