Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id F3ED2D2ECF9
	for <linux-phy@archiver.kernel.org>; Tue, 20 Jan 2026 07:56:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=82A3gZUtjTWb7L8nqfyf5jT+QmqhJb1zid0VagRYU5I=; b=ely8fEJnOaYi79
	t3ccPCdg1lMc0+bcQ5uL4YDEK8vGe2FVQhFnlpxDFDxqWvayYV26UaxZ0WCUzrI7TgqFX55D/It2D
	PkQudijUVAkwlE+eIpJdB6ZKWmT2wEnTfPKJLmUSjIoePAUuA99S4OkV5uZ557hzKgLLWjMAyy3sR
	drGy6HQcLuyZweBuGrPizYaY1WtDJ9lnSPp5JC5vFOaHX3Y6ShsbOoptDsJBih0DcgSwKmE4VaJwC
	B0uXkvQZHA4n60wyX0OZlfKvEypS04dEWHg3yy64evSKuIqLYEuN75rrl2yamfllO4qJJoBAEfHf5
	yUS1Yyv29IKjfPh5QMJw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vi6bC-00000003Nsq-2ZBa;
	Tue, 20 Jan 2026 07:56:26 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vi6bA-00000003Nsb-3yF4
	for linux-phy@bombadil.infradead.org;
	Tue, 20 Jan 2026 07:56:25 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Content-Transfer-Encoding:Content-Type
	:In-Reply-To:From:References:Cc:To:Subject:MIME-Version:Date:Message-ID:
	Sender:Reply-To:Content-ID:Content-Description;
	bh=AKsLovc3KARkhs/4j/9k3GVlFSpps4fzd+8+jeJ5Fh4=; b=VuKujZ/+DfVnUa/5fdhnpCgMWj
	6PwpjIzP11c78PTH8c1AP+FudLgzoFfwdAx2T6uxYk0A6FNTIZtWE8nmXbfgZElxcuqmgUuJydbMW
	KDZJaxYKj8reSOcTumpbxsbb4HyTriZR6mZR/uLTANNkZwi/fYWrY5M/PxTfEJW66B5b8EvIGTpOe
	EviMhc+EJlm05sir0fiJFIc23EBruJ6jx87RQOXs0mcm66aj4wcXlVmnLcbueTWU1w3I2kzUomhvD
	UpROmG2NH4y8Wz/odhYcNx66FFJZHGxvc98RJM6YvaWm38HsdfKkQ69e7gMw32tQXN0TV3bCutCsa
	KRqth6aw==;
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by desiato.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vi6b7-0000000DWXO-1Q1J
	for linux-phy@lists.infradead.org;
	Tue, 20 Jan 2026 07:56:23 +0000
Received: from pps.filterd (m0279862.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 60K33EcK3805012
	for <linux-phy@lists.infradead.org>; Tue, 20 Jan 2026 07:56:16 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	AKsLovc3KARkhs/4j/9k3GVlFSpps4fzd+8+jeJ5Fh4=; b=ov4gbPkhPBvrGYXK
	9JUcYDfDzemzidbvJ6mol5gOOB3uaC1K7XuOkKAS9zJTUJIW2V/X/+Xg2kEbQSOk
	SzTUEiX4k9SVWqJJhf1RnNZHS5Z5lFHSnnUMw0xeXeAv0e6PRK546BfAgtINTPQt
	ftXbMUP1nBV1eGHNDG6DBoEUzlVv555D/GHW1LWSyv74vYy6OB8tGOw+Ub6GS8Tg
	YabxkTumRm+aUYNeQIJQl4wre8iwIkcg67gZcq0IU8yjeZaM+9YbNd0tbXnfAQHk
	MxWGZO/ZCp93aDUkjPChU6/wrt8bEs/UnjEEnNIjnhbY8Ts2MWOQ+FSze8E04xrb
	CCt4QA==
Received: from mail-pf1-f200.google.com (mail-pf1-f200.google.com [209.85.210.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4bt1f88rqf-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Tue, 20 Jan 2026 07:56:16 +0000 (GMT)
Received: by mail-pf1-f200.google.com with SMTP id d2e1a72fcca58-81e81fbbb8cso4915183b3a.3
        for <linux-phy@lists.infradead.org>; Mon, 19 Jan 2026 23:56:16 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1768895776; x=1769500576; darn=lists.infradead.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=AKsLovc3KARkhs/4j/9k3GVlFSpps4fzd+8+jeJ5Fh4=;
        b=iInXzKVMmTK8jYUO9POY70bcr8aM2tsWlhiz2Trp7shydOTJHF35dCa80UJuGmZT0z
         Q3+FqsxHwDW1RQtd+l6hZVmeqwszh6pmjNJaF2HAAxoz1izItBHjqTDdTp+HhteCmier
         8F/4nWOgra0ZfVHO8EnCoqvMaQUaEvL+wAMwjeXc/WvSh3G/cMXSFnHiRax1QjEQSYL8
         aFfk17WG1x3Fjes8eGJW4l7sCPzmUWXNvLja19lQ5YV/CVmCUsZz0o9ku4WjF3JDlS8B
         9cBJq45RBKaiDt60u7kGAQ5NI4gV6viy7Kxgbrlm8gNSRBb7oFT4PnQsL2bFa6CsOibP
         stxw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1768895776; x=1769500576;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=AKsLovc3KARkhs/4j/9k3GVlFSpps4fzd+8+jeJ5Fh4=;
        b=iq2QcUEQVUCuDBs6t5i7LXdupAVKGOdMsGbvJvYY8Aev8Vwy/wxBsTR//fV3iWterT
         iPoR6Pb3z2DDSHWDvyal/tIe+J1hl30UZkWCLrTkSRHDWZEUa5p0AcP1GmTATYJBha02
         Iy6+BtVvvptpwrukukHCPh/K1BMw+m1Wi3NWIAe/pdqrm3tauFCngeU274MVfOawOAT1
         ymmVr8INABJz3jFHSI1F2HFJm9Cp41GEqbvntp9hmCZJBq+qBH8N4LBzzP/1CJLdVii0
         gc9GkEJCzR8bUm6tx7wQcQf16E0KX/12VUo2UhJqb75rjKoIEsIBKaJHic8GVC0rPYiT
         ri9A==
X-Forwarded-Encrypted: i=1; AJvYcCUzubgvTSNt+0Ag/VPcVauvdUR73CvhuUFMCNEm8i9ibp0dQ0hfwzPUQA2/yLNeblkFvmciSBWG/+0=@lists.infradead.org
X-Gm-Message-State: AOJu0Yx3JyPIbDHse2MB8m5tE18MF16gfsZhlsTQBhE35nj2qlolPIN8
	tfs+JF5ZIG/4kLWS7yrtQsVyeCdGPjwnHLg7NgcGsEFCGRYmN2osNL+DvHrvfAzKZHs1Hwryugs
	enAmBkV1OQRb2nuKL4LAgDDf04Yj+trpXMdlTQIK3l5UZi99Sc7+u3JmGVK7AMA0VNBTQ
X-Gm-Gg: AZuq6aL06kqX9lioWpN149vNy2uulIN4tJT4SQJwF/P0myl2eI8MtYNxSNzrvhpeWn1
	cXecsCY65qUk1wugCKSW7viOe/aTkESftVzAx67Ij0zK8Jxf7LaUTT/p3XojV0zMEwc84v1hzcM
	AArNzpJXhKd4EdpdAa0L1eVoTzJb1rLdikivd5tDOrt+6OUQRDiGQ3aiUV9ltNtWp6lPTxDGPBF
	MAw2O45QDMx2D6yT9i1K7kpLp/crQI/tQ0tS5ndPk5K/lZ8tT2sspZ7tw0dWLtAdm9G0O9vdMsB
	NV+2Czu1RQsFr7caY0ZB8PW1q1M4YgoG4aA8uU3i1emv2Yzg4ceCK2glpGFXbAxSk6F8zTv+jp3
	hk2g8/4nbxI27PpZZw2oUXqlUSViF5hd4R3sJzz63tuf9yNN1THXKhZo6I9obftitqq3BwbLPwB
	TTTq7H
X-Received: by 2002:a05:6a00:3a0d:b0:81f:4346:6870 with SMTP id d2e1a72fcca58-81f9fce68ccmr13367833b3a.28.1768895775875;
        Mon, 19 Jan 2026 23:56:15 -0800 (PST)
X-Received: by 2002:a05:6a00:3a0d:b0:81f:4346:6870 with SMTP id d2e1a72fcca58-81f9fce68ccmr13367810b3a.28.1768895775371;
        Mon, 19 Jan 2026 23:56:15 -0800 (PST)
Received: from [10.133.33.57] (tpe-colo-wan-fw-bordernet.qualcomm.com. [103.229.16.4])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-81fa1291135sm11142535b3a.47.2026.01.19.23.56.12
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 19 Jan 2026 23:56:15 -0800 (PST)
Message-ID: <8c63a77c-1676-461a-bfcf-55202e723718@oss.qualcomm.com>
Date: Tue, 20 Jan 2026 15:56:10 +0800
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2] drm/msm/dp: Correct LeMans/Monaco DP phy
 Swing/Emphasis setting
To: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
Cc: Vinod Koul <vkoul@kernel.org>, Neil Armstrong
 <neil.armstrong@linaro.org>,
        linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
        linux-kernel@vger.kernel.org, stable@vger.kernel.org,
        Abel Vesa <abel.vesa@oss.qualcomm.com>
References: <20260119-klm_dpphy-v2-1-52252190940b@oss.qualcomm.com>
 <47skckagggxijdhinmmibtrd3dydixtj6pccrgjwyczs7bj2te@2rq2iprmzvyf>
 <749e716e-a6cb-4adb-8ffc-0d6f4c6d56c4@oss.qualcomm.com>
 <5ytgf7saw6yfvqzqmy4gtjygo4cx52vomi7mwswc7hgedzz3rb@eiqxiqs2cjmb>
Content-Language: en-US
From: Yongxing Mou <yongxing.mou@oss.qualcomm.com>
In-Reply-To: <5ytgf7saw6yfvqzqmy4gtjygo4cx52vomi7mwswc7hgedzz3rb@eiqxiqs2cjmb>
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMTIwMDA2NSBTYWx0ZWRfXwx4H3A2A3zhH
 skCYhyHgqEAkx3YdCpeY4LhIuabWxN6t4FbGkTBjtXrmALsJelAyt3IbWoQ2W2A3HUcAfwYn12p
 7vKB3xfL6lPXNIqoQ0FY/H5SjZkIZGmfX0+QwF6K9yab18fnM+QvugvB38hwMzcSco04LQrzm9C
 PzGp/g2u4p1/R+fHc03yGT7AE8Iyh12Ja7QL4zpl2x4nLqo9sviW35R4roYI+Q0ajdsnp5hbqn1
 qTko15IDek5w+A2p6wbRF2E9423MGKoCj11Fao/oAmlfC8lZ3Z7XORBA8upkCrGvhkEdvxQdKCF
 ilCjFtK9VFKk1gWFJCyu+/CGIX7NaeK0WIjhwtrQq0HCPfMAJI5bzGCu1Fb0sTStIgbAhubpYoi
 cF5DO1wG2DmQ52oHcQeJIbw+s7TE3lW0bN77H1vWDGtHEpUutMewZ5GLwzbQ3ENielZR5ug9HJV
 Vp5xDQ1I9m+0YQLhFKQ==
X-Proofpoint-GUID: QTJtlKJ2HULJP95WfCI_IGIxbL-GVR4r
X-Proofpoint-ORIG-GUID: QTJtlKJ2HULJP95WfCI_IGIxbL-GVR4r
X-Authority-Analysis: v=2.4 cv=LdQxKzfi c=1 sm=1 tr=0 ts=696f3520 cx=c_pps
 a=mDZGXZTwRPZaeRUbqKGCBw==:117 a=nuhDOHQX5FNHPW3J6Bj6AA==:17
 a=IkcTkHD0fZMA:10 a=vUbySO9Y5rIA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=VwQbUJbxAAAA:8 a=EUspDBNiAAAA:8 a=JfrnYn6hAAAA:8
 a=TcOkVFdsAhurElaN6YEA:9 a=3ZKOabzyN94A:10 a=QEXdDO2ut3YA:10
 a=zc0IvFSfCIW2DFIPzwfm:22 a=1CNFftbPRP8L7MoqJWF3:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2026-01-20_02,2026-01-19_03,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 phishscore=0 bulkscore=0 clxscore=1015 impostorscore=0 spamscore=0
 priorityscore=1501 lowpriorityscore=0 adultscore=0 suspectscore=0
 malwarescore=0 classifier=typeunknown authscore=0 authtc= authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.22.0-2601150000
 definitions=main-2601200065
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260120_075621_840223_840FC0A6 
X-CRM114-Status: GOOD (  18.35  )
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

CgpPbiAxLzIwLzIwMjYgMTE6MTIgQU0sIERtaXRyeSBCYXJ5c2hrb3Ygd3JvdGU6Cj4gT24gVHVl
LCBKYW4gMjAsIDIwMjYgYXQgMTA6NDM6NDZBTSArMDgwMCwgWW9uZ3hpbmcgTW91IHdyb3RlOgo+
Pgo+Pgo+PiBPbiAxLzE5LzIwMjYgODo1NSBQTSwgRG1pdHJ5IEJhcnlzaGtvdiB3cm90ZToKPj4+
IE9uIE1vbiwgSmFuIDE5LCAyMDI2IGF0IDA4OjM3OjIwUE0gKzA4MDAsIFlvbmd4aW5nIE1vdSB3
cm90ZToKPj4+PiBDdXJyZW50bHksIHRoZSBMZU1hbnMvTW9uYWNvIGRldmljZXMgYW5kIHRoZWly
IGRlcml2YXRpdmUgcGxhdGZvcm1zCj4+Pj4gb3BlcmF0ZSBpbiBEUCBtb2RlIHJhdGhlciB0aGFu
IGVEUCBtb2RlLiBQZXIgdGhlIFBIWSBIUEcsIHRoZSBTd2luZyBhbmQKPj4+PiBFbXBoYXNpcyBz
ZXR0aW5ncyBuZWVkIHRvIGJlIGNvcnJlY3RlZCB0byB0aGUgcHJvcGVyIHZhbHVlcy4KPj4+Cj4+
PiBObywgdGhleSBuZWVkIHRvIGJlIGNvbmZpZ3VyZWQgZHluYW1pY2FsbHkuIEkgd3JvdGUgZWFy
bGllciB0aGF0IHRoZQo+Pj4gZHJpdmVyIG5lZWRzIHJlZmFjdG9yaW5nLgo+Pj4KPj4gSGksIERt
aXRyeS4gSSBwbGFuIHRvIHN1Ym1pdCB0aGVtIGluIHRoaXMgb3JkZXI6IHRoaXMgcGF0Y2gg4oaS
IExETyBwYXRjaCDihpIKPj4gcmVmYWN0b3IuCj4+IFNpbmNlIHRoZSByZWZhY3RvciBpbnZvbHZl
cyBtb3JlIHBsYXRmb3JtcyBhbmQgbWF5IHRha2Ugc29tZSB0aW1lLCBJ4oCZZCBsaWtlCj4+IHRv
IGdldCB0aGlzIHBhdGNoIG1lcmdlZCBmaXJzdC4KPiAKPiBUaGlzIHBhdGNoIGlzIGluY29ycmVj
dC4gSXQgdHJhZGVzIHdvcmtpbmcgb24gc29tZSBwbGF0Zm9ybXMgKERQKSB2cwo+IHdvcmtpbmcg
b2Ygc29tZW8gdGhlciBwbGF0Zm9ybXMgKGVEUCkuIEkgZG9uJ3QgdGhpbmsgaXQgaXMgYSBwcm9w
ZXIgZml4Cj4gZm9yIGFueSBwcm9ibGVtLgo+IApHb3QgaXQuLiB3aWxsIHBvc3QgcmVmYWN0b3Ig
c2VyaWVzLgo+Pj4+Cj4+Pj4gVGhpcyB3aWxsIGhlbHAgYWNoaWV2ZSBzdWNjZXNzZnVsIGxpbmsg
dHJhaW5pbmcgb24gc29tZSBkb25nbGVzLgo+Pj4+Cj4+Pj4gQ2M6IHN0YWJsZUB2Z2VyLmtlcm5l
bC5vcmcKPj4+PiBGaXhlczogM2YxMmJmMTYyMTNjICgicGh5OiBxY29tOiBlZHA6IEFkZCBzdXBw
b3J0IGZvciBlRFAgUEhZIG9uIFNBODc3NVAiKQo+Pj4+IFJldmlld2VkLWJ5OiBBYmVsIFZlc2Eg
PGFiZWwudmVzYUBvc3MucXVhbGNvbW0uY29tPgo+Pj4+IFNpZ25lZC1vZmYtYnk6IFlvbmd4aW5n
IE1vdSA8eW9uZ3hpbmcubW91QG9zcy5xdWFsY29tbS5jb20+Cj4+Pj4gLS0tCj4+Pj4gQ2hhbmdl
cyBpbiB2MjoKPj4+PiAtIFNlcGFyYXRlIHRoZSBMRE8gY2hhbmdlIG91dC5bS29ucmFkXVtEbWl0
cnldCj4+Pj4gLSBNb2RpZnkgdGhlIGNvbW1pdCBtZXNzYWdlLltEbWl0cnldCj4+Pj4gLSBMaW5r
IHRvIHYxOiBodHRwczovL2xvcmUua2VybmVsLm9yZy9yLzIwMjYwMTA5LWtsbV9kcHBoeS12MS0x
LWE2YjZhYmUzODJkZUBvc3MucXVhbGNvbW0uY29tCj4+Pj4gLS0tCj4+Pj4gICAgZHJpdmVycy9w
aHkvcXVhbGNvbW0vcGh5LXFjb20tZWRwLmMgfCAyMyArKysrKysrKysrKysrKysrKysrKysrLQo+
Pj4+ICAgIDEgZmlsZSBjaGFuZ2VkLCAyMiBpbnNlcnRpb25zKCspLCAxIGRlbGV0aW9uKC0pCj4+
Pj4KPj4+Cj4+Cj4+Cj4+IC0tIAo+PiBsaW51eC1waHkgbWFpbGluZyBsaXN0Cj4+IGxpbnV4LXBo
eUBsaXN0cy5pbmZyYWRlYWQub3JnCj4+IGh0dHBzOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWls
bWFuL2xpc3RpbmZvL2xpbnV4LXBoeQo+IAoKCi0tIApsaW51eC1waHkgbWFpbGluZyBsaXN0Cmxp
bnV4LXBoeUBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHBzOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9t
YWlsbWFuL2xpc3RpbmZvL2xpbnV4LXBoeQo=
