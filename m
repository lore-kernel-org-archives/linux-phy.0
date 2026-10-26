Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D11F860A2625
	for <linux-phy@archiver.kernel.org>; Mon, 26 Oct 2026 12:44:45 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key, unprotected) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=gXjgEh0C;
	dkim=fail reason="signature verification failed" (2048-bit key, unprotected) header.d=qualcomm.com header.i=@qualcomm.com header.a=rsa-sha256 header.s=qcppdkim1 header.b=E6qRV9x/;
	dkim=fail reason="signature verification failed" (2048-bit key, unprotected) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.a=rsa-sha256 header.s=google header.b=HGYwiv4N
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Unsubscribe-Post:List-Owner;
	bh=jEqBB0sxJwVg0XGRy1rZMPyOODckUAzEJO4d9kluxs8=; b=gXjgEh0C2CJjo2drIlBV4clruc
	eKCdr+vZ1s1gCG/smgvv2xfyY/gORca25JpWW83CjnX8T01nYlmg0xlXUepWtkEgSJCSt0BIE+wro
	0okd1+pAW4ddcnm2ot9Gk+RDPtM1QO1wraA3RENXngis3Mwo0Q008VciXYalaklM/JV20DSz2NoVY
	XVaiMIbQqwpYM60KeCJFYNMEdtMOxW/tQuaj9eRgbDwP9wBZs+nPSZBDIhdc/2nBCXnuykED7ZUM2
	RLoPBCw8wEuFEIRhnWwOZzvCYl34xsBVkkDC4qUQsSYrruy2FVCJrwQWCUmt4POjzkmj1S7Q7cMgL
	H7q8SUrg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xLK4D-00000002Wwy-0OQj;
	Mon, 26 Oct 2026 12:44:45 +0000
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xLK4A-00000002Wvu-40qs
	for linux-phy@lists.infradead.org;
	Mon, 26 Oct 2026 12:44:44 +0000
Received: from pps.filterd (m0279871.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 69QAt83t3633186
	for <linux-phy@lists.infradead.org>; Mon, 26 Oct 2026 12:44:41 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	005Thyq9qrJBejm2la/InYlIeabB0AN+HhsspFti4SM=; b=E6qRV9x/eE2Fi0yy
	1OvFNuN0nUHooQFKkiHdYWd1HhCrRBTAdNZlnrcnnzwFMSO0mnuQpIC/FLlbBcgS
	ZiQ8JcY9IXyFjEqNFO7uiP8e4/q+561D8FWB2C6xSPifbDVrhTfe1uk4zm5v+9Ea
	Q17yIQMoSgcfpPjEJlzL5Xr8JMkoz/0rir0KE6NdAuVXdFuvcAiuy07D6UpsFxqE
	AYjneMm382JNDfQuIkRx8vJNB355Tu8EkmBe/Oc1WzR39DGb5yRL+BuED416RUek
	/ouIuEOLFWiwHXLS0Ko1gOyp34m2aItPD5JU35mlVIu4SZBNAZGVo401vknqCtm/
	a/xagQ==
Received: from mail-vk1-f199.google.com (mail-vk1-f199.google.com [209.85.221.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4hj4sf0jrr-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Mon, 26 Oct 2026 12:44:41 +0000 (GMT)
Received: by mail-vk1-f199.google.com with SMTP id 71dfb90a1353d-5eabedcf97fso467123e0c.2
        for <linux-phy@lists.infradead.org>; Mon, 26 Oct 2026 05:44:40 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1793018680; cv=none;
        d=google.com; s=arc-20260327;
        b=ekCViX2euh1fSbSlpzf62oOBE9gFglfJSGOZTzBTiSxatgYmOKBCcaz7k7tXXQ2tEj
         hoclrljW+VOOGXp9sWnDct9Alu8THHIuOCUk/wfKHG8uxCk43bvJTuUVy5/zFLeNcXqJ
         Mg/eJC+1feCxNoi/yUsBaavHpmOmxD19aeSjizH+7o5CWFGgvhpcoX+4+3MMDIyknx8e
         fVvy+cP451wFIrwYGMQin/qRJ3NC2G0S1wj+gU5Qw9kJK7YxSj7xwEAYqCcRxilFOqMo
         zw+GridZ/pCmdDZCUOP9flGw6N/5SSyBnqWaj4nJ0ZsXeMAPcod4HBUVhkpfFZlfwpOg
         1lQA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20260327;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:dkim-signature;
        bh=005Thyq9qrJBejm2la/InYlIeabB0AN+HhsspFti4SM=;
        fh=S6j3uLKphM78oxBcBaS2TeE3wWNTuZvdNH5nllgjpDg=;
        b=dDt/0eGQmFAqOBr98Bl7cp6kyLj5jV5XRgnwffEQT3R/df52aC8+qoV0FcukYynFhK
         7QksOcqfa3g2ZtGmuMTvqUG2lHWH5ClX09jz2hp5P8xEs3FSQdLKKn7mHojSSGk5x9ji
         i4QxDSX65Fy4/kYm8TG6Fr9s9mXGi/DmUf8SrnAvDV6sFgcTCfXJt6MeL31kRj6FezqM
         X64qROkKWl8UhVafw29pIbynwEx4Fgze4otZ5d8v0ELFh53SEOEMZW53boT/eTO/LQK7
         yq2qvtKInRMSTAQFde6oml1aHQiLgEco0ohbxi0+LA1vSh5t6cOr+jlLIUdR0PZFvAFJ
         HMoQ==;
        darn=lists.infradead.org
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1793018680; x=1793623480; darn=lists.infradead.org;
        h=content-transfer-encoding:content-type:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:from:to:cc:subject
         :date:message-id:reply-to:content-type;
        bh=005Thyq9qrJBejm2la/InYlIeabB0AN+HhsspFti4SM=;
        b=HGYwiv4NMUi2rMJgHji55x0bryqr8OPO0M95DAYfc5e3c7M1nm5UKjl+/L/8JRSTEZ
         hvHhosqONSg1Kwu7E2PHUKtpAkohZwV5UhOzgJHq6rFrm4RTRdzMMRsbNxosNFyXI2dq
         CQsFCe+Z00v80h16/c1pjUCj0AFO/L3l/NbTwmqmD9QvhST2HvR07wm17o+Zt8wG0xnu
         IMGiaSLdPhMPLmUwJdAzFnJdVYC5v7s/z7QCuaJkFoQSaUWUFYsKlq+sn4xhsL8pisBA
         H/UxYxtw4ZAVResR/TGsCMy0XyTusBcdsp3CtW3KNYNpG9GS+Qa/J8bLzC/ld+O+z/6J
         mUvg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1793018680; x=1793623480;
        h=content-transfer-encoding:content-type:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=005Thyq9qrJBejm2la/InYlIeabB0AN+HhsspFti4SM=;
        b=kWBVA2byTHASsbedxR7bwKUjFh73UM1T5r7C0DifyDUJ6bTnN8K+GPkuFfPdBKYZCj
         1+elpruc4D1U/9OU64Rr6kbn6RtlVj6MJaBoC1na5kyjqj8nB6ZNWR46wMiMLBGuhP9R
         imT+vX9XTMr84Q5F8wBaq8BO8oX+uZw/YQgBtzOFHxRCbDBqzgM9vSi1aicmwaVN2fPK
         NgolftHP5lLqokeEG+0XZhQRcbbV81RL+vMMG/RfTUrXoea1alPc1IQdDBblucqD2trY
         rx56Lo/ad3PwdBGjHF7QgALWub8Huk2KTm1v2yHOS/cI6dEEuxzh58U1k3BYBTLCPOyr
         W5hg==
X-Forwarded-Encrypted: i=1; AKwUvBzqy8nlcyacckJQBdI/Vsvu3N94Eq6HGhxAj1zyIWgwfvcHL0rCUSCTO4SlNqHZRIFinM4y2xWUxcY=@lists.infradead.org
X-Gm-Message-State: AFq9FYJ+ViPIYYS2iIUeT+fP0kKikEFt57PYlM7cdw8ks2dsty0PZ12U
	uPfpVZmxWG11Vb7qmF/J1chirXmq+fe1FqCvgddh6UoOVQN05SFqwgHynkY9PjR5ITU4T5RkuH0
	mZNIKtnEMZOpcY4GUwedKudvYnuM2GCdEe0yFfimHW57jnACcW8REQKv1LjMOWF6suLPxWqAh15
	rLc0k7nzFtKFmPqxym0c2Wdfwu+9QzFi8OYA+Ymh3q+1yQzaGS/A0=
X-Gm-Gg: AYBFou3uTl0tLgudJzsX1127XlEcklDTgBdmlJJkHdWLCVPzfOeAC75HByXUsoGlX5y
	0yyn5n0FYnv2/FEFK+HYjA+CrIwRAHq086NEEXaU0F0mj5IBRQdsB3BJ8wjEDpjwRIC7GXWNBYH
	rqV6I1/R3/kFIN3DWwBpfFV5zfM+CbUpdhahL5357cXHr60vC8+7Dmiztp2CdT07y9f2v//AT0u
	TQFaqQ8nNSaeFhlSQ==
X-Received: by 2002:a05:6122:78c:b0:5ea:9218:eac1 with SMTP id 71dfb90a1353d-5ec232ff8abmr2050006e0c.20.1793018680340;
        Mon, 26 Oct 2026 05:44:40 -0700 (PDT)
X-Received: by 2002:a05:6122:78c:b0:5ea:9218:eac1 with SMTP id
 71dfb90a1353d-5ec232ff8abmr2049976e0c.20.1793018679853; Mon, 26 Oct 2026
 05:44:39 -0700 (PDT)
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
References: <20261024-kaanapali-camss-v22-0-7da3ea49c8a1@oss.qualcomm.com>
 <20261024-kaanapali-camss-v22-8-7da3ea49c8a1@oss.qualcomm.com> <CAFEp6-3kJA+yct3GbWzs+NG=xFv_OGZj6OgToOnfcPkb9H=BuA@mail.gmail.com>
In-Reply-To: <CAFEp6-3kJA+yct3GbWzs+NG=xFv_OGZj6OgToOnfcPkb9H=BuA@mail.gmail.com>
From: Hangxiang Ma <hangxiang.ma@oss.qualcomm.com>
Date: Mon, 26 Oct 2026 20:44:28 +0800
X-Gm-Features: AclHuK_vZzSvUBbKv5qcRkDMeSvQ89XyxhHhnpT2JBNskNEMoXl_hPb8JdddQ0U
Message-ID: <CACbMrhoE2fcqGL-CSYPzacftuT=x+pVWAkkVvBXnkHuN+HzcBA@mail.gmail.com>
Subject: Re: [PATCH v22 08/14] media: qcom: camss: csid: Add support for CSID 1080
To: Loic Poulain <loic.poulain@oss.qualcomm.com>
Cc: "Bryan O'Donoghue" <bod@kernel.org>, Vinod Koul <vkoul@kernel.org>,
        Neil Armstrong <neil.armstrong@linaro.org>,
        Manivannan Sadhasivam <mani@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        "Bryan O'Donoghue" <bryan.odonoghue@linaro.org>,
        Vladimir Zapolskiy <vladimir.zapolskiy@linaro.org>,
        Mauro Carvalho Chehab <mchehab@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>,
        Abel Vesa <abelvesa@kernel.org>, linux-phy@lists.infradead.org,
        linux-media@vger.kernel.org, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        jeyaprakash.soundrapandian@oss.qualcomm.com,
        Vijay Kumar Tumati <vijay.tumati@oss.qualcomm.com>,
        Atiya Kailany <atiya.kailany@oss.qualcomm.com>
X-Proofpoint-Spam-Info: AW1haW4tMjYxMDI2MDA1MCBTYWx0ZWRfX9SV6vSRhVqlF
 Am2LDWq1WxPWcYylrykVjY6krjDpjXX0wcSkw88PBq46WdPGHyoDvGmiIki0nL8w6FZXatkXQVf
 nUE6sUbRyUpq6BqVtSBSTINurd53MN0=
X-Authority-Analysis: v=2.4 cv=ZOdCCn7b c=1 sm=1 tr=0 ts=6adf4b39 cx=c_pps
 a=+D9SDfe9YZWTjADjLiQY5g==:117 a=IkcTkHD0fZMA:10 a=660iZSQnnn4A:10
 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22
 a=3WHJM1ZQz_JShphwDgj5:22 a=VwQbUJbxAAAA:8 a=EUspDBNiAAAA:8
 a=yJPWxEu-MHjwpVTia4UA:9 a=QEXdDO2ut3YA:10 a=vmgOmaN-Xu0dpDh8OwbV:22
X-Proofpoint-GUID: 2b4WD1Tu7TFyj2nal7VWwMqVa1Be4Gky
X-Proofpoint-ORIG-GUID: 2b4WD1Tu7TFyj2nal7VWwMqVa1Be4Gky
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYxMDI2MDA1MCBTYWx0ZWRfX6hBJPzBfZPBe
 cztxlDd9DANapDd7vNFRIWZLehYNrdrp61LQec/KPI+shVVUsG7KGjLTJ4x6bUigtT3MBigGm7R
 0L6qoNQ1i8jFAaqRDSeTCZdDTojysZHSSGg7vO8jL4Dq4wGVCl1DhfOI7vnMsCInxTzu1In8xoQ
 ZvL/oAyu6FxjkAlRRX/4FnzPfpflz3YQx6HVpnYE3d35PV4dwcvApRJfb/q5EDXgvQF4paaRutO
 3E6IhWfZiRCATifgoONz5IEd9rrZkO8AHx8Cl8cwQtervxX/X4lxn3GqZHkyAVzYTClhPCJ2DUy
 20QuP4Cx5vprtL9SQcmwlxARyu6LqhKD/qte+KHgJ+Vq5xARQxYHHk1oXXQ5lMnMV5dhSnj9bqw
 K1r4X+KLqnFVZ7ZtFU5Us4P6ID/hDtWiXPnrSvgXWHLbewhCfgQOujuyXPKblw7DTRhisUVZa98
 scbiLTm+hn1+ya2+tqw==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1176,Hydra:6.1.138,FMLib:17.12.100.49
 definitions=2026-10-26_02,2026-10-21_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 phishscore=0 clxscore=1015 lowpriorityscore=0 priorityscore=1501
 malwarescore=0 adultscore=0 spamscore=0 bulkscore=0 impostorscore=0
 suspectscore=0 classifier=typeunknown authscore=0 authtc= authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.22.0-2610190000
 definitions=main-2610260050
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261026_054443_112818_C6B6D0F7 
X-CRM114-Status: GOOD (  20.83  )
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
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-phy" <linux-phy-bounces@lists.infradead.org>
X-Spam-Status: No, score=-9.2 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_EF,HEADER_FROM_DIFFERENT_DOMAINS,
	INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS autolearn=ham
	autolearn_force=no version=4.0.1
X-Spam-Checker-Version: SpamAssassin 4.0.1 (2024-03-26) on
	aws-us-west-2-korg-listserv-alma10-1

T24gMTAvMjYvMjAyNiA2OjQ5IFBNLCBMb2ljIFBvdWxhaW4gd3JvdGU6Cj4gT24gU3VuLCBPY3Qg
MjUsIDIwMjYgYXQgNDoxN+KAr0FNIEhhbmd4aWFuZyBNYQo+IDxoYW5neGlhbmcubWFAb3NzLnF1
YWxjb21tLmNvbT4gd3JvdGU6Cj4+Cj4+IEFkZCBzdXBwb3J0IGZvciB0aGUgQ1NJRCAxMDgwIGhh
cmR3YXJlIGZvdW5kIG9uIHRoZSBLYWFuYXBhbGkgU29DLgo+PgpbLi4uXT4+ICtzdGF0aWMgdm9p
ZCBjc2lkX2NvbmZpZ3VyZV9zdHJlYW0oc3RydWN0IGNzaWRfZGV2aWNlICpjc2lkLCB1OAplbmFi
bGUpCj4+ICt7Cj4+ICsgICAgICAgdTggaSwgazsKPj4gKwo+PiArICAgICAgIF9fY3NpZF9jb25m
aWd1cmVfcngoY3NpZCwgJmNzaWQtPnBoeSk7Cj4+ICsKPj4gKyAgICAgICBmb3IgKGkgPSAwOyBp
IDwgTVNNX0NTSURfTUFYX1NSQ19TVFJFQU1TXzEwODA7IGkrKykgewo+PiArICAgICAgICAgICAg
ICAgaWYgKGNzaWQtPnBoeS5lbl92YyAmIEJJVChpKSkgewo+PiArICAgICAgICAgICAgICAgICAg
ICAgICBfX2NzaWRfY29uZmlndXJlX3JkaV9zdHJlYW0oY3NpZCwgZW5hYmxlLCBpLCAwKTsKPj4g
KyAgICAgICAgICAgICAgICAgICAgICAgX19jc2lkX2NvbmZpZ3VyZV9yeF92Yyhjc2lkLCAwKTsK
Pj4gKwo+PiArICAgICAgICAgICAgICAgICAgICAgICBmb3IgKGsgPSAwOyBrIDwgQ0FNU1NfSU5J
VF9CVUZfQ09VTlQ7IGsrKykKPj4gKyAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICBfX2Nz
aWRfYWRkcl91cGRhdGUoY3NpZCwgaSk7Cj4KPiBEbyB3ZSByZWFsbHkgbmVlZCB0byB0cmlnZ2Vy
IHRoZSBzYW1lIEFVUCBzZXZlcmFsIHRpbWVzIChvbmUgcGVyCj4gYnVmZmVyIGluIHRoZSBGSUZP
KT8gY291bGQgd2UgaGF2ZSBhIHNtYWxsIGNvbW1lbnQgb24gd2h5Pwo+IElzbid0IHRoaXMgYWxy
ZWFkeSBkb25lIGZyb20gdGhlIHZmZV9lbmFibGVfb3V0cHV0IGhlbHBlcj8KPgpZZXMsIHRoaXMg
aXMgcmVxdWlyZWQuIEluIHYyIHdlIGhpdCBhbiBBVVAtcmVsYXRlZCBpc3N1ZSB3aGVyZSBvbmUK
YnVmZmVyIHdhcyBtaXNzZWQgYW5kIGNhcHR1cmUgZ290IHN0dWNrIG9uIHRoZSBsYXN0IGZyYW1l
IG9mIHRoZSBzdHJlYW0uClZpamF5IGV4cGxhaW5lZCB0aGUgZGV0YWlscyBpbiB0aGlzIHRocmVh
ZDoKCjxodHRwczovL2xvcmUua2VybmVsLm9yZy9hbGwvNjYyYTIxYTMtZGU4Yi00MDZmLWExNWQt
YjhhNTcyYWE3OWFiQG9zcy5xdWFsY29tbS5jb20vPgoKSW4gc2hvcnQsIHNpbmNlIHRoZSBzcGxp
dCBkZXNpZ24gd2FzIGludHJvZHVjZWQgb24gdGhlIDk4MCBwbGF0Zm9ybSwgdGhlCkNTSUQgaGFz
IHRvIGJlIGNvbmZpZ3VyZWQgYWZ0ZXIgdGhlIFZGRS4gT3RoZXJ3aXNlLCBydXBfZG9uZSBvciBi
dWZfZG9uZQpJUlFzIGNhbiBiZSBtaXNzZWQuIEFsc28sIGVhY2ggYnVmZmVyIHF1ZXVlZCBpbiB0
aGUgRklGTyBuZWVkcyBpdHMgb3duCkFVUC4gSWYgb25seSBvbmUgQVVQIGlzIHRyaWdnZXJlZCwg
dGhlIGxhc3QgYnVmZmVyIGlzIG5ldmVyIHByb2Nlc3NlZCwKYW5kIHRoZSBwaXBlbGluZSBzdGFs
bHMgd2FpdGluZyBmb3IgYSBidWZfZG9uZSB0aGF0IG5ldmVyIGFycml2ZXMuCgpUaGF0IGlzIHRo
ZSB1bmRlcmx5aW5nIHN0b3J5IG9mIHRoZSAwNC8xNCBwYXRjaCBhbmQgZXhwbGFpbnMgd2h5IGl0
IGlzCmludHJvZHVjZWQgdG8gaGFuZGxlIHRoZSBwbGF0Zm9ybSBoYXJkd2FyZSBkaWZmZXJlbmNl
cy4gVGhhbmtzLgoKPGh0dHBzOi8vbG9yZS5rZXJuZWwub3JnL2FsbC8yMDI2MTAyNC1rYWFuYXBh
bGktY2Ftc3MtdjIyLTQtN2RhM2VhNDljOGExQG9zcy5xdWFsY29tbS5jb20vPgoKWy4uLl0KPj4g
ZGlmZiAtLWdpdCBhL2RyaXZlcnMvbWVkaWEvcGxhdGZvcm0vcWNvbS9jYW1zcy9jYW1zcy1jc2lk
LmggYi9kcml2ZXJzL21lZGlhL3BsYXRmb3JtL3Fjb20vY2Ftc3MvY2Ftc3MtY3NpZC5oCj4+IGlu
ZGV4IDJmN2U1OTNkZWZlZC4uNjAzNjIxYzE2MzE1IDEwMDY0NAo+PiAtLS0gYS9kcml2ZXJzL21l
ZGlhL3BsYXRmb3JtL3Fjb20vY2Ftc3MvY2Ftc3MtY3NpZC5oCj4+ICsrKyBiL2RyaXZlcnMvbWVk
aWEvcGxhdGZvcm0vcWNvbS9jYW1zcy9jYW1zcy1jc2lkLmgKPj4gQEAgLTE2Miw3ICsxNjIsMTMg
QEAgc3RydWN0IGNzaWRfZGV2aWNlIHsKPj4gICAgICAgICAgdm9pZCBfX2lvbWVtICpiYXNlOwo+
PiAgICAgICAgICB1MzIgaXJxOwo+PiAgICAgICAgICBjaGFyIGlycV9uYW1lWzMwXTsKPj4gLSAg
ICAgICB1MzIgcmVnX3VwZGF0ZTsKPj4gKyAgICAgICB1bmlvbiB7Cj4+ICsgICAgICAgICAgICAg
ICB1MzIgcmVnX3VwZGF0ZTsKPj4gKyAgICAgICAgICAgICAgIHN0cnVjdCB7Cj4+ICsgICAgICAg
ICAgICAgICAgICAgICAgIHUzMiBydXBfdXBkYXRlOwo+PiArICAgICAgICAgICAgICAgICAgICAg
ICB1MzIgYXVwX3VwZGF0ZTsKPgo+IEkgd291bGQgc2F5IGtlZXAgaXQgc2ltcGxlIGFuZCBqdXN0
IGFkZCBhZGRyX3VwZGF0ZSBmaWVsZCBhZnRlciByZWdfdXBkYXRlLgo+Cj4KQWNrLiBUaGFua3Mu
CgotLS0KQmVzdCBSZWdhcmRzLApIYW5neGlhbmcKCi0tIApsaW51eC1waHkgbWFpbGluZyBsaXN0
CmxpbnV4LXBoeUBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHBzOi8vbGlzdHMuaW5mcmFkZWFkLm9y
Zy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXBoeQo=
