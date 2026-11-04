Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 93485606A32F
	for <linux-phy@archiver.kernel.org>; Wed,  4 Nov 2026 16:11:48 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key, unprotected) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=IbDAzjEs;
	dkim=fail reason="signature verification failed" (2048-bit key, unprotected) header.d=qualcomm.com header.i=@qualcomm.com header.a=rsa-sha256 header.s=qcppdkim1 header.b=HL3zDrgn;
	dkim=fail reason="signature verification failed" (2048-bit key, unprotected) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.a=rsa-sha256 header.s=google header.b=eYhWisxh
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Unsubscribe-Post:List-Owner;
	bh=cB8nbxeqd9SFZ+JkQlbp0GTzjk5AxUOivJz8NVARmTI=; b=IbDAzjEsHfudkXfDszNKRjtOuN
	ySp14XzEv8O3mld+lWSbvg7UreDv6S6hxQSO8CSwvu4d6ZSNXpikyjTng0LNy2SO+sowHcvsYFJ0n
	X1CR+pghb2Obdo6jXHvJA7KF1WKFuau9IVV8R4KOAXCxGcsBEOuE15R8nyNIwzvXBw1tyJNxaQvpu
	qM1X8EfDDApl4fWIzlwJ/PvDd9sRzY9Poa1Lge/n4pT3G94LktPckf+0PdfG/DpttuVIYPS8B0ODg
	6QbdNh62Su6t/iWIdQ/4R7WAimjgAwULY0BGbnOxDteNaUUl7e2F6RKLMp/v4C698juJPNiinAbVq
	edRZF9PQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xOdaW-00000005uGB-0Sv0;
	Wed, 04 Nov 2026 16:11:48 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xOdaT-00000005uFb-2VQs
	for linux-phy@lists.infradead.org;
	Wed, 04 Nov 2026 16:11:46 +0000
Received: from pps.filterd (m0279865.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 6A4FipC23272824
	for <linux-phy@lists.infradead.org>; Wed, 4 Nov 2026 16:11:44 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	5QB6POg8HfhMxcRuf7nl0o7R4RuPToIyjSP8q7zFzGY=; b=HL3zDrgnV5oO631M
	Ro3PaT8ie6EQfwqRoHQijSgOKcFDtH4tbxZgzZrLgfk3JSj4kg6r56uj6bnDRrrt
	ScyF0vqH9OisHcxgvpJae0MgpBXydaQLio0ZJVG9j3/TlNXrGtskrkqlmSW+2ZWo
	xU0TdvyezwBVy7vz0pI70oZlvKNb9IC48femR6o7Dqp5cNKgJh905dqPo1w1jdCi
	WDmne/ATT7DGWZMvChAmzLZWil6FP/bqc4iMtzaeY7K30odHjDYn9qZ/etBbN9Ja
	jqK4oYFVlMganJK7VG/lFM6J4I9nVp++FG3byp+UjzBmz/u8Ss3gjnKEAxKIZrTJ
	Koozgw==
Received: from mail-qk1-f199.google.com (mail-qk1-f199.google.com [209.85.222.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4hr6bngehm-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Wed, 04 Nov 2026 16:11:44 +0000 (GMT)
Received: by mail-qk1-f199.google.com with SMTP id af79cd13be357-9308eafb465so255501185a.2
        for <linux-phy@lists.infradead.org>; Wed, 04 Nov 2026 08:11:44 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1793808703; cv=none;
        d=google.com; s=arc-20260327;
        b=KdMF2ottJ0Ybc+J/9w5kshI1nH6lH1MabTsasxmzNlzH2QWqAIpGY95q5CbQiG0yHX
         gOkHxDveq6tFAL1CfJmaJ0LaE3DTk6FbGpY3P9hWxF9JnxBcaswgArR1hMtya88KbdR1
         Mrl4Si2stV2wKC+FOdA/gcmDEkmlu9XS6WSY51sna/0rHYIB46fk62fiBF0YZEV72afy
         q2InTGOwR1jhOuvsB8NSCj7pWCK5bAlTdYY7GuMWp7q17VZFl7AjMIqsxtdXPQdANlxc
         tGjb7IrYuhnFt8mgUZDInRcGysVQf5F0W80wvi5let6AwGSGPA7wnPGxmi+EyxjT8sRl
         rN7A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20260327;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:dkim-signature;
        bh=5QB6POg8HfhMxcRuf7nl0o7R4RuPToIyjSP8q7zFzGY=;
        fh=G97bFts2wIqOOxWzAgc/odjyQtS+uFnMkJsT/wNIfW0=;
        b=H190NhugAS9g85QiJiZ4FUVRsHRUtIFhuhhKfmfkDt8Kf6ouTZlw49RBvINue6r7s/
         WFhlq86xQsuLS3TPBDBFT3XprQ5p0+uE/+p5HSwab81imh+17iPN2aYJU0/ClsJNJi8m
         Duq4Oskx0RH2zWQRY2bNACLi0IASoOrtzO7Umd0SlBDWbyTZXay52la/oHeQcAL17tbw
         mZmr6yih0L4LufjpBOHe6jOqHbzNFe9JjEpfU6OhUZD765TMLZqZpMkd/GPFb+c57qLC
         lC5cXDZHMF63j9/L6vmT5+2AHzTAe/X/E3ja3JE3eJ3QYy+4rnqdjMe/CadQxsfnr1xJ
         mSng==;
        darn=lists.infradead.org
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1793808703; x=1794413503; darn=lists.infradead.org;
        h=content-transfer-encoding:content-type:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:from:to:cc:subject
         :date:message-id:reply-to:content-type;
        bh=5QB6POg8HfhMxcRuf7nl0o7R4RuPToIyjSP8q7zFzGY=;
        b=eYhWisxhQhpGhQ4keceGIAGOWDQQ/3hPUZ5Sl8SqY7sWafHDRfP6k/Uuro3WhUruHZ
         kDkqrXalnCxM+29NcM4V+kcBPmEA1ZYmEoR+qfsxR5cB7qJsnmJ2RuACKOtCUH8caSLo
         +ubZIcwCyT+gf7Yw3XuYQFHjTZbvP7QEcbI7fIR2Jfp1enuvCQV0Dm/jUNwLz62+rgFz
         NckbxYDeJO2woKJGOYkFUbrtLeKIMEKQbTIln7JjWsq5qnneS1wF7YUGN/zyIz3LPLVt
         F9x2DMH1KfTyd6jAA1ATtuutDCce11TzUTczXLBqO0QeY2spRrhFDLVVEawmQkkZz4BM
         rywg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1793808703; x=1794413503;
        h=content-transfer-encoding:content-type:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=5QB6POg8HfhMxcRuf7nl0o7R4RuPToIyjSP8q7zFzGY=;
        b=emI3cu59KL01u8LUgMukt7WqvJl35VLtZr1Z65TpWPbqCNw3h+v9IphPzrYmiAGTrD
         BPjSgLy+eRic8q6uzil+9JXxWQXpp2tU/DIJkXconXBRFPOGI539k4q9efQUdKbST7jH
         RZCEFaOc/ygfN9yyeDNw7XoHOlgGulU/g14enycMRrzD/0oVK2mf91PzxzoOV2BFsEwp
         bAffYSVZM0INXPcps9tQphVrfpC4LtR8oMChCys2LF7MYS0LJhMBpZnkAvW3HcxAJ33/
         NIqePnJ67lDKVmuag1RzR1DCC3J1y6yLiyGp0NAyuu8e56VLgRCzB5u02vwBmFoVpyly
         YCKA==
X-Forwarded-Encrypted: i=1; AKwUvBwpBTJWKgpkklLPI5cY0MmeB5opzxPyNPmIpi5+BzMNOqUBFs+HHOZQkH9rLyS5dR6gX2EDiC/31nE=@lists.infradead.org
X-Gm-Message-State: APuU4Z9NCv8hcOrl0B/qDCIOas55gUGdn2NU5FByyi9AiUNiUuwRIHq9
	VSlwkFoDlp4abUWbcACxg37j0/36bbgOQVymJZi2bqqHufUnQSQLDyENKrY5UcuQDSjNcug+KgL
	OzQqUkltr0qfpuUG6i/G/RWRieWdB7YEMoB2GgiZE1l/SWuxGTvfxnPx3aCMRIXDy2W9KmQVa4Y
	kYi12z69lbjpWUYxVv/PKT+1oGFXbDUKpy8EIjjvK+js8=
X-Gm-Gg: AYBFou1vgXnteI0AhukeqQ5bL1YJ0PdnY1P1fLKbR447VqoPS4Y8OEkVmIBLCh0LEUl
	/9fDAbro7P8roPWoD6TlaDc69j1RQo0K8HMlX8XZzQQDDmR/c2HYrfOnGtHWpf1NLt/6BpQLFi7
	it5Uqy7+8x09zcXt3bCxPMTYEWesWyNjO/BWIcANFpZDR61d6uWGIv6wNvjqgRmRu/XFbtM79Gz
	Kcmv4i74AXI7k3DsVcTvhSewl6o1fKQ8WPDGKDQuZkQBbGJh5us09DvhGeUyYnXXffxjb+mb1N8
	v9BfMMQNLmL1AOmzmOWT8aBCUhTj
X-Received: by 2002:a05:620a:8809:b0:93f:34c9:924d with SMTP id af79cd13be357-94421695deamr2551189085a.35.1793808703131;
        Wed, 04 Nov 2026 08:11:43 -0800 (PST)
X-Received: by 2002:a05:620a:8809:b0:93f:34c9:924d with SMTP id
 af79cd13be357-94421695deamr2551182085a.35.1793808702357; Wed, 04 Nov 2026
 08:11:42 -0800 (PST)
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
References: <20261030-hawi-maili-camss-v3-0-9742bca8cef2@oss.qualcomm.com>
 <fFfGGWaoXA-LdO6s8Xh_kQWQfncXe9YNdpcj2yNkphWHAR_V69LdLOcuhXPsbg8dEUSN4j4yygq4wPre5cz79w==@protonmail.internalid>
 <20261030-hawi-maili-camss-v3-5-9742bca8cef2@oss.qualcomm.com>
 <5817be6b-7180-407b-acb5-8c5fdef4edfb@kernel.org> <73b1f591-69cf-471b-9763-a0b719c74501@oss.qualcomm.com>
 <fac8cd6d-c3f7-4ed3-b0d4-7cb8a7a6f451@linaro.org> <d92a8aaa-5cef-4416-b1c9-46ecfc6b2745@oss.qualcomm.com>
In-Reply-To: <d92a8aaa-5cef-4416-b1c9-46ecfc6b2745@oss.qualcomm.com>
From: Loic Poulain <loic.poulain@oss.qualcomm.com>
Date: Wed, 4 Nov 2026 17:11:31 +0100
X-Gm-Features: AclHuK9u3BNMbXNzSA7AiOa-yyai5dEWKspQKV0NGjgXsr23U39BsLgUr6rq0Ow
Message-ID: <CAFEp6-3ka3ZKzCoLQ5BNv0YR+yhYXVRwV6G6rM8Lx_9hZ0RqVw@mail.gmail.com>
Subject: Re: [PATCH v3 5/5] media: qcom: camss: Add support for Hawi
To: Hangxiang Ma <hangxiang.ma@oss.qualcomm.com>
Cc: "Bryan O'Donoghue" <bryan.odonoghue@linaro.org>,
        "Bryan O'Donoghue" <bod@kernel.org>,
        Nihal Kumar Gupta <nihal.gupta@oss.qualcomm.com>,
        Robert Foss <rfoss@kernel.org>, Andi Shyti <andi.shyti@kernel.org>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>, Vinod Koul <vkoul@kernel.org>,
        Neil Armstrong <neil.armstrong@linaro.org>,
        Manivannan Sadhasivam <mani@kernel.org>,
        Vladimir Zapolskiy <vladimir.zapolskiy@linaro.org>,
        Mauro Carvalho Chehab <mchehab@kernel.org>,
        Suresh Vankadara <svankada@qti.qualcomm.com>,
        Vikram Sharma <vikram.sharma@oss.qualcomm.com>,
        linux-i2c@vger.kernel.org, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        linux-phy@lists.infradead.org, linux-media@vger.kernel.org
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYxMTA0MDA2NCBTYWx0ZWRfX7hPcnAjE7Gv/
 7/vRddULMNh7mTWfJdWfx+k0l5tj25TlERpVVJWTI4T0elG7V/yL8wqs8BbyJWnpS53nA32mMON
 u/U25gYQZYPQXKPZmCEUUpDcKCfWRYWBxcPnDaQPSfPl/KDyWezvtejGwhFqPKGlXfjn9/a3f1k
 aJIuiE8TgaFtFUAzveVTkeXLwcRFOyIJSUPeivXOgtHI6QzHcWl+kXhdhNzfzo4yBQ41/KMXUyh
 k93gTx/ubIEcBZelZdXjjcGC7u9SweV0vAWRXt6RlwLUvipuxludX4xLFG7LUa/9MdD8aZVv5OX
 op0bsyAux5CS6vlVOcf9MjHS+9tqVy8KjwNecg9vwGOJywacB3p1pMEQ8QfP5EJKr8BsTuSEZMb
 Wm5+sA8LGo/G0HCCBOvaZHAVIqP0r1XoKyV5sYvwKx113j6SlMPbHwhFB5p9w7rqtiditTiNw8M
 wUkiAbx08Qm5Dt2l18g==
X-Authority-Analysis: v=2.4 cv=KLLPn1Fo c=1 sm=1 tr=0 ts=6aeb5940 cx=c_pps
 a=HLyN3IcIa5EE8TELMZ618Q==:117 a=IkcTkHD0fZMA:10 a=zJRp6_cAMcgA:10
 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22
 a=Um2Pa8k9VHT-vaBCBUpS:22 a=EUspDBNiAAAA:8 a=rMQDtz2esI8IZeRrkTcA:9
 a=QEXdDO2ut3YA:10 a=bTQJ7kPSJx9SKPbeHEYW:22
X-Proofpoint-ORIG-GUID: N_iwSNGUj0qgNO0K50h7Rwz2A_tH7Xhs
X-Proofpoint-GUID: N_iwSNGUj0qgNO0K50h7Rwz2A_tH7Xhs
X-Proofpoint-Spam-Info: AW1haW4tMjYxMTA0MDA2NCBTYWx0ZWRfX/DXxCzYVTdoF
 kr/kRvUCQMipdiNbw7vnshDLPhWHD1wByU5eFH33w7P56DmgrD1ECYJc9hqdrbEi3KyxSQGUYUA
 I80abKW0KCmfrByihzBzMOLqZMzeEoQ=
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1176,Hydra:6.1.138,FMLib:17.12.100.49
 definitions=2026-11-04_05,2026-11-04_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 malwarescore=0 adultscore=0 clxscore=1015 phishscore=0 bulkscore=0
 spamscore=0 priorityscore=1501 impostorscore=0 suspectscore=0
 lowpriorityscore=0 classifier=typeunknown authscore=0 authtc= authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.22.0-2610300000
 definitions=main-2611040064
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261104_081145_642069_EF6B7A8D 
X-CRM114-Status: GOOD (  29.40  )
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
X-Spam-Status: No, score=-3.9 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_EF,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS autolearn=no
	autolearn_force=no version=4.0.1
X-Spam-Checker-Version: SpamAssassin 4.0.1 (2024-03-26) on
	aws-us-west-2-korg-listserv-alma10-1

SGkgQnJ5YW4sIEhhbmd4aWFuZywKCk9uIFR1ZSwgTm92IDMsIDIwMjYgYXQgNjoyOeKAr0FNIEhh
bmd4aWFuZyBNYQo8aGFuZ3hpYW5nLm1hQG9zcy5xdWFsY29tbS5jb20+IHdyb3RlOgo+Cj4gT24g
MTEvMi8yMDI2IDg6NTggUE0sIEJyeWFuIE8nRG9ub2dodWUgd3JvdGU6Cj4gPiBPbiAzMC8xMC8y
MDI2IDE1OjI1LCBIYW5neGlhbmcgTWEgd3JvdGU6Cj4gPj4+IE9uIDMwLzEwLzIwMjYgMTI6NDMs
IE5paGFsIEt1bWFyIEd1cHRhIHdyb3RlOgo+ID4+Pj4gK3N0YXRpYyBjb25zdCBzdHJ1Y3QgY2Ft
c3Nfc3ViZGV2X3Jlc291cmNlcyBjc2lkX3Jlc19oYXdpW10gPSB7Cj4gPj4+PiArICAgIC8qIENT
SUQwICovCj4gPj4+PiArICAgIHsKPiA+Pj4+ICsgICAgICAgIC5jbG9jayA9IHsgImNzaWQiLCAi
Y3NpZF9jc2lwaHlfcngiIH0sCj4gPj4+PiArICAgICAgICAuY2xvY2tfcmF0ZSA9IHsgeyA0ODAw
MDAwMDAgfSwKPiA+Pj4+ICsgICAgICAgICAgICAgICAgeyA0ODAwMDAwMDAgfSB9LAo+ID4+Pj4g
KyAgICAgICAgLnJlZyA9IHsgImNzaWQwIiB9LAo+ID4+Pj4gKyAgICAgICAgLmludGVycnVwdCA9
IHsgImNzaWQwIiB9LAo+ID4+Pj4gKyAgICAgICAgLmNzaWQgPSB7Cj4gPj4+PiArICAgICAgICAg
ICAgLnBhcmVudF9kZXZfb3BzID0gJnZmZV9wYXJlbnRfZGV2X29wcywKPiA+Pj4+ICsgICAgICAg
ICAgICAuaHdfb3BzID0gJmNzaWRfb3BzXzExOTAsCj4gPj4+PiArICAgICAgICAgICAgLmZvcm1h
dHMgPSAmY3NpZF9mb3JtYXRzX2dlbjIKPiA+Pj4+ICsgICAgICAgIH0KPiA+Pj4KPiA+Pj4gVGhp
cyBsb29rcyBzdHJhbmdlLCB3aHkgaXMgdGhlcmUgb25seSBvbmUgY2xvY2sgcmF0ZSA/Cj4gPj4+
Cj4gPj4+IC0tLQo+ID4+PiBib2QKPiA+PiBIaSBCcnlhbiwgdGhlIGN1cnJlbnQgQ0FNU1MgQ1NJ
RCBjb2RlIGFsd2F5cyBzZWxlY3RzIHRoZSBmaXJzdAo+ID4+IGZyZXF1ZW5jeSBsaXN0ZWQgZm9y
IGVhY2ggY2xvY2sgaW4gdGhlIENBTVNTIHJlc291cmNlIHRhYmxlLgo+ID4+Cj4gPj4gSW4gY2Ft
c3MtY3NpZC5jOgo+ID4+Cj4gPj4gWy4uLl0KPiA+PiB9IGVsc2UgaWYgKGNsb2NrLT5uZnJlcXMp
IHsKPiA+PiAgICAgICAgICBjbGtfc2V0X3JhdGUoY2xvY2stPmNsaywgY2xvY2stPmZyZXFbMF0p
Owo+ID4+IH0KPiA+PiBbLi4uXQo+ID4+Cj4gPj4gRm9yIHRoZSBDU0lEIGFuZCBDU0lEX0NTSVBI
WV9SWCBjbG9ja3MsIHRoZSBoYXJkd2FyZSBzdXBwb3J0cyB0aHJlZQo+ID4+IGNsb2NrIHJhdGVz
OiAyMDAgTUh6LCAzMDAgTUh6LCBhbmQgNDgwIE1Iei4gSWYgSSByZW1lbWJlciBjb3JyZWN0bHks
Cj4gPj4gMjAwTUh6IGFuZCAzMDAgTUh6IGlzIG5vdCBzdWZmaWNpZW50IGZvciB0aGUgc2Vuc29y
J3Mgb3V0cHV0IHBpeGVsCj4gPj4gcmF0ZSwgc28gd2UgbmVlZCB0byB1c2UgdGhlIGhpZ2hlc3Qg
cmF0ZSwgNDgwIE1IeiwgdG8gbWVldCB0aGUKPiA+PiBiYW5kd2lkdGggcmVxdWlyZW1lbnQuIFRo
YW5rcyBhIGxvdC4KPiA+Pgo+ID4+IC0tLQo+ID4+IEJlc3QgUmVnYXJkcywKPiA+PiBIYW5neGlh
bmcKPiA+Cj4gPiBXZSBoYXZlIGEgc2VyaWVzIGZyb20gQW50YW5zIHRvIGFkZHJlc3MgdGhpcyB0
aG91Z2guCj4gPgo+ID4gV2Ugc2hvdWxkIGxpc3QgdGhlIGNsb2NrcyB0aGUgU29DIHN1cHBvcnRz
IG5vdCBjb25zdHJhaW4gdGhhdCBsaXN0IGZvcgo+ID4gb25lIHNwZWNpZmljIHNlbnNvciBvbiBh
IHRlc3QtY2FzZS4KPiA+Cj4gPiAtLS0KPiA+IGJvZAo+Cj4gR29vZCB0byBrbm93IHRoYXQgQW50
YW5zIGhhcyBhIHNlcmllcyBhZGRyZXNzaW5nIHRoaXMuIEkgYWdyZWUgdGhhdCB3ZQo+IHNob3Vs
ZCBsaXN0IGFsbCB0aGUgY2xvY2sgcmF0ZXMgc3VwcG9ydGVkIGJ5IHRoZSBTb0MgcmF0aGVyIHRo
YW4KPiBjb25zdHJhaW5pbmcgdGhlbSBmb3IgYSBzcGVjaWZpYyBzZW5zb3IuCj4KPiBPbmUgYWRk
aXRpb25hbCBjb25jZXJuOiBpZiB0aGUgY2xvY2sgc2VsZWN0aW9uIGxvZ2ljIHN0aWxsIGFsd2F5
cyBwaWNrcwo+IGZyZXFbMF0sIGxpc3RpbmcgYSBsb3dlciByYXRlIGZpcnN0IGNvdWxkIGxlYXZl
IENBTVNTIHVuYWJsZSB0byB3b3JrCj4gcHJvcGVybHkgd2l0aCBzZW5zb3JzIHRoYXQgbmVlZCBo
aWdoZXIgYmFuZHdpZHRoLgo+Cj4gQ291bGQgeW91IHBsZWFzZSBzaGFyZSB0aGUgbGluayB0byB0
aGUgc2VyaWVzPyBJJ2xsIHJlYmFzZSB0aGUgbmV4dAo+IHJldmlzaW9uIG9uIHRvcCBvZiBpdC4K
CkkgZG9uJ3QgdGhpbmsgQXRhbmFzJyBzZXJpZXMgdGFyZ2V0cyB0aGUgQ1NJRCBjbG9ja3MsIG9u
bHkgdGhlIFZGRQpjbG9ja3MuIElkZWFsbHksIHdlIHNob3VsZCBtYWtlIHNpbWlsYXIgY2hhbmdl
cyBmb3IgdGhlIENTSUQgY2xvY2tzIGFzCndlbGwsIGJ1dCBmb3Igbm93IHRoZXkgYXJlIG5vdCBi
ZWluZyBjb25zaWRlcmVkIGhlcmUuCgpQZXJoYXBzIGFkZCBhIGZldyBjb21tZW50cyBkb2N1bWVu
dGluZyB0aGUgc3VwcG9ydGVkIHJhdGVzIGFuZCB1c2UgYQpzaW5nbGUgcmF0ZSBmb3IgdGhlIHRp
bWUgYmVpbmcuIE9uY2UgdGhlIENTSUQgY2xvY2sgY2hhbmdlcyBsYW5kLCB3ZQpzaG91bGQgYmUg
YWJsZSB0byByZXZpc2l0IGFuZCBhZGFwdCB0aGlzIGFjY29yZGluZ2x5PwoKUmVnYXJkcywKTG9p
YwoKLS0gCmxpbnV4LXBoeSBtYWlsaW5nIGxpc3QKbGludXgtcGh5QGxpc3RzLmluZnJhZGVhZC5v
cmcKaHR0cHM6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtcGh5
Cg==
