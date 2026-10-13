Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 21E71CC6B03
	for <linux-phy@archiver.kernel.org>; Tue, 13 Oct 2026 12:24:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=a9eSsFOEMa1MIjxdOVr6NW0y0jOHdQov6XWLTMKx1kc=; b=2LoDNvkmSK8esx
	cXll4e1gU54FrmifFwRTt1fWFKaTa4AQmUdcdgknLWJvdrp3Bid6iKyxruo4TXAlFrsD0FVBAF7yI
	r5ImF2x0RG7LwU7jJ46eJLx/Ymh05EeGy9Nryvyl906tVeHL7lOM7FwobT7aERMmNZeXYu7ZyMzsh
	T5uPVHMlrklS4OVz5Y263i/Shyjho0va6wbDVr3BbCvhQqV3XoB3dKzkFYLmYcm1o0j189Qv/io86
	pQatJUs05dCtxtVVXEHNoqcCPp+d6FgVgO9/OvnIBp9eRFjo2aZ5dL56Gu66BB2i2jQURrIeG1Ero
	RWyPHTE/UUxxccNlg1AA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xGbYg-0000000Cob0-2WA2;
	Tue, 13 Oct 2026 12:24:42 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xGbYd-0000000CoaJ-3DZt
	for linux-phy@lists.infradead.org;
	Tue, 13 Oct 2026 12:24:41 +0000
Received: from pps.filterd (m0279863.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 69D9pK0d173254
	for <linux-phy@lists.infradead.org>; Tue, 13 Oct 2026 12:24:38 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	cBHSeEg5m78MeGq/62DbhP5UimRnwtu1lp97yd0gtxo=; b=Jp7m5aaxYj2xkdlL
	M7R8sMwZwwJMzHikLYlGEXwmc4Z4MQBVEeg0ZCnfSXIxjKxj5b1k7WxeZcDZ5nIJ
	ZZ2LcpaeMz0u9gZpZiH9LPEJ5qYLCB/raFiSeJr0wczRVeVyzwNbh5l/630XOVtN
	IV4Q874QRojeN2KAQWAZjR7aw5fJ6cipK9c318fn+iD6RB9RG6gTcpkBZL6fvMTl
	QWWAWly1d7Xm+iEEx29yKpK3cAod4ncsZeXlxi5ZX1sy80+HMAL+ucqentmfXQF+
	MApnxasg/u01iYFGniqdZemDlXvn2Ny5s39a1hEIye/3oABV4KCEtjZF6yrFO092
	lSNIgg==
Received: from mail-qt1-f199.google.com (mail-qt1-f199.google.com [209.85.160.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4h9daqsy91-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Tue, 13 Oct 2026 12:24:38 +0000 (GMT)
Received: by mail-qt1-f199.google.com with SMTP id d75a77b69052e-5340b037c6cso29079641cf.2
        for <linux-phy@lists.infradead.org>; Tue, 13 Oct 2026 05:24:38 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1791894277; cv=none;
        d=google.com; s=arc-20260327;
        b=Us3YLRa/lIdLe8ASIF1thYiUz0iK4r/Gh1B+O5+SzqLuhM7+tIagPOlRIwq4fqOCuN
         OY8VmE8KL4uE9OnjwE9YqvX5NXAOrCLw3tBF+JIGICACHSWrhtAgQoV+1/pdET53a+o9
         jdqTwYFrr43ygHhbHtbQqZkZ1OiXprO9Fiwfp1lCt9ZA8glTGsi/7vPcp26Dye28Cti4
         7K1rsX7gTDetzi2lhGQUZhi1mtn6PKfl7GKRdJ6yf+zJYDPoc1/hB1XuudtnLRF0Ijrk
         aRqfZwvke8ieI7oHvPx+Z3sOa9QTjZdt70EvUREVIhRK4OjKK3UZi8zjhmaRvpCB6Zkx
         u9YA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20260327;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:dkim-signature;
        bh=cBHSeEg5m78MeGq/62DbhP5UimRnwtu1lp97yd0gtxo=;
        fh=AXjPjISDMOX5vYdkd9RDp6tqgykAdP39tBrlNt3SPV8=;
        b=Y4dgyFOsy+xKt5RYgBchqVZ2/bmOaNhMAYOoFURiKJK+AJqV4tH60yKcD1Sjvc5YZi
         TdQlVNs2GFDE/0ACLZt0OeBuCktTsmt++CXqoIZrVMDisW+3KE1/N0WVt7FpphBmPNyx
         NyM0Gzz9/ETgWjMmvVK8qCXwADBGW2Js5jYbhnjROxa9sVntD1oUHzMw0Vv2nZrx4qm4
         cmZoPw/RJU1BFunxfgwML+GAKLibZkJSqDfRPseRPInA3vmeU1G79X/eq5Hp0nUVIUvL
         o7P5wU1J00GYPM4xPFI4oO8UNTwS9ZXIHgRlUVGv/9tIKZqA7LQYuAGnKtG37a/+0iDj
         CHtQ==;
        darn=lists.infradead.org
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1791894277; x=1792499077; darn=lists.infradead.org;
        h=content-transfer-encoding:content-type:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:from:to:cc:subject
         :date:message-id:reply-to:content-type;
        bh=cBHSeEg5m78MeGq/62DbhP5UimRnwtu1lp97yd0gtxo=;
        b=K5c7wiFiDVnCSnMBRUA54sprR9ojtWpFBCyaJIh2CmPuldAIMs0EtYS3iw54vbIXjN
         VeKCpCi3PHS4EIpGiATY8q9gDlPlK+bgElyBI7HYDg3zydpBrVBncN26rZ8N/WcHcWWy
         T7FHpk54YS81t7iXpcdldNPvqvwJyLKIE2+cJ0iMcdv0nJJeWahKkuzWFrq+jtGycsww
         u6tXOSIp5HhkAur1o0matLMvo6ens6mupsoLk1+1MG58yg6JSSITt0hoIN+CrocOjpVe
         JRWjzRhtDSyakUVY//azwj/qXffC0oSnT/G7WOZInMkC8TdqycbhHT8fi8uQgwgFUyfj
         +p7A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1791894277; x=1792499077;
        h=content-transfer-encoding:content-type:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=cBHSeEg5m78MeGq/62DbhP5UimRnwtu1lp97yd0gtxo=;
        b=b9axdcHcbuPxdxcZKzjO9Iy8+ONYfHvnp9tFIc6pXaQ9W4RaH2+RWZmUCdWG/XJFp+
         5lgwisOsj+RlYDSG7hnRKRhaltKCpC8oBllnZVUbsiFfUpanV+PhlCvuJu0vt1ylrAeg
         EYHWvHuraVfy4YhVas5WPT7FDDnXbAbbf+nPfcGCLOLabGXyqkmfg+Kc5P28iZJwIsE6
         jYWYoI4yqyZpKK+gVU9rQiEJj9LId2KUF1qBVO02dLV2iNoxHloUuMO4YBOOqjne6rEG
         eLzHsUV1j4uEtOYkB/ckRIkRzNh3cDVVnqR7HBE44INvuZ0nL6aDsAF2/trbI1IVIZeT
         4qgg==
X-Forwarded-Encrypted: i=1; AKwUvBz+wr5XMVmdwuhSjj6atiroJ5yoT8CB+ULNJ0lhb8lnq8p0Wb13Rj2ftCyGSeaEx+RIr+HILUHbmIs=@lists.infradead.org
X-Gm-Message-State: AFq9FYL1sUO/CZVD1/FjuoLRGAKaVZ10aYfoyi7EAtIa0Fz+AQzn/QQB
	nauEkH+fSn+T/3mcnTTKFpgx2JJw4YpjSjkKOcPQSRb51a90iFrHZOfUuDO5M7+EndZ3rmLoE9k
	lV2zSxE0D5aJ9TL5M2uxvYCV6emZTgDRP6UVNJGzdwpnjUrWUfsZerA/Ct1b1XpbHrFRvQUd5FX
	PGtPz6dmVy1Iq7wt1PJyMctpPKAtRxYkaXPFKoQV3CZo4=
X-Gm-Gg: AYBFou3/sR2km8kYczPcAI5MuTcFNcjudfqMsCttFdjwTel9gKj29tEK5vkPpn9YUlh
	LAW3wQGvZjqRnVGayoi9C2qqB+KffQ8h1i9bDB/jwLXVSpbR4QTpNT6i6h5FXSUm8MltkcnBYP2
	lIy7sd+JQFB9pMCA7dRNchdE65quyGvePI/5pEYV8BzeCRgzY1/9mu9/2kt/Dk6dJKV3wJaA35B
	M46S74g+hMbTmchJHB9Yv2U2DlXbBOrVBLM1kN8sK/UlPpKERXwPcMYpYSoWagje7eKAwVgF0vA
	BwSv3bTSG8Gv7kMpI+FyiWX+kQPZ
X-Received: by 2002:a05:622a:1c15:b0:533:21c6:f4e2 with SMTP id d75a77b69052e-5359fa9087cmr195111181cf.20.1791894277424;
        Tue, 13 Oct 2026 05:24:37 -0700 (PDT)
X-Received: by 2002:a05:622a:1c15:b0:533:21c6:f4e2 with SMTP id
 d75a77b69052e-5359fa9087cmr195110711cf.20.1791894276755; Tue, 13 Oct 2026
 05:24:36 -0700 (PDT)
MIME-Version: 1.0
References: <20261013-hawi-maili-camss-v2-0-fc93222da89c@oss.qualcomm.com> <20261013-hawi-maili-camss-v2-1-fc93222da89c@oss.qualcomm.com>
In-Reply-To: <20261013-hawi-maili-camss-v2-1-fc93222da89c@oss.qualcomm.com>
From: Loic Poulain <loic.poulain@oss.qualcomm.com>
Date: Tue, 13 Oct 2026 14:24:25 +0200
X-Gm-Features: AclHuK_DsaujXZKzgQcz6fY7MANZtkJtyyIAn3Pjdl47YmkPjme6QijlN0LMNHM
Message-ID: <CAFEp6-3LXSdAd5seGb1e7OZVYq1SFR+8RdK1Q6mM=2ZeZfM4FA@mail.gmail.com>
Subject: Re: [PATCH v2 1/8] dt-bindings: i2c: qcom,i2c-cci: Add Hawi compatible
To: Nihal Kumar Gupta <nihal.gupta@oss.qualcomm.com>
Cc: Robert Foss <rfoss@kernel.org>, Andi Shyti <andi.shyti@kernel.org>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        "Bryan O'Donoghue" <bod@kernel.org>, Vinod Koul <vkoul@kernel.org>,
        Neil Armstrong <neil.armstrong@linaro.org>,
        Manivannan Sadhasivam <mani@kernel.org>,
        Vladimir Zapolskiy <vladimir.zapolskiy@linaro.org>,
        Mauro Carvalho Chehab <mchehab@kernel.org>,
        Hangxiang Ma <hangxiang.ma@oss.qualcomm.com>,
        "Bryan O'Donoghue" <bryan.odonoghue@linaro.org>,
        Suresh Vankadara <svankada@qti.qualcomm.com>,
        Vikram Sharma <vikram.sharma@oss.qualcomm.com>,
        linux-i2c@vger.kernel.org, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        linux-phy@lists.infradead.org, linux-media@vger.kernel.org
X-Proofpoint-GUID: bgvuzk11_F9asJm-U7emZBmIoQEIDEeD
X-Authority-Analysis: v=2.4 cv=FZuiV5+6 c=1 sm=1 tr=0 ts=6ace2306 cx=c_pps
 a=WeENfcodrlLV9YRTxbY/uA==:117 a=IkcTkHD0fZMA:10 a=660iZSQnnn4A:10
 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22
 a=yOCtJkima9RkubShWh1s:22 a=EUspDBNiAAAA:8 a=b40KZWPJp5KrgtGOUacA:9
 a=QEXdDO2ut3YA:10 a=kacYvNCVWA4VmyqE58fU:22
X-Proofpoint-Spam-Info: AW1haW4tMjYxMDEzMDA0OSBTYWx0ZWRfXxMsFgSrIx27Z
 kzc5YtL9/F1GCXVNAdh6SoB502fP9OujJGZHEi7pF2lHS8vgo2wU5FeMhHYlS/nKCcBiBKrZRLq
 Kstp82MrFdtrtsvnT5ikudZvG5ReWxs=
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYxMDEzMDA0OSBTYWx0ZWRfX4KiA5oNFnqOA
 ruP3587uMrEA5TTO2pbG6ArLNI6R6tDdY3sV/H5ULRx4RiyagdvpfCBbU/DUGcGZfb6d5OSZxdf
 JS9OdEX3DwFNzI1Jo+ru5n61zvNYp2JkCpCcC+4xsFvT85ikhMrUQ8haZoZiHnhzxpNhoCv+Mgy
 Yy+XhxoFGzrqxaT8HajcdubcN0cdmtaftfP7pLkCOMXjBBpLZOvkZ8FqBTbpn8tlTCpXMbptDb1
 O2f0v9EW+YMnLKUwH/5jVih2x/Z1IyGELex0kzZNTHD4J41ZK6Cn22ywXiDevKPenJ/4WtZ1G+Z
 z/lJtKys2Cc39JxELFfqJ2rA9/bqZUH0CYdHD23sh6Ex+/kw4/tZirODtjE7x+OlvLBWra4/TEL
 d8P7j8B1LHVzVl8Z5LopWHOka4ZEiYQ89I8H7CLD6l8HahIyen2qqSVvnMNhAC7m25syl6rwEyw
 EATy7XTmZWWCLepzEdQ==
X-Proofpoint-ORIG-GUID: bgvuzk11_F9asJm-U7emZBmIoQEIDEeD
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1176,Hydra:6.1.134,FMLib:17.12.100.49
 definitions=2026-10-13_01,2026-10-09_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 priorityscore=1501 lowpriorityscore=0 clxscore=1015 impostorscore=0
 adultscore=0 bulkscore=0 spamscore=0 malwarescore=0 phishscore=0
 suspectscore=0 classifier=typeunknown authscore=0 authtc= authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.22.0-2610080000
 definitions=main-2610130049
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261013_052439_808798_E185A223 
X-CRM114-Status: GOOD (  15.95  )
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

T24gVHVlLCBPY3QgMTMsIDIwMjYgYXQgMTowM+KAr1BNIE5paGFsIEt1bWFyIEd1cHRhCjxuaWhh
bC5ndXB0YUBvc3MucXVhbGNvbW0uY29tPiB3cm90ZToKPgo+IEZyb206IEhhbmd4aWFuZyBNYSA8
aGFuZ3hpYW5nLm1hQG9zcy5xdWFsY29tbS5jb20+Cj4KPiBEb2N1bWVudCB0aGUgQ2FtZXJhIENv
bnRyb2wgSW50ZXJmYWNlIChDQ0kpIGNvbXBhdGlibGUgZm9yIHRoZSBRdWFsY29tbQo+IEhhd2kg
cGxhdGZvcm0uIExpa2Ugb3RoZXIgcmVjZW50IHBsYXRmb3JtcyBpdCByZXF1aXJlcyB0d28gY2xv
Y2tzLCBzbwo+IGFkZCBpdCB0byB0aGUgY29ycmVzcG9uZGluZyBjbG9ja3MgY29uc3RyYWludCBh
cyB3ZWxsLgo+Cj4gU2lnbmVkLW9mZi1ieTogSGFuZ3hpYW5nIE1hIDxoYW5neGlhbmcubWFAb3Nz
LnF1YWxjb21tLmNvbT4KPiBTaWduZWQtb2ZmLWJ5OiBOaWhhbCBLdW1hciBHdXB0YSA8bmloYWwu
Z3VwdGFAb3NzLnF1YWxjb21tLmNvbT4KClJldmlld2VkLWJ5OiBMb2ljIFBvdWxhaW4gPGxvaWMu
cG91bGFpbkBvc3MucXVhbGNvbW0uY29tPgoKCj4gLS0tCj4gIERvY3VtZW50YXRpb24vZGV2aWNl
dHJlZS9iaW5kaW5ncy9pMmMvcWNvbSxpMmMtY2NpLnlhbWwgfCAyICsrCj4gIDEgZmlsZSBjaGFu
Z2VkLCAyIGluc2VydGlvbnMoKykKPgo+IGRpZmYgLS1naXQgYS9Eb2N1bWVudGF0aW9uL2Rldmlj
ZXRyZWUvYmluZGluZ3MvaTJjL3Fjb20saTJjLWNjaS55YW1sIGIvRG9jdW1lbnRhdGlvbi9kZXZp
Y2V0cmVlL2JpbmRpbmdzL2kyYy9xY29tLGkyYy1jY2kueWFtbAo+IGluZGV4IDFlOGRlZjI1ZWMw
ZWMxZWY2YjM0ODU5NzA5ZDEwYTJhMzZmZTM2ZjUuLmIyYjRkNGJjZjc4MDc5MjUxNWVjMTUzYzg3
M2JhY2UxNzY0ZmIzZTMgMTAwNjQ0Cj4gLS0tIGEvRG9jdW1lbnRhdGlvbi9kZXZpY2V0cmVlL2Jp
bmRpbmdzL2kyYy9xY29tLGkyYy1jY2kueWFtbAo+ICsrKyBiL0RvY3VtZW50YXRpb24vZGV2aWNl
dHJlZS9iaW5kaW5ncy9pMmMvcWNvbSxpMmMtY2NpLnlhbWwKPiBAQCAtMjcsNiArMjcsNyBAQCBw
cm9wZXJ0aWVzOgo+ICAgICAgICAtIGl0ZW1zOgo+ICAgICAgICAgICAgLSBlbnVtOgo+ICAgICAg
ICAgICAgICAgIC0gcWNvbSxnbHltdXItY2NpCj4gKyAgICAgICAgICAgICAgLSBxY29tLGhhd2kt
Y2NpCj4gICAgICAgICAgICAgICAgLSBxY29tLGthYW5hcGFsaS1jY2kKPiAgICAgICAgICAgICAg
ICAtIHFjb20sbWlsb3MtY2NpCj4gICAgICAgICAgICAgICAgLSBxY29tLHFjbTIyOTAtY2NpCj4g
QEAgLTEzNyw2ICsxMzgsNyBAQCBhbGxPZjoKPiAgICAgICAgICAgIGNvbnRhaW5zOgo+ICAgICAg
ICAgICAgICBlbnVtOgo+ICAgICAgICAgICAgICAgIC0gcWNvbSxnbHltdXItY2NpCj4gKyAgICAg
ICAgICAgICAgLSBxY29tLGhhd2ktY2NpCj4gICAgICAgICAgICAgICAgLSBxY29tLGthYW5hcGFs
aS1jY2kKPiAgICAgICAgICAgICAgICAtIHFjb20scWNtMjI5MC1jY2kKPiAgICAgICAgICAgICAg
ICAtIHFjb20scWNzODMwMC1jY2kKPgo+IC0tCj4gMi4zNC4xCj4KCi0tIApsaW51eC1waHkgbWFp
bGluZyBsaXN0CmxpbnV4LXBoeUBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHBzOi8vbGlzdHMuaW5m
cmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXBoeQo=
