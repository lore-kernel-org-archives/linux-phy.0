Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id EC4E9C43458
	for <linux-phy@archiver.kernel.org>; Fri,  3 Jul 2026 15:32:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=1iGAMms7S1WKXD7zllZJi1h9wGG3Dt/LwnRn/OVzySU=; b=BV7i2eXmLFvCIy
	ndTI5MjZERfeYADmBcRtPsT/2T4dOkW9UhD0+ld4aG7Rr0DY1u10cwaE3ylcvBNHc/5P1b7rbXT+b
	jZtBqpuOAji1cZzcs/Q5/9zgJOZPdMjwIWDbZqudyXl5nE8RvHUTs88NoLRO9vtOrBn32DcdKwD47
	eaUcaM9EzFw1hPJisNBegMCHizQlrDQuFOGubfXgMJrdFOGwYZxuinLgThs0oHYt1pJZ83EE9/SmD
	WHWr8P4skAKQU6HsK+FkXIWGEmtl1D6XgIyaSnTA2ufs46Yw5eC7muGUqS+0W4wU6B3cZsckNv5LW
	UkzxJWo4NHjcpLz/ZWAw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wffsJ-00000007Phc-33c8;
	Fri, 03 Jul 2026 15:32:19 +0000
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wffsG-00000007Pgo-1nd9
	for linux-phy@lists.infradead.org;
	Fri, 03 Jul 2026 15:32:17 +0000
Received: from pps.filterd (m0279868.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 663D1DNP054108
	for <linux-phy@lists.infradead.org>; Fri, 3 Jul 2026 15:32:15 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	U7M4A5A2q632Eb9taEhCM1j2UptjxaJBaXty1useesM=; b=PvuuOkQ9jArDku98
	wI9EVQqMPtbkUAZlu34MQpj0+knqxy5mndEPC3FBq6dg0O0KfNo3YnW79t8Yojb4
	gVXee8ejfgDZ5iheGvhnMpGGSvRKHai8Q+4fTYBiF/pPNbmrVCIeGl/Bxe4nuGsm
	vJASGILm2isKIXB8Ets7LxlXzg8kERTLOx3Ca65IQzO/vqjDpQvhcuThnadQl0X6
	XbxkuttmZrhQQk7qctiwyRQA++zZqe+Y1AJOsXYwB+qZ/kNQYhoOz6CwhFueZoHY
	Frf4HKEzw1LYoJg1cllFhkacdjmpWs9sIkIvp9nplCWBuHD06BYhz8uVavRWayaq
	B6BikA==
Received: from mail-oi1-f198.google.com (mail-oi1-f198.google.com [209.85.167.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4f6dkkgg83-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Fri, 03 Jul 2026 15:32:15 +0000 (GMT)
Received: by mail-oi1-f198.google.com with SMTP id 5614622812f47-48f680bda84so608098b6e.1
        for <linux-phy@lists.infradead.org>; Fri, 03 Jul 2026 08:32:15 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1783092734; x=1783697534; darn=lists.infradead.org;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :content-type:mime-version:references:message-id:subject:cc:to:from
         :date:from:to:cc:subject:date:message-id:reply-to:content-type;
        bh=U7M4A5A2q632Eb9taEhCM1j2UptjxaJBaXty1useesM=;
        b=K55OU5EJ/Ojt3iMl53hzxW/pLj9IVQ8W+lGsbJeae0Shy+4hCk992JbmB8KyriAypw
         RBg4K9tSKoLwb02bBpOLJeFD2QR/j+i836ozp20OT5qWqd8t2Fk1d5UVsumRGJ9ylpnz
         kUtrWKrh+J+hEvTecwY8qEvbbg6sCmq03zFHpRilFHjQnOlMHf8kWDMQsTjkuUY9hbFU
         As5PbgfUirNfUSi2Q1RACaPiz0hxl1A95MaucFM0enc4jv/gVWuQ5aXxQQDx1LsEryxS
         CYOLXWf82tq1rQAf19Y/5DOAFhR2Jq1w11Z/GydThTXdUSsE//Uu7mjVdofUzRMzHpg8
         PvmA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1783092734; x=1783697534;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :content-type:mime-version:references:message-id:subject:cc:to:from
         :date:x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to:content-type;
        bh=U7M4A5A2q632Eb9taEhCM1j2UptjxaJBaXty1useesM=;
        b=gXH3343RxGwOLwDKtO+C1vndHQuVHA21X+86HaN+nnRa0ybCPlhCUIL0uBAeLNnTZ4
         IY+ykUu5PqsMnLUerQbgGWfz1rT6SkyCLGNy8w7cM5sL1hl/hLxy/iz8OxwPS/O6b3bO
         sMaDgNtUcz20lkT66xllfCiQu/6VR9otxS+m9tUZbaAiA/X9S8stkSqBVC4nh3ZvFqei
         x47nzb9Mze/AWN30l/ncuofajSOptoXl4ZlvTt6ZP79NFMjtZelURnNluLd9knvXIt56
         ttYo7GiUFZkByAq5L6FVyudQHIQN5y3fGooJ7FD4HXD0MhFxlksNCsI344uzrU6W/4Hh
         A0Gw==
X-Forwarded-Encrypted: i=1; AFNElJ/h2R+lEikWNcH07x+KnLpjZv5XBglnW4MS2e5gd96MqZDlFSaW0dfnKcB9teq3e1yoy29JI2fvcWo=@lists.infradead.org
X-Gm-Message-State: AOJu0YyOeLcKlMjBqBoZi0iG7P8CNnX8SKLX2SeinNoykOsL6cn7KfuV
	QksEiXky4lwWpuPCQTpVeULcYBwB0CCJl5AdkNX8aYcIfi9MZcbC+QQ6/A58O9IvT7CTLDG4RuF
	gs0OWeWMK0siTwlzl9TvLvpZygwIKLZVANK3HPZLo8GadDhUbwwA6OnVm9jAGp2Ig2QTG
X-Gm-Gg: AfdE7cmb2GhFiGr2finjfkrk3W5aufpdRjrJ6A9/cwRc3BoWYJL5jCKkQM6EzuFwcdZ
	ItZGejM1mWizzCVMbBSM/9TJodE4/Z9TB9AOeDdrSsr2yyPYxcNmSv4r0Myv92DaIn7iXoin+zj
	cPWGDxaqL4Vx6krlaJTjZQcqAFVXHXxbO3e28K8xuYqt3xwqjxtNVC+SMqC8bFFBDIPBcz9a7VD
	odadJbVM1akMpZ45HS8TbGWZufy27ptH93q8bghgLWLktAFF0KwLMBIsIAth6HbVNf7ylFixLvV
	PW9IBCdnbeoAx4CvHwP8/CR9kYEy0fGTul++vQdiclRW+7vutj4hdMUKu1ygJjNJ1VVx0L2ZgjK
	eTfIWxkluRB/veSjdw2TvSIIC40DJ68RR+yiLvOPvSVoi8d0K/hetIgVxBG+ob9dEY2rFmvzfRI
	8vTF5EnbJPqRrx5ZBFf+iKh6uP
X-Received: by 2002:a05:6808:8412:b0:497:8ca:a8fc with SMTP id 5614622812f47-49708cab015mr5568041b6e.19.1783092734563;
        Fri, 03 Jul 2026 08:32:14 -0700 (PDT)
X-Received: by 2002:a05:6808:8412:b0:497:8ca:a8fc with SMTP id 5614622812f47-49708cab015mr5568021b6e.19.1783092734107;
        Fri, 03 Jul 2026 08:32:14 -0700 (PDT)
Received: from umbar.lan (2001-14ba-a073-af00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a073:af00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 38308e7fff4ca-39b4ae59a10sm3852541fa.33.2026.07.03.08.32.12
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 03 Jul 2026 08:32:12 -0700 (PDT)
Date: Fri, 3 Jul 2026 18:32:10 +0300
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: Rakesh Kota <rakesh.kota@oss.qualcomm.com>
Cc: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>,
        Kamal Wadhwa <kamal.wadhwa@oss.qualcomm.com>,
        linux-arm-msm <linux-arm-msm@vger.kernel.org>,
        sashiko-reviews@lists.linux.dev,
        Komal Bajaj <komal.bajaj@oss.qualcomm.com>, robh@kernel.org,
        linux-phy@lists.infradead.org, neil.armstrong@linaro.org,
        vkoul@kernel.org, olteanv@gmail.com, krzk+dt@kernel.org,
        conor+dt@kernel.org, devicetree@vger.kernel.org,
        Jishnu Prakash <jishnu.prakash@oss.qualcomm.com>
Subject: Re: [PATCH 3/4] arm64: dts: qcom: Add Shikra CQM SoM platform
Message-ID: <fku5jad6op5upobwvrphbqteg76zukbovsifzarizz4m3ofuka@gdpaxzzuraee>
References: <0ac665bb-1a21-4077-aa9e-97162f7f4784@oss.qualcomm.com>
 <20260514103918.cs5m5kcxcrcgukvx@hu-kamalw-hyd.qualcomm.com>
 <obdxony34ckfbtsqj66siszw44sgieskcye5hg66ulkisctpwl@fyqczpze5tnw>
 <20260518114927.edxbzvklqatlntv2@hu-kamalw-hyd.qualcomm.com>
 <CAO9ioeVMieo8HtpRw+n4ZU9uV-_RQM061q5XfAA1Dtk2fnp4+g@mail.gmail.com>
 <bvankzuazswuigrm7hvyjqigzfaru5o43wi3zvyphgme2pgqwz@pyspqky3u6cn>
 <5idu4ljmcvcvzqsr5g73h2roxzs36l6xxc5ju6ovc5aitt3gx4@wmfqueyf2rj6>
 <20260630124220.4lja4zshpf66kwj3@hu-kotarake-hyd.qualcomm.com>
 <33c74e59-076a-4877-9e62-83a8ebbf2d54@oss.qualcomm.com>
 <20260703093035.q5xgljuigpt6zqt6@hu-kotarake-hyd.qualcomm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20260703093035.q5xgljuigpt6zqt6@hu-kotarake-hyd.qualcomm.com>
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwNzAzMDE1MiBTYWx0ZWRfX9uESJ2nsho0o
 wplA5uFk3uu0lVYfWbT0dYSx+E7MElnj4kanO9lWqfSmWjh2EbWGxyruGcSoTlRXRCLEGet/ZVl
 gULY3kXYx75qFmjQF77N95sDkEyeqXNUDKvN1qaj4sMrlGxGlATGcB4LucI98tLE4MOzeqmuVyN
 JITVJl32ImN2//HkWyOA/qAnBTpNC32a+lyMdaL/7MWGKSWtqgpOPRVU2EieS8KBHifQApaQWIy
 ekDcBSeZrgtRdUOPQoCgjRXxV9gDlYiixXqgH6/1zAOol5zbGM8YKNBE/JL2aHVl4xa0OFxym0J
 MhaHoZDMxAETFLanY/ck15mMHlkjjqcV8sIuvppgmV4zu+ycmTu7N1SbZ9GlOCcRFCgV8l7SoXa
 odXsf5Y4oiGe2dKC8fWhKUPCl3qLEEkW4PRl59ZIP7zKo1sL7gm+SSMMPecBGsFNF4lgMAhOX5V
 Zeu+zChhR9huJ5H0wtA==
X-Authority-Analysis: v=2.4 cv=LeUMLDfi c=1 sm=1 tr=0 ts=6a47d5ff cx=c_pps
 a=4ztaESFFfuz8Af0l9swBwA==:117 a=xqWC_Br6kY4A:10 a=IkcTkHD0fZMA:10
 a=RAioF0-LDSMA:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=u7WPNUs3qKkmUXheDGA7:22 a=ZpdpYltYx_vBUK5n70dp:22 a=VwQbUJbxAAAA:8
 a=EUspDBNiAAAA:8 a=eBmASph2dt7FLklNJeEA:9 a=3ZKOabzyN94A:10 a=QEXdDO2ut3YA:10
 a=TPnrazJqx2CeVZ-ItzZ-:22
X-Proofpoint-ORIG-GUID: ISqsNCgfdhBup0fL3Z9NCa0Aq0gKIB7I
X-Proofpoint-Spam-Info: AW1haW4tMjYwNzAzMDE1MiBTYWx0ZWRfX3WE8hrPnujx6
 YqdQ+6uB6s5DX70VIXE0KUCzK5fgk5kPLh8rRnn/svReX9V6Rf7hzMY59BSSSdrWR/Qix+hvf92
 CZRIYny5sCn7DhIGOjn0/OQcPSD8Txs=
X-Proofpoint-GUID: ISqsNCgfdhBup0fL3Z9NCa0Aq0gKIB7I
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.125,FMLib:17.12.100.49
 definitions=2026-07-03_02,2026-06-26_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 spamscore=0 phishscore=0 adultscore=0 malwarescore=0 lowpriorityscore=0
 suspectscore=0 bulkscore=0 impostorscore=0 priorityscore=1501 clxscore=1015
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2606150000 definitions=main-2607030152
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260703_083216_583052_A66174F0 
X-CRM114-Status: GOOD (  46.59  )
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

T24gRnJpLCBKdWwgMDMsIDIwMjYgYXQgMDM6MDA6MzVQTSArMDUzMCwgUmFrZXNoIEtvdGEgd3Jv
dGU6Cj4gT24gVHVlLCBKdW4gMzAsIDIwMjYgYXQgMDM6NTA6MTZQTSArMDIwMCwgS29ucmFkIER5
YmNpbyB3cm90ZToKPiA+IE9uIDYvMzAvMjYgMjo0MiBQTSwgUmFrZXNoIEtvdGEgd3JvdGU6Cj4g
PiA+IE9uIFN1biwgSnVuIDI4LCAyMDI2IGF0IDAzOjMzOjIzUE0gKzAzMDAsIERtaXRyeSBCYXJ5
c2hrb3Ygd3JvdGU6Cj4gPiA+PiBPbiBUaHUsIEp1biAyNSwgMjAyNiBhdCAwOToxMToxOVBNICsw
NTMwLCBLYW1hbCBXYWRod2Egd3JvdGU6Cj4gPiA+Pj4gT24gV2VkLCBKdW4gMTcsIDIwMjYgYXQg
MDM6NDg6MTRQTSArMDMwMCwgRG1pdHJ5IEJhcnlzaGtvdiB3cm90ZToKPiA+ID4+Pj4gT24gTW9u
LCAxOCBNYXkgMjAyNiBhdCAxNDo0OSwgS2FtYWwgV2FkaHdhCj4gPiA+Pj4+IDxrYW1hbC53YWRo
d2FAb3NzLnF1YWxjb21tLmNvbT4gd3JvdGU6Cj4gPiA+Pj4+Pgo+ID4gPj4+Pj4gT24gU3VuLCBN
YXkgMTcsIDIwMjYgYXQgMDg6MTg6MTVQTSArMDMwMCwgRG1pdHJ5IEJhcnlzaGtvdiB3cm90ZToK
PiA+ID4+Pj4+PiBPbiBUaHUsIE1heSAxNCwgMjAyNiBhdCAwNDowOToxOFBNICswNTMwLCBLYW1h
bCBXYWRod2Egd3JvdGU6Cj4gPiA+Pj4+Pj4+IE9uIFdlZCwgTWF5IDEzLCAyMDI2IGF0IDA2OjE0
OjIwUE0gKzAzMDAsIERtaXRyeSBCYXJ5c2hrb3Ygd3JvdGU6Cj4gPiA+Pj4+Pj4+PiBPbiAxMy8w
NS8yMDI2IDE3OjI5LCBSYWtlc2ggS290YSB3cm90ZToKPiA+ID4+Pj4+Pj4+PiBPbiBXZWQsIE1h
eSAxMywgMjAyNiBhdCAwMzowMTo0N1BNICswMzAwLCBEbWl0cnkgQmFyeXNoa292IHdyb3RlOgo+
ID4gPj4+Pj4+Pj4+PiBPbiBXZWQsIE1heSAxMywgMjAyNiBhdCAwNDoyODozNUFNICswMDAwLCBz
YXNoaWtvLWJvdEBrZXJuZWwub3JnIHdyb3RlOgo+ID4gPj4+Pj4+Pj4+Pj4gVGhhbmsgeW91IGZv
ciB5b3VyIGNvbnRyaWJ1dGlvbiEgU2FzaGlrbyBBSSByZXZpZXcgZm91bmQgMiBwb3RlbnRpYWwg
aXNzdWUocykgdG8gY29uc2lkZXI6Cj4gPiA+Pj4+Pj4+Pj4+PiAtIFtIaWdoXSBUaGUgUE1JQyBy
ZWd1bGF0b3IgZGVmaW5pdGlvbnMgb21pdCB0aGVpciByZXF1aXJlZCBpbnB1dCBzdXBwbHkgZGVw
ZW5kZW5jaWVzIChlLmcuLCBgdmRkX3MyLXN1cHBseWAsIGB2ZGRfbDMtc3VwcGx5YCksIGJyZWFr
aW5nIHRoZSBwb3dlciBoaWVyYXJjaHkuCj4gPiA+Pj4+Pj4+Pj4+PiAtIFtNZWRpdW1dIFRoZSBk
ZXZpY2UgdHJlZSBpbmFjY3VyYXRlbHkgaGFyZGNvZGVzIHRoZSBgY29tcGF0aWJsZWAgc3RyaW5n
IHRvIGEgZGlmZmVyZW50IFBNSUMgbW9kZWwgKGBxY29tLHJwbS1wbTIyNTAtcmVndWxhdG9yc2Ap
IGluc3RlYWQgb2YgZXhwbGljaXRseSBpZGVudGlmeWluZyB0aGUgYWN0dWFsIGhhcmR3YXJlIChQ
TTQxMjUpLgo+ID4gPj4+Pj4+Pj4+Pj4gLS0KPiA+ID4+Pj4+Pj4+Pj4+PiArCj4gPiA+Pj4+Pj4+
Pj4+Pj4gKyAgICAgICAgIHBtNDEyNV9zMjogczIgewo+ID4gPj4+Pj4+Pj4+Pj4+ICsgICAgICAg
ICAgICAgICAgIHJlZ3VsYXRvci1taW4tbWljcm92b2x0ID0gPDEwMDAwMDA+Owo+ID4gPj4+Pj4+
Pj4+Pj4+ICsgICAgICAgICAgICAgICAgIHJlZ3VsYXRvci1tYXgtbWljcm92b2x0ID0gPDEyMDAw
MDA+Owo+ID4gPj4+Pj4+Pj4+Pj4+ICsgICAgICAgICB9Owo+ID4gPj4+Pj4+Pj4+Pj4KPiA+ID4+
Pj4+Pj4+Pj4+IERvIHRoZXNlIHJlZ3VsYXRvcnMgbmVlZCB0byBleHBsaWNpdGx5IGRlZmluZSB0
aGVpciBpbnB1dCBzdXBwbHkgZGVwZW5kZW5jaWVzCj4gPiA+Pj4+Pj4+Pj4+PiBzdWNoIGFzIHZk
ZF9zMi1zdXBwbHk/Cj4gPiA+Pj4+Pj4+Pj4+Pgo+ID4gPj4+Pj4+Pj4+Pj4gV2l0aG91dCB0aGVz
ZSBwcm9wZXJ0aWVzLCB0aGUgcmVndWxhdG9yIGZyYW1ld29yayBtaWdodCBiZSB1bmF3YXJlIHRo
YXQgdGhlCj4gPiA+Pj4+Pj4+Pj4+PiBQTUlDIHJlZ3VsYXRvcnMgZHJhdyBwb3dlciBmcm9tIHVw
c3RyZWFtIHN1cHBsaWVzLgo+ID4gPj4+Pj4+Pj4+Pj4KPiA+ID4+Pj4+Pj4+Pj4+IElmIHRoZSBr
ZXJuZWwgZHluYW1pY2FsbHkgbWFuYWdlcyB0aGUgdXBzdHJlYW0gc3VwcGx5IGFuZCBpdHMgcmVm
ZXJlbmNlIGNvdW50Cj4gPiA+Pj4+Pj4+Pj4+PiBkcm9wcyB0byB6ZXJvLCBjb3VsZCBpdCBiZSBk
aXNhYmxlZCwgY2F1c2luZyBhbiB1bmV4cGVjdGVkIHBvd2VyIGxvc3MgZm9yCj4gPiA+Pj4+Pj4+
Pj4+PiBkb3duc3RyZWFtIGNvbXBvbmVudHM/Cj4gPiA+Pj4+Pj4+Pj4+Cj4gPiA+Pj4+Pj4+Pj4+
IEFuZCB0aGlzIGlzIGEgY29ycmVjdCBjb21tZW50LiBQbGVhc2UgcHJvdmlkZSBtaXNzaW5nIHN1
cHBsaWVzLgo+ID4gPj4+Pj4+Pj4+Pgo+ID4gPj4+Pj4+Pj4+IEFzIHBlciB0aGUgUXVhbGNvbW0g
c3lzdGVtIGRlc2lnbiwgdGhlIHBhcmVudC1jaGlsZCBzdXBwbHkgcmVsYXRpb25zaGlwCj4gPiA+
Pj4+Pj4+Pj4gaXMgbWFuYWdlZCBieSB0aGUgUlBNIGZpcm13YXJlLCBub3QgdGhlIExpbnV4IHJl
Z3VsYXRvciBmcmFtZXdvcmsuIFRoZQo+ID4gPj4+Pj4+Pj4+IFJQTSBlbnN1cmVzIHRoZSBwYXJl
bnQgc3VwcGx5IGlzIG5ldmVyIGRpc2FibGVkIHVudGlsIGFsbCBzdWJzeXN0ZW0KPiA+ID4+Pj4+
Pj4+PiB2b3RlcyBhcmUgY2xlYXJlZC4KPiA+ID4+Pj4+Pj4+Cj4gPiA+Pj4+Pj4+PiBIb3cgaXMg
dGhpcyBkaWZmZXJlbnQgZnJvbSBvdGhlciwgcHJldmlvdXMgcGxhdGZvcm1zPwo+ID4gPj4+Pj4+
Pgo+ID4gPj4+Pj4+PiBUaGlzIGlzIG5vdCBkaWZmZXJlbnQuIEluIHRoZSBwcmV2aW91cyBwbGF0
Zm9ybXMgdG9vIHRoaXMgaXMgdGFrZW4gY2FyZSBmcm9tIHRoZQo+ID4gPj4+Pj4+PiBSUE0vUlBN
SCBmaXJtd2FyZSBzaWRlLCB0aGUgb25seSBjYXNlIHdoZXJlIHdlIG1heSBuZWVkIGV4cGxpY2l0
IHZvdGUgdG8gcGFyZW50Cj4gPiA+Pj4+Pj4+IGlzIGZvciBub24tcnBtaC9ycG0gcmVndWxhdG9y
IHJhaWxzIChsaWtlIGkyYyBiYXNlZCByZWd1bGF0b3IgcG04MDA4KSwgd2hpY2gKPiA+ID4+Pj4+
Pj4gbWF5IGhhdmUgYSBSUE0vUlBNSCByZWd1bGF0b3IgYXMgYSBwYXJlbnQuCj4gPiA+Pj4+Pj4+
Cj4gPiA+Pj4+Pj4+IEV2ZW4gb24gdGhvc2UgcHJldmlvdXMgdGFyZ2V0cyB0aGUgcGFyZW50IHJh
aWwgb2YgYWxsIFJQTS9SUE1IIHJlZ3VsYXRvcnMgYXJlCj4gPiA+Pj4+Pj4+IGludGVybmFsbHkg
dm90ZWQgYnkgUlBNL1JQTUggRlcgYXQgcHJvcGVyIHZvbHRhZ2Ugd2l0aCByZXF1aXJlZCBoZWFk
cm9vbQo+ID4gPj4+Pj4+PiBjYWxjdWxhdGVkIGJhc2VkIG9uIHRoZSBhY3RpdmUgY2hpbGQgcmFp
bHMuIFRoaXMgd2FzIGRvbmUgZm9yIGFsbCB0aGUKPiA+ID4+Pj4+Pj4gc3Vic3lzdGVtcyAoaW5j
bHVkaW5nIEFQUFMpIHJlZ3VsYXRvcnMuCj4gPiA+Pj4+Pj4+Cj4gPiA+Pj4+Pj4+IFNvIG5vIGV4
cGxpY2l0IGhhbmRsaW5nIGZyb20gdGhlIEFQUFMgaXMgcmVxdWlyZWQgZm9yIHBhcmVudCBzdXBw
bHkuCj4gPiA+Pj4+Pj4KPiA+ID4+Pj4+PiBZb3UgYXJlIGV4cGxhaW5pbmcgdGhlIGRyaXZlciBi
ZWhhdmlvdXIuIEJ1dCB0aGUgcXVlc3Rpb24gaXMgYWJvdXQgdGhlCj4gPiA+Pj4+Pj4gaGFyZHdh
cmUgZGVzY3JpcHRpb24uIElmIHRoZXJlIGlzIG5vIGRpZmZlcmVuY2UsIHBsZWFzZSBhZGQgbmVj
ZXNzYXJ5Cj4gPiA+Pj4+Pj4gc3VwcGxpZXMgYmFjay4KPiA+ID4+Pj4+Cj4gPiA+Pj4+PiBJIHVu
ZGVyc3RhbmQgeW91ciBjb25jZXJuIGFib3V0IGRlc2NpYmluZyB0aGUgcGFyZW50LWNoaWxkIHJl
bGF0aW9uIGluIHRoZQo+ID4gPj4+Pj4gZGV2aWNldHJlZSwgYW5kIGdpdmVuIHRoYXQgd2UgaGF2
ZSBiZWVuIGFsbW9zdCBhbHdheXMgZm9sbG93ZWQgdGhpcyBmb3IgYWxsCj4gPiA+Pj4+PiB0aGUg
cHJldmlvdXMgdGFyZ2V0cywgaXQgd2lsbCBleHBlY3RlZCBvZiB1cyB0byBhZGQgdGhlbS4KPiA+
ID4+Pj4KPiA+ID4+Pj4gWWVzLgo+ID4gPj4+Pgo+ID4gPj4+Pj4KPiA+ID4+Pj4+IEhvd2V2ZXIs
IHdlIHdhbnQgdG8gYXZvaWQgdGhlIHVubmVjZXNzYXJ5IGFjY2VzcyB0byB0aGUgcGFyZW50IGZy
b20gQVBQUy4KPiA+ID4+Pj4KPiA+ID4+Pj4gV2h5PyBXaGF0IGlzIHRoZSByZWFzb24/IERvIHdl
IHdhbnQgdG8gZG8gdGhlIHNhbWUgZm9yIGFsbCB0aGUKPiA+ID4+Pj4gcGxhdGZvcm1zPyBPbmx5
IGZvciBTaGlrcmE/IFNvbWV0aGluZyBlbHNlPwo+ID4gPj4+Pgo+ID4gPj4+Pj4gQXQgdGhlIG1v
bWVudCwgSSBkbyBub3Qgc2VlIGEgd2F5IHRvIGF2b2lkIHRoYXQsIGlmIHdlIGFkZCB0aGUgcGFy
ZW50Cj4gPiA+Pj4+PiByZWd1bGF0b3JzLgo+ID4gPj4+Pgo+ID4gPj4+PiBUaGF0IGRlcGVuZCBv
biB0aGUgYW5zd2VyIHRvIHRoZSBwcmV2aW91cyBxdWVzdGlvbi4gSW4gdGhlIGVuZCwgd2UgY2Fu
Cj4gPiA+Pj4+IG1ha2UgdGhlIGRyaXZlciBpZ25vcmUgdGhlIHBhcmVudHMgYnkgcmVtb3Zpbmcg
dGhlbSBmcm9tIHRoZSByZWd1bGF0b3IKPiA+ID4+Pj4gZGVzYy4KPiA+ID4+Pgo+ID4gPj4+IE9r
LCB0aGlzIHNlZW1zIGxpa2UgYSBnb29kIHN1Z2dlc3Rpb24sIHNvIHlvdSBtZWFuIGl0cyBvayBp
ZiB3ZSBkZWZpbmUgdGhlCj4gPiA+Pj4gcmVndWxhdG9yIGRlc2MncyBzdXBwbHkgY29sdW1uIHdp
dGggTlVMTD8gQW5kIG9ubHkga2VlcCB0aGF0IGluIHRoZSBEVD8KPiA+ID4+Pgo+ID4gPj4+IHlv
dSBtZWFuIGxpa2UgdGhpcz8KPiA+ID4+PiBodHRwczovL2dpdC5rZXJuZWwub3JnL3B1Yi9zY20v
bGludXgva2VybmVsL2dpdC90b3J2YWxkcy9saW51eC5naXQvdHJlZS9kcml2ZXJzL3JlZ3VsYXRv
ci9xY29tLXJwbWgtcmVndWxhdG9yLmM/aD12Ny4xI24xNDUzCj4gPiA+Pj4KPiA+ID4+PiAocGxl
YXNlIGxldCBtZSBrbm93IGlmIGkgZ290IHRoYXQgcmlnaHQuIHRoYW5rcykKPiA+ID4+Cj4gPiA+
PiBZZXMuIERvbid0IGZvcmdldCB0byBleHBsYWluIGluIHRoZSBjb21taXQgbWVzc2FnZSwgd2h5
IHlvdSBhcmUgZG9pbmcKPiA+ID4+IHNvLgo+ID4gPiAKPiA+ID4gQ3VycmVudGx5LCBBZ2F0dGkg
dXNlcyB0aGUgc2FtZSBQTUlDLCBzbyB3ZSBjYW5ub3Qgc2V0IHRoZSBkcml2ZXIKPiA+ID4gc3Vw
cGx5IG5hbWUgcmVmZXJlbmNlIHRvIE5VTEwuIFNpbmNlIGl0J3MgYW4gb2xkZXIgdGFyZ2V0LAo+
ID4gPiB3ZSdsbCBuZWVkIHRvIHJ1biBhIHJlZ3Jlc3Npb24gYmVmb3JlIG1ha2luZyBhbnkgZHJp
dmVyLWxldmVsIGNoYW5nZXMuCj4gPiA+IAo+ID4gPiBBZGRpdGlvbmFsbHksIHRoZSBjaGlsZC10
by1wYXJlbnQgcmVndWxhdG9yIGdhbmdpbmcgZGlmZmVycyBiZXR3ZWVuCj4gPiA+IFNoaWtyYSBh
bmQgQWdhdHRpOgo+ID4gPiAKPiA+ID4gIC0gT24gQWdhdHRpLCBsMyByZWd1bGF0b3IgaXMgZ2Fu
Z2VkIHdpdGggdmRkX2wxM19sMTRfbDE1X2wxNgo+ID4gPiAgLSBPbiBTaGlrcmEsIGwzIGlzIGdh
bmdlZCB3aXRoIHZkZF9sMl9sMwo+ID4gCj4gPiBJcyBpdCBjb25maWd1cmFibGUgb24gdGhlIFBN
SUMgbGV2ZWw/IEkgd2FzIHVuZGVyIHRoZSBpbXByZXNzaW9uIHRoZQo+ID4gc3VwcGx5IG1hcHMg
YXJlIGZpeGVkIGluIGhhcmR3YXJlLiAgSXMgdGhlcmUgYSBjaGFuY2UgdGhlIGFnYXR0aQo+ID4g
ZGVzY3JpcHRpb24gaXMganVzdCB3cm9uZz8KPiAKPiBUaGUgc3VwcGx5IGdhbmdpbmcgYmV0d2Vl
biBjaGlsZCBMRE9zIGFuZCBwYXJlbnQgc3VwcGxpZXMgaXMgbm90IGZpeGVkCj4gYXQgdGhlIFBN
SUMgaGFyZHdhcmUgbGV2ZWwg4oCUIGl0IHZhcmllcyBwZXIgcGxhdGZvcm0gYmFzZWQgb24gc3lz
dGVtCj4gZGVzaWduIHJlcXVpcmVtZW50cy4gVGhlIHNhbWUgTERPIGNhbiBoYXZlIGEgZGlmZmVy
ZW50IHBhcmVudCBzdXBwbHkgb24KPiBkaWZmZXJlbnQgU29Dcy4KCkl0IGNhbiBoYXZlIGRpZmZl
cmVudCBwb3dlciBzdXBwbGllcywgYnV0IHRoZSBzdXBwbHkgaXMgcHJvdmlkZWQgdGhyb3VnaAph
IGZpeGVkIHBpbiBvZiB0aGUgUE1JQy4gUGxlYXNlIGNvcnJlY3QgbWUgaWYgSSdtIHdyb25nLgoK
PiBJIGhhdmUgdmVyaWZpZWQgdGhlIEFnYXR0aSBwYXJlbnQtY2hpbGQgc3VwcGx5IG1hcHBpbmdz
IGFuZCB0aGV5IGFyZQo+IGNvcnJlY3QuIFRoZSBkaWZmZXJlbmNlIGJldHdlZW4gQWdhdHRpIGFu
ZCBTaGlrcmEgaXMgYSBsZWdpdGltYXRlCj4gcGxhdGZvcm0tbGV2ZWwgZGVzaWduIGRpZmZlcmVu
Y2UsIG5vdCBhbiBlcnJvciBpbiB0aGUgQWdhdHRpIERULgoKVGhlcmUgaXMgYW4gZXJyb3IgaW4g
dGhlIERULiBJdCB1c2VzIGZha2UgUE1JQyBzdXBwbHkgbmFtZXMuCgotLSAKV2l0aCBiZXN0IHdp
c2hlcwpEbWl0cnkKCi0tIApsaW51eC1waHkgbWFpbGluZyBsaXN0CmxpbnV4LXBoeUBsaXN0cy5p
bmZyYWRlYWQub3JnCmh0dHBzOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZv
L2xpbnV4LXBoeQo=
