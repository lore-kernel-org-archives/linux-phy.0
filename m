Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 70B32C4450E
	for <linux-phy@archiver.kernel.org>; Thu, 16 Jul 2026 11:28:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=41PpAW6Hgb3RsR2iaOHVmc3MMAt3OSoDyuEs/1dcAiE=; b=LVo8o3Yz/+Sa4h
	mKyCorzp5MCWGdacnkagpMZpzG6vGHAu9ME77elqlmC7GqmEalVrXjZepKqzyAziG71nltve15Ap8
	kWkORcqHvTQ8xRx+PV1zZYX03liLjDKkA39WpAOabNqkHRYCOnRYKktfyqtlf5xJARgVHv01SaQ1p
	/YTXV+gAsqit8jborB4euxWfNgsAiQL/l1yVYQE28UsvYuHidHqIAM+Tq8s/iCQjtPXfgEcAyyKzn
	g78Co9z6Skr3RJCAOJwSEUrbkO/lbqSrt/2iQxaWaukzfSYmGUbFMZceDrrkL2giDS+wuocyPwYYg
	tJcSRnzQN1Sirg4YFUAA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wkKGK-0000000H7yO-3rJN;
	Thu, 16 Jul 2026 11:28:20 +0000
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wkKGH-0000000H7xw-2eHx
	for linux-phy@lists.infradead.org;
	Thu, 16 Jul 2026 11:28:18 +0000
Received: from pps.filterd (m0279870.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 66G9roLk2416144
	for <linux-phy@lists.infradead.org>; Thu, 16 Jul 2026 11:28:16 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	wg3EOuAb4No755sn9yN0PY5sz3j7P8zitmFGHuFMk+o=; b=VxAzmjIzetTRzrYq
	bXw61k0o2iYTG3bB0y52Rgt1UGDnFcfVE/yJ+V7MO/u9RvreUYYfNfGir7uBrqFt
	Yc5No1o/Dq2AAZo26WlhTGGFKmFEcDIgI6Aqy2U879taTA8+Tly43ITAPzjfjB4d
	2lRMpQEeARS8e5gPflo+21O2I8olK+t68e4rrBk3iwJgVFr0S/Rg8a6azLnLIChL
	ISVoNRxQN4/KC4GGqT0ISqZ0J7ld311RJ5jk4BBarosegULZ4/ioHVU2qrRqYFNF
	SzOFFpRPWNZszxRha2OiATSINKtdGz5mPttWjpOsJZUYgyfYpL8EP3SsO/cZzBCu
	4lbo1g==
Received: from mail-qv1-f70.google.com (mail-qv1-f70.google.com [209.85.219.70])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4feve1rm8m-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Thu, 16 Jul 2026 11:28:16 +0000 (GMT)
Received: by mail-qv1-f70.google.com with SMTP id 6a1803df08f44-8f1e4e0eac1so85779186d6.1
        for <linux-phy@lists.infradead.org>; Thu, 16 Jul 2026 04:28:16 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1784201296; cv=none;
        d=google.com; s=arc-20260327;
        b=cdvAcmaF1Cr4cwRBP+loWG4HKsU9wf0Z8k3XujwVi6/jRsoqs+dPw/BLgHsVKda7XZ
         KbR4B1x52++0MgSR4troQwqBl0+Us+xuqYWPWEi35jMhyT5VZs5eQPPwfBZaRefiXWlr
         OLpWOq5ep0xn9hGHNeSfPWtAo+Pr0xLnPwsxjV6F9x5pDF76OaZ3hNCIClhd+ggh4Y9B
         zFqakzQuURN+cVMTJdp82EKt2LZGzX1cmJhe8WdaY52bZIZmx99VO01rSOWGpnzye/QK
         E1H6g16zT4IPWEO0v6OBR8+YDomIT1nvcUgEMTUg2pJTbtlk33ATSHlah9GMyp4u9U24
         8AWA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20260327;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:dkim-signature;
        bh=wg3EOuAb4No755sn9yN0PY5sz3j7P8zitmFGHuFMk+o=;
        fh=p01fu0ZEWDdSNi8ibhHm1i/I/HtR9ryUuYvVm4/LJ6s=;
        b=jbzWnex9j4kG/HFng7LwASL5PAihxCdqHELOchmfPDUm+Z/te7wVGVHZL/scAX0Ttu
         PekCM8pKiCE6Y1nFVkxuOuuSC6H7Qsk7k2rgeO9PlQnQNB2hZSxQdj/VN5Qx+K5b9THV
         PqTaotdO7mGuwoqDqKrdyvQDhsHziE+oBEeiBf7UahdqEairLXGXSPYSTrRHgLZWr28H
         OMHDqsXfwnWihBVqEf8bt+QyHXetoAMuXILIc/clu63GlvX1QIazFiTzh4FSaq171/J2
         MFkIfnRwCseFq/juyjGRM8kaYvOD5aidDzwUxlABzbatpKmPB2WFrl22czYapFxxR/Ha
         hnnQ==;
        darn=lists.infradead.org
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1784201296; x=1784806096; darn=lists.infradead.org;
        h=content-transfer-encoding:content-type:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:from:to:cc:subject
         :date:message-id:reply-to:content-type;
        bh=wg3EOuAb4No755sn9yN0PY5sz3j7P8zitmFGHuFMk+o=;
        b=O3hB5o81CAMK3tV2FnrgxCPLorQmz1aSR7yj9fdrIYGrdI0syU/EqfvFMyMyZxtetY
         tPd2LR/lKaD8hecVTBaM4/sRY58UD1fOAJoWZ4ivQ2kJA3wXkrrGUr4JNXUn962+Zb8z
         02sD6KtyVtCjFVhnJSeyJu8esgeoUf5xiNTltg/UpT6sWFyzYYsxhKOcgVLFHfPuuY7T
         We9730WD5HFyU52T3XU9FmEq2cSiZo8jzTQQP1cJ4mlsB8M8NTAP36vTFnpD7hGrq3c9
         j2BOov+O9JTZ28Jc2Pk/cfX3V1kQyju/WAUBDE5+eyFpcUEHcNE99t/4/9tkoGv7zlBx
         Royw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1784201296; x=1784806096;
        h=content-transfer-encoding:content-type:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=wg3EOuAb4No755sn9yN0PY5sz3j7P8zitmFGHuFMk+o=;
        b=r5zDrULZtzdFwy3H9D27ZyLM2up+y7aV0MKXdwsXgGCVVePxSmu7nKyP+7ZiMcPN+r
         ofD7esq3/Br21+yOr517BLh0rAuZB0ZPwbBWVvTd2g/TkpuvLpz+sVtweOw1djekOF4n
         B53cYtvW1zG1dPLdHK84MP8BbrzrRdBeWAM3DzryBf507HQTGnoqD4kp2p5wRkiZ1mxQ
         Q4rEq5Hz/Iq925bB9+z/xM8MhSEWfaobc/xjhUWmO+XfgOlXg9vOWtsmbHfKTcXx2Qmq
         6XU5gHfpbU4Zt+sVtz8Oflmv/UEiDqpJ2lceW4u+0BO3n35bbcxgcopZCIpRXD5Ouvim
         8/yA==
X-Forwarded-Encrypted: i=1; AHgh+Rp/yIeT8l1MqDsqDeRq0UKXDt2HaNeMx71CziZvO+mGS0ApZhVphGV/1CbONo/mCDHhbu1yyBvWbfo=@lists.infradead.org
X-Gm-Message-State: AOJu0Ywpm5Ox0kM0IuWnbnhV9ll9FQVCrr0JivKSSrQzWa2qTFAt/J4z
	8fzBHIC5qdxv+all4k22kLwDKR9qH7wN0ZINxefkYHWaZKNFjvfNWt1sInvRbSYMMz04AzE2ZhZ
	Mw7tz8O6/IYeupj+0ykA1zeaWeuCuj/4iHGDLk5u0wOWBZUUqhVfReEsvq0I0rbnMEH61JVfqOM
	jxJnYKO1yk+vybApnhlaQO7AUHs4jeiEFLFfHHaJK9+X0XX0QvSV3mmg==
X-Gm-Gg: AfdE7cmFbhumPhxvhP+1wQKfo8By9g7Z8Og+HPRN1jb3+MZwm+2faAtQi1qtBZrcMV/
	3uz3p4pqzmckG2/cSKSH5gpRDKVjiuJ/bV/RX23HdR4WKpPXjvfnvmKNKW8pOL3RJ+c/G29wrmy
	fs2C0zfPCU/SXTjWbNnn/M/IfXC4UXtBYnySj2u64GqFKLa6bK42abxawe436qTC4DU7lx0ITE5
	A1HrhVHaJYCeRrTDZ5dta8EPiQqJWUwDBPLanLVau7mebwSkRPqY2/rzAnjUEy+tToRulPwWEe1
X-Received: by 2002:a05:6214:5a0b:b0:8ee:ff2e:c2f4 with SMTP id 6a1803df08f44-9074c70b5e6mr114234366d6.17.1784201295828;
        Thu, 16 Jul 2026 04:28:15 -0700 (PDT)
X-Received: by 2002:a05:6214:5a0b:b0:8ee:ff2e:c2f4 with SMTP id
 6a1803df08f44-9074c70b5e6mr114233906d6.17.1784201295334; Thu, 16 Jul 2026
 04:28:15 -0700 (PDT)
MIME-Version: 1.0
References: <20260708-x1e-csi2-phy-v9-0-0210b90c04cf@linaro.org>
 <20260708-x1e-csi2-phy-v9-1-0210b90c04cf@linaro.org> <YSunV_lNJ8xW_y-Aa2psZavniF6mcHJlJipuj1RYWMB8Zb8yLC-gb7eEnk0XMjfwQOneMGsZM5foFKutCNhYqw==@protonmail.internalid>
 <b7baffda-b97c-4b83-8d9e-e381d0289682@linaro.org> <3ab676ac-919b-4a80-8dd6-71dd7f6fe06c@kernel.org>
 <-iN0mG5nS2joxEn49UrxFlORE3R6Ji3HRebfOMNMGnupMIobTBdRDvnwjRHAXHeLmGf6O4JJENVauduwZXwhiA==@protonmail.internalid>
 <b834e9a0-a61c-4912-b57c-36d571938b75@linaro.org> <4d7a0e59-7c34-4557-a475-8cd7fd2ad2d9@kernel.org>
 <CAFEp6-2J0WGF6g0K7s--PxciO+d9MR-SCVnrWJ3u=sgQNwA59A@mail.gmail.com> <c731b03e-b550-48af-b338-37ac53018247@linaro.org>
In-Reply-To: <c731b03e-b550-48af-b338-37ac53018247@linaro.org>
From: Loic Poulain <loic.poulain@oss.qualcomm.com>
Date: Thu, 16 Jul 2026 13:28:04 +0200
X-Gm-Features: AUfX_mzCUaE-2PIDQyd_wAhNS8c7YA5-o4bK-e6AcG3qbxAKGuc-Fck3JEyVR3s
Message-ID: <CAFEp6-3U66hvi0iZrtRbyY3B-uwEap6xDFHFkVoaEBwWhV74Uw@mail.gmail.com>
Subject: Re: [PATCH v9 1/2] dt-bindings: phy: qcom: Add CSI2 C-PHY/DPHY schema
To: "Bryan O'Donoghue" <bryan.odonoghue@linaro.org>
Cc: "Bryan O'Donoghue" <bod@kernel.org>,
        Vladimir Zapolskiy <vladimir.zapolskiy@linaro.org>,
        Vinod Koul <vkoul@kernel.org>,
        Kishon Vijay Abraham I <kishon@kernel.org>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Neil Armstrong <neil.armstrong@linaro.org>,
        linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
        linux-media@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwNzE2MDExOCBTYWx0ZWRfX409dejudRgGa
 Ax4KrCysfyZujhpOLyHGKmyv36skfFfStRsk06LQxDVzpN4tRSIvkrvL2Oa/xZe+5f+/WmyiSEu
 a8AincUt6IhzUOIKZVgs+SSe+tJJ8NTzBU2SuWk4ywmIJulMPW9HzKx4nTG1wbj8NrnzZy3cV3V
 3gh98BXZJetLMfZjGJ+tO+A3MTu22EgjwtArQ7iup6rA4Bcjtb08bYEk5WwioAzjzC41ewkHnGD
 IKltbFci1cJPxiI2ElRD1IvA3DCD+WNetQQkSCzNES8oxa+4Muv6DfrJR+fvjRJgOD4dHZXHy03
 Jzn90NzRs8x9zlvlIzqb41VfXuRet5/RntvWKZn+5t1SKzXpWENa/lCSF8Zb5/JoFl7em2SbM3p
 x2yj+GevcpLumvCS31P0mCSkzgTD2Ror8qEdBtLw2rjYUUu1QdsQnq6shXMg42h5iNXPQ2YoJjz
 zX5wtIUaC2fmp0pVcdw==
X-Authority-Analysis: v=2.4 cv=DvpmPm/+ c=1 sm=1 tr=0 ts=6a58c050 cx=c_pps
 a=oc9J++0uMp73DTRD5QyR2A==:117 a=IkcTkHD0fZMA:10 a=RAioF0-LDSMA:10
 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22
 a=gowsoOTTUOVcmtlkKump:22 a=KKAkSRfTAAAA:8 a=VwQbUJbxAAAA:8
 a=64qUk99jZ6gqxPINBu8A:9 a=QEXdDO2ut3YA:10 a=iYH6xdkBrDN1Jqds4HTS:22
 a=cvBusfyB2V15izCimMoJ:22
X-Proofpoint-GUID: uVeF6ebX3kb3psncjR_kLjD2CW4ENEBe
X-Proofpoint-ORIG-GUID: uVeF6ebX3kb3psncjR_kLjD2CW4ENEBe
X-Proofpoint-Spam-Info: AW1haW4tMjYwNzE2MDExOCBTYWx0ZWRfX426lu3oft7Je
 9iIrc6KiI4ku/RQfnoTDxIWWplR4RLMenPGSABVjDM+0XlNCVDZ9xbSv+qzfpb0VrLS/hph7pAb
 9meNzxKA+2uJmNHQk5Cl7iDkV6GYGQE=
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.134,FMLib:17.12.100.49
 definitions=2026-07-16_04,2026-07-15_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 clxscore=1015 suspectscore=0 priorityscore=1501 phishscore=0
 lowpriorityscore=0 bulkscore=0 spamscore=0 malwarescore=0 impostorscore=0
 adultscore=0 classifier=typeunknown authscore=0 authtc= authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.22.0-2606150000
 definitions=main-2607160118
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260716_042817_810745_21819A3E 
X-CRM114-Status: GOOD (  30.46  )
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

SGkgQnJ5YW4sCgpPbiBUaHUsIEp1bCAxNiwgMjAyNiBhdCAxMTo0MuKAr0FNIEJyeWFuIE8nRG9u
b2dodWUKPGJyeWFuLm9kb25vZ2h1ZUBsaW5hcm8ub3JnPiB3cm90ZToKPgo+IE9uIDE2LzA3LzIw
MjYgMDk6NTYsIExvaWMgUG91bGFpbiB3cm90ZToKPiA+IE9uIE1vbiwgSnVsIDEzLCAyMDI2IGF0
IDE6MTjigK9BTSBCcnlhbiBPJ0Rvbm9naHVlIDxib2RAa2VybmVsLm9yZz4gd3JvdGU6Cj4gPj4K
PiA+PiBPbiAwOS8wNy8yMDI2IDA4OjQwLCBWbGFkaW1pciBaYXBvbHNraXkgd3JvdGU6Cj4gPj4+
PiBBcyBleHBsYWluZWQgaW4gdGhlIGNvdmVyIGxldHRlcjogSSdtIGZvbGxvd2luZyBndWlkYW5j
ZSBmcm9tIFJvYiBvbiB0aGF0Lgo+ID4+PiBQZWhhcHMgeW91J3ZlIG1pc3JlYWQgYSBnaXZlbiBy
ZXZpZXcgY29tbWVudCwgYmVjYXVzZSBSb2IncyBndWlkYW5jZSBpcwo+ID4+PiB0byByZW1vdmUg
J3BoeS10eXBlJyBwcm9wZXJ0eSwKPiA+Pgo+ID4+IEknbGwganVzdCBxdW90ZSB2ZXJiYXRpbSAi
UGVyaGFwcyBwdXR0aW5nIHRoaXMgaW4gcGh5IGNlbGxzIHdvdWxkIGJlCj4gPj4gYmV0dGVyIGJl
Y2F1c2UgdGhlIGNvbnN1bWVyIGRlY2lkZXMgb24gdGhlIG1vZGUuIgo+ID4+Cj4gPj4gVGhhdCBp
cyBub3QgInJlbW92ZSBwaHktdHlwZSIgLSBpdCdzICJtb3ZlIHRoZSBtb2RlIGludG8gdGhlIGNl
bGwiLiBJJ20KPiA+PiBzaGlmdGluZyB0aGlzIGJhY2sgdG8gdGhlIERUIHNjaGVtYSBtYWludGFp
bmVycyBzaW5jZSwgSSB0YWtlIHRoZWlyCj4gPj4gZmVlZGJhY2sgbGl0ZXJhbGx5LCBzZXJpb3Vz
bHkgYW5kIGNhbm9uaWNhbGx5Lgo+ID4+Cj4gPj4gQW55IG9mIHRoZSB0cml1bXZpcmF0ZSB3aWxs
IGRvLCBSb2IsIEtyenlzenRvZiBvciBDb25vci4KPiA+Pgo+ID4+IEFic2VudCBhIGRpZmZlcmVu
dCBhbnN3ZXIgZnJvbSB0aGUgRFQgc2NoZW1hIGd1eXMsIHYxMCBzaGlwcyB3aXRoIHRoZQo+ID4+
IGNvbnN1bWVyIGRlY2lkaW5nIHRoZSBtb2RlIGFzIHBlciBSb2IncyBvcmlnaW5hbCBndWlkYW5j
ZS4KPiA+Cj4gPiBPbiB0aGUgI3BoeS1jZWxscyBxdWVzdGlvbiwgSU1PIHdlIHNob3VsZCBkcm9w
ICNwaHktY2VsbHMgdG8gMCBhbmQKPiA+IGRlcml2ZSB0aGUgQy1QSFkvRC1QSFkgbW9kZSBmcm9t
IHRoZSBlbmRwb2ludCBidXMtdHlwZS4gVGhlIG9wZXJhdGluZwo+ID4gbW9kZSBpcyByZWFsbHkg
YSBjb25maWd1cmF0aW9uIG9mIHRoZSBsaW5rIHJhdGhlciB0aGFuIGEgaGFyZHdhcmUKPiA+IGRl
c2NyaXB0aW9uL2xpbWl0YXRpb24gb2YgdGhlIFBIWSBibG9jayBpdHNlbGYsYW5kIHRoZSBzZW5z
b3IgZW5kcG9pbnQKPiA+IGlzIGNvbnZlbnRpb25hbGx5IHdoZXJlIHRoZSBidXMgdHlwZSBvcmln
aW5hdGVzLiBJIGd1ZXNzIHRoaXMgY29zdHMgdXMKPiA+IG5vdGhpbmcgb24gdGhlIGRyaXZlciBz
aWRlIHRvZGF5LCB3ZSBvbmx5IHN1cHBvcnQgRC1QSFksIHNvIHRoZQo+ID4gbW9kZS1jaGVjayBq
dXN0IG1vdmVzIGludG8gdGhlIGVuZHBvaW50IHBhcnNpbmcgd2UgYWxyZWFkeSBkbyBpbgo+ID4g
cGh5X3Fjb21fbWlwaV9jc2kyX3BhcnNlX3JvdXRpbmcoKS4gSXQgY2FuIGJlIGEgbWluaW1hbAo+
ID4gZndub2RlX3Byb3BlcnR5X3JlYWRfdTMyKGVwLCAiYnVzLXR5cGUiLCAuLi4pIHNhbml0eSBj
aGVjayBhbmQgYWRkaW5nCj4gPiBDLVBIWSBsYXRlciBpcyB0aGVuIGEgb25lLWxpbmUgY2FzZSBN
RURJQV9CVVNfVFlQRV9DU0kyX0NQSFkKPiA+IHdpdGggbm8gRFQgQUJJIGNoYW5nZS4KPgo+IFNv
IEkgdGFrZSB5b3VyIHBvaW50IG9uIGxpbmstdHlwZSAtIGluIHRoZW9yeSB5b3UgY2FuIHNlbGVj
dCB0aGUgbW9kZQo+IGZyb20gdGhlIHNlbnNvciBAIGNvbmZpZyB0aW1lLiBUaGUgZXN0YWJsaXNo
ZWQgcHJhY3RpY2UgaXMgdGhhdCB0aGUKPiBjb25zdW1lciBkZWNpZGVzIHRoZSBQSFkgbW9kZSwg
c28gaWYgd2Ugd2FudGVkIHRvIG1ha2UgdGhpcyBhIF9ydW50aW1lXwo+IGNvbmZpZ3VyYXRpb24g
LSB0aGVuIHRoYXQgc2hvdWxkIGJlIGluZm9ybWF0aW9uIHRoYXQgaXMgcGFzc2VkIHRvIHRoZQo+
IFBIWSB2aWEgY29uZmlndXJlKCkgbm90IHZpYSBEVCBiZWNhdXNlIHdlJ3ZlIHNhaWQgaXRzIGEg
bGluay1tb2RlCj4gYWJzdHJhY3RlZCBmcm9tIHRoZSBEVCBlbnRpcmVseS4KPgo+IEluIHRoZSBl
eHRyZW1lIGNhc2UgSSBoYXZlIGEgdXNlci1zcGFjZSB1dGlsaXR5IHNlbGVjdGluZyBzZW5zb3Ig
bW9kZSwKPiB3aGljaCB0aGUgQ1NJIGNvbnRyb2xsZXIgcGFyc2VzIGFuZCB0aGVuIHNpZ25hbHMg
dGhlIFBIWSB0byBzd2l0Y2ggbW9kZXMuCj4KPiBJZiBpdHMgYSBydW4tdGltZSBjb25maWcsIHRo
ZW4gaXRzIGEgcnVuLXRpbWUgY29uZmlnIGFuZCBEVCBzaG91bGQgYmUKPiBleGNsdWRlZCBmcm9t
IHRoZSBtb2RlIHNlbGVjdGlvbiB0cmVlLgo+Cj4gSSdtIGluIGZhY3Qgd2lsbGluZyB0byBlbnRl
cnRhaW4gdGhpcyBpZGVhIC0gYnV0IGl0IHdpbGwgcmVxdWlyZSBwYXNzaW5nCj4gdGhlIFBIWSBt
b2RlIHRvIGNvbmZpZ3VyZSgpIG5vdCBjb25zdW1pbmcgLSBEVCBkYXRhIGZyb20gdGhlIGVuZHBv
aW50Lgo+Cj4gTXkgY29yZSBwb2ludCBoZXJlIGlzIGJvdGggYWNrbm93bGVkaW5nIFJvYidzIHBv
aW50IHRoZSBjb25zdW1lciBkZWNpZGVzCj4gdGhlIG1vZGUgLSBhbmQgX2lmXyB3ZSBnbyB0aGUg
cnVudGltZSBjb25maWd1cmF0aW9uIHJvdXRlLCB0aGVuIGFjdHVhbGx5Cj4gbWFraW5nIHRoZSBz
ZWxlY3Rpb24gQCBjb25maWd1cmUgbm90IGF0IHByb2JlL2R0IHBhcnNlIHRpbWUuCgpJIGFncmVl
IHRoaXMgaXMvY291bGQtYmUgYSBydW50aW1lIGNvbmZpZ3VyYXRpb24vbmVnb3RpYXRpb24uCgo+
IEkganVzdCB3b25kZXIgaWYgdGhlcmUncyBhbnkgcmVhbCB1cHNpZGUgdG8gYWxsIHRoYXQgYWRk
aXRpb25hbCB3b3JrIGFuZAo+IGRlbGF5L2NodXJuLgoKVGhlcmUgaXMgbm8gcmVhbGx5IG5lZWQg
dG8gc3VwcG9ydCBydW50aW1lIGNvbmZpZ3VyYXRpb24gYXMgb2Ygbm93CnNpbmNlIHdlIG9ubHkg
c3VwcG9ydCBELVBIWSwgc28gdGhlIGRlbHRhIGZvciB2MTAgKnNob3VsZCogYmUgdGlueSwKZWl0
aGVyIGEgYnVzLXR5cGUgc2FuaXR5IHJlYWQgaW4gcGFyc2Vfcm91dGluZygpLCBvciBldmVuIG5v
dGhpbmcgYXQKRFQgcGFyc2UgYW5kIGEgZnV0dXJlIGNvbmZpZ3VyZSgpIGJyYW5jaCB3aGVuIEMt
UEhZIGxhbmRzLgoKUmVnYXJkcywKTG9pYwoKLS0gCmxpbnV4LXBoeSBtYWlsaW5nIGxpc3QKbGlu
dXgtcGh5QGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cHM6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21h
aWxtYW4vbGlzdGluZm8vbGludXgtcGh5Cg==
