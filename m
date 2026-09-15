Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 5F93AC88E75
	for <linux-phy@archiver.kernel.org>; Tue, 15 Sep 2026 09:44:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=VwZEmWJDG5erHnpThJ5cFo4eUvrpHPnWY1JdtT0kVdE=; b=FQhK6O8czEg6a5
	8ILfd+OCRZur57EvdNzD4PA5BLx4TMfcVkpFGGWFSFiisTpGueqy/0jCwYxfHro49yUXdMrbfWaZ6
	cuabFTpNvUuXa11Tpzn6njq5F/YvMan/X5clC9j/7/yg9nzei418/OKKJJURX1pFYodXhJEoOSSXH
	rfAixHf3N1cxuGiVlX3Y37V8m6w/9s+sWzJj2BkG3IarcSnRt24cAFJZ5Dk914RO7Mq+BNbfjSsrj
	u7EoNfZwZo3/QS+3yIcom6YbFD788AIjHFTfjXvNBWVRoHzuRMVMY+QfsUDthQ07azc5p4CjgDB4t
	h3m9808KSx/KN7wdeQtg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x6PiY-00000005oah-34mD;
	Tue, 15 Sep 2026 09:44:46 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x6PiX-00000005oaX-0zrQ
	for linux-phy@bombadil.infradead.org;
	Tue, 15 Sep 2026 09:44:45 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Content-Transfer-Encoding:Content-Type
	:Cc:To:Subject:Message-ID:Date:From:In-Reply-To:References:MIME-Version:
	Sender:Reply-To:Content-ID:Content-Description;
	bh=+fxpNJamNTHEgMiR+YPy8hcOjc4iu052BMQz4IBDT98=; b=U3XAioiIUQi0LpEiIORTN7vU7x
	XzjziVmQR1UG4imc5h7GGXqevXF/KekaimYwZrQgOyuBqQrLVFHauJzLLzvIGYTh5/wmMa9pbvWB6
	L7rkXhyFT+asdJbBne7s6l8c7BS71fMENgGLjz8z9whW1MuTHO/4KNrrsu9Xmbeg87cf1xwIPvN5Y
	qQiFcsP7KZCgoP0BkLq8JPcqZ0qG/YxkvQzJMjsWJxn+XQsp8LIR5GD8ukoCjw0+YtNx5Qykq+MHM
	3RzqjBNs/LHI3Tf5eolN3kYCyNEFK58kS2LJj+aT9PF5N3YCdZCiZEnUiAD1UmpPm1J/p6HvZwxa3
	tl2t+l8Q==;
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by desiato.infradead.org with esmtps (Exim 4.99.2 #2 (Red Hat Linux))
	id 1x6PiS-00000006Vmq-2gqq
	for linux-phy@lists.infradead.org;
	Tue, 15 Sep 2026 09:44:42 +0000
Received: from pps.filterd (m0279865.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 68F9hCac064489
	for <linux-phy@lists.infradead.org>; Tue, 15 Sep 2026 09:44:35 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	+fxpNJamNTHEgMiR+YPy8hcOjc4iu052BMQz4IBDT98=; b=CswX52JO4Piek7S1
	Nh5bNU4VoO1KLQKJHZi2GoNsBO93uwTsHWczoWdD5kh+m9XZtxEd23AQrjfDPOqB
	tX5Cjr+nIN1hQekrHcniYNtSI7eA+CV1XEJVBv9UwvTrgzNsnyjK9evluCd9rGjz
	+DkpQKne67MJuncyzn9NhnAmvFCbziH8n3MzIJ9uckeogat1TJEpjZHYbk5E7GFE
	hnkRb8LlCj/uwSTXPsevc+/qgw6cPGOY0d0/N1akFR8jVQ/8lqNtqBc/KHR1wL0w
	7WxbNJx8Mp54CGlfZ+XZn3I5piX949TDmuYC234iyBEY7w0iWqTsMCg78sI/1IXC
	z37DOA==
Received: from mail-qk1-f198.google.com (mail-qk1-f198.google.com [209.85.222.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4gpn41urm8-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Tue, 15 Sep 2026 09:44:35 +0000 (GMT)
Received: by mail-qk1-f198.google.com with SMTP id af79cd13be357-93a05d645acso725821085a.2
        for <linux-phy@lists.infradead.org>; Tue, 15 Sep 2026 02:44:35 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1789465474; cv=none;
        d=google.com; s=arc-20260327;
        b=N5nMkLcl9Fnm2P7vgEdMvKP2uKdVkaaP9Zb/4r5BaghOogCZQQEjGv9Hh22tRk4A+c
         pqRyuZLiBUnnnXq/Ywp1h9NTXk12+HyRXArDDldDWb6u3wEKesL4SUJnEsYPrsdN0vZ7
         ubIQ5jb/la4t3cVvZeGf+1/ZM458hy8bpYjMfxwvw50TDCCuUEc94V3fCjSZfGruvxMN
         SN66f+4UqWG+XsRBp6wKHUzSMil7c9Usy4FhZoK17SBDNqszsSZRC2ZeO/7Wrc5XZWW/
         EdtpJYJAi5CcMd0eJNuFz2gdrUDG8H1IgPFaGiJI+cVzikhJo5haBtLml2GPioY0eJil
         uOeQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20260327;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:dkim-signature;
        bh=+fxpNJamNTHEgMiR+YPy8hcOjc4iu052BMQz4IBDT98=;
        fh=LklHhfnaTPZw4eQED12ZauXC1eoa/cV5iv7/cFLYlg4=;
        b=n6gGzFBfdE54fBSXBtTwejgs2VxgSgC6Zna8EHR8z9jWK4XygUe5cATmhjHliU/axj
         IKwSfKGPFXpXEnSvahiafD1FpDsC1XcvRCL/hhiep9K61lawTRhaWExtjGycrKCCxMu1
         HXak2R3DA5Zj93MaGu2a1Xu8sm+rSTq0+Q2zfANZodvqqgp+IO6+k3acDODIawA2WhPx
         G2L3mXwmzPb+XMVfLIRhU1KxDytvInAaihjeYY2FGTo8yDCxaaGOJJ3X2vhTNr/6tlDS
         yTM/RKs1i0cTqQ26MzxTFrT+iojMiv9VhXCs0/NopikOYc3DSHXg8LvJfBjlTpy1OlbU
         B3HQ==;
        darn=lists.infradead.org
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1789465474; x=1790070274; darn=lists.infradead.org;
        h=content-transfer-encoding:content-type:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:from:to:cc:subject
         :date:message-id:reply-to:content-type;
        bh=+fxpNJamNTHEgMiR+YPy8hcOjc4iu052BMQz4IBDT98=;
        b=jPtPZ21smrBxGbh+Q00wCdUztxePo931nKuAwEDLkZEgFmu/Zonl8vbAMdF4uBwMNp
         wX7NkZRuzOdRfBaxmLHWodEnMrVgI81jkkYaVLepYXLZiTu/ay4tHMYIe7c9nVW8TDEq
         ZCPTXOW+5yvxedIfUAH6p2qrf6feVhmgInpT/C7KEirsstWGH4Fze9JTXjo6buxIFzKj
         L3HAMWNweixlHRbkKkHNwWRnJsTu0LdOLZJVKHqxaNrot59sWqMz80k/Hnd7iclscUhx
         9E0YwC6gOiwKY2oN1LyBFTgKxnoKLuoYYTUwaDWi2om73E1HxwohnTcD2Bd4S0I00wQn
         Fk3g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1789465474; x=1790070274;
        h=content-transfer-encoding:content-type:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=+fxpNJamNTHEgMiR+YPy8hcOjc4iu052BMQz4IBDT98=;
        b=bjQApfYoeNGZMLyg/N3N4jPgS7b1uTlO9VafdJ5h9gCboXasc717W0AS01P2R868fe
         Ek6wstCux1TR5Dl7OxquMhERuO+h8IZ9+rSLUpQdwI2ozRIetjnD8nh+rOs4YY2tN/lx
         2QiHIOhaumDXCA/swNykbZGSBPLqRu1FnRf0c1SuJfkFAyqDycW1cy21BFZAmYkynSVn
         T8/1K0agzRh5ULB9Vw+W7C8fTfKSq+oywp2k0hHvhA4jGUsSMle0vhaxzwVPwDhgDX/k
         0nNT3zGMXN9uJsBDfZZPVhFk5AyM8h4CS1lGPl8Ge/WfAxgJiG3+lcsDyHZH39kB5/dx
         L2pQ==
X-Forwarded-Encrypted: i=1; AKwUvBwEI6uyBg4xuaBZ+MDZG9+lTLR+frR/abBNJfxYQlVKndk+Hg/ZPdqQSLETAmTnaRtUeqrM35nRLE0=@lists.infradead.org
X-Gm-Message-State: AFuF++numcbsgGHCitvfjphOkwP9Bi4GUR5JPyGNTz80EgVMRVWdcE8k
	9UOqU/173fIjm1la8mXOSYo68CKWacYuJ6s95MndOyT54gb8T/BsI1W/3vmv9E327pxQBTI7VCf
	y1yCXNBTRuSxTqdEBb0xuDWnSWZs2U3jSeHcDgqH/cSrBv+2m1YvpXNxQuVXMHlxEGuiN6Zv0IN
	eimsgViSFm/SRBApM45C5oVnP1gfY+hfSWukhvI0m3iN0=
X-Gm-Gg: AYBFou2L5lyFZpCOVq/PDJQVBj6S59nIdr48lhrUivoJNrTihltPgSNqOahH+QI8p7H
	lOe17mKOXCdYwPvS9yfyDTQ20M8dUEWOaxb4vO/ykHtplZ1A2qAcrz6QC9ugby2GEF6v53/QbG7
	Ehf7SjrXBrxJYo4Cx5BfMDZaA4CWixMASxg2ZtIZJuXqIEPmTBBQq+OAqK+DMctVqhaZhYyJpXJ
	8iUUqaC9onRFIBfKYNIIvhFY0dpDNVUyXDiOx6k0dE/l1u4g9O1tTawXisFFz5PeJSNKaVMN7K4
X-Received: by 2002:a05:620a:1994:b0:92e:4927:2002 with SMTP id af79cd13be357-93a299edea9mr1021975985a.39.1789465474500;
        Tue, 15 Sep 2026 02:44:34 -0700 (PDT)
X-Received: by 2002:a05:620a:1994:b0:92e:4927:2002 with SMTP id
 af79cd13be357-93a299edea9mr1021965685a.39.1789465472779; Tue, 15 Sep 2026
 02:44:32 -0700 (PDT)
MIME-Version: 1.0
References: <20260906-b4-linux-next-25-03-13-dtsi-x1e80100-camss-v17-0-e2197a3e2551@linaro.org>
 <20260906-b4-linux-next-25-03-13-dtsi-x1e80100-camss-v17-5-e2197a3e2551@linaro.org>
In-Reply-To: <20260906-b4-linux-next-25-03-13-dtsi-x1e80100-camss-v17-5-e2197a3e2551@linaro.org>
From: Loic Poulain <loic.poulain@oss.qualcomm.com>
Date: Tue, 15 Sep 2026 11:44:21 +0200
X-Gm-Features: AcwNN1UBt5xNb7VDMYWD4BT9h_axCpKQfZrvwQ0bvr4VpK98SvAM9POncAzr6Lc
Message-ID: <CAFEp6-1meC7+XV3nVUiqivnpPQwDnDBRNCtmDZ-OMG=sLkxAvQ@mail.gmail.com>
Subject: Re: [PATCH v17 5/5] media: qcom: camss: Use data-lanes starting at 1
 for new CSIPHY mode
To: "Bryan O'Donoghue" <bryan.odonoghue@linaro.org>
Cc: Bjorn Andersson <andersson@kernel.org>,
        Michael Turquette <mturquette@baylibre.com>,
        Stephen Boyd <sboyd@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>, Robert Foss <rfoss@kernel.org>,
        Todor Tomov <todor.too@gmail.com>,
        Mauro Carvalho Chehab <mchehab@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>,
        Vladimir Zapolskiy <vladimir.zapolskiy@linaro.org>,
        "Bryan O'Donoghue" <bod@kernel.org>, Vinod Koul <vkoul@kernel.org>,
        Neil Armstrong <neil.armstrong@linaro.org>,
        Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
        Kishon Vijay Abraham I <kishon@kernel.org>,
        Felipe Balbi <balbi@ti.com>, linux-arm-msm@vger.kernel.org,
        linux-clk@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, linux-media@vger.kernel.org,
        linux-phy@lists.infradead.org, Krzysztof Kozlowski <krzk@kernel.org>
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwOTE1MDEzOSBTYWx0ZWRfXwvz3RT4EA2w0
 Wz2XEIde1BFzjHsciz1FU6mAQ/Icd9nURRmqWK5isXydxG3eHVvTRRmYXJvkNSWkdzyMUPyVzum
 pB3frE16uL/Pr9+6QAS3HFOVEretDLIjgIPI14SaAZi8fFWVQeHRzDK36V8LRQMHKV9elrDU2cB
 hgpvdclDLOUKycQEVsHdlmJn27J8vn0NAwOjsRvVtSjMgQSjc/1+9XT48oPZ5zKNwH/DQNNjTWP
 uEfUmmrQRk/QkSak6ktcbzrT1+IMoEuWchrDzQ9h+lfyKmMakpvI9wAU2v7TXZvm4TC5fNcGoXx
 xpix8RLAOOKtbo2yaaj0CK7gCXGaXramqKTlkIM/CpLFBoQ/L0GHvuux3L7qbLDnM1iECbCbxS4
 PwVafaPMWq2ikWJzr+vc0Oor/YyTEEk72WEYazPvEUhKG3rHINZkne/6JgMPHV1mhZX9SnDwE4k
 jO6fW+84CrMn4aeDdlQ==
X-Proofpoint-GUID: uY9zJnHC4HFULwL0pQHYV3t9Cw_pMzPR
X-Authority-Analysis: v=2.4 cv=cqQOAF4i c=1 sm=1 tr=0 ts=6aa91383 cx=c_pps
 a=qKBjSQ1v91RyAK45QCPf5w==:117 a=IkcTkHD0fZMA:10 a=VdqzKS8jKosA:10
 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22
 a=Um2Pa8k9VHT-vaBCBUpS:22 a=KKAkSRfTAAAA:8 a=aw8XXKZHl-0D_llVJ40A:9
 a=QEXdDO2ut3YA:10 a=NFOGd7dJGGMPyQGDc5-O:22 a=cvBusfyB2V15izCimMoJ:22
X-Proofpoint-ORIG-GUID: uY9zJnHC4HFULwL0pQHYV3t9Cw_pMzPR
X-Proofpoint-Spam-Info: AW1haW4tMjYwOTE1MDEzOSBTYWx0ZWRfX/lcv1QRknuuV
 9gBx9rKNqj+OMiSAS4PE7xetjTGZSXx1j7i7DS3NKC7VnwmBWYxZ8TAzzXouVgCPmS155+94PEI
 LXaJGiOdUo7Jq9mIgDf3KkV+DAex2ms=
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1176,Hydra:6.1.134,FMLib:17.12.100.49
 definitions=2026-09-15_03,2026-09-14_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 clxscore=1015 adultscore=0 phishscore=0 priorityscore=1501 malwarescore=0
 suspectscore=0 spamscore=0 lowpriorityscore=0 impostorscore=0 bulkscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2609040000 definitions=main-2609150139
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260915_104441_234708_9D1BBDED 
X-CRM114-Status: GOOD (  27.61  )
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

SGkgQnJ5YW4sCgpPbiBTdW4sIFNlcCA2LCAyMDI2IGF0IDQ6MTfigK9QTSBCcnlhbiBPJ0Rvbm9n
aHVlCjxicnlhbi5vZG9ub2dodWVAbGluYXJvLm9yZz4gd3JvdGU6Cj4KPiBJbnRyb2R1Y2luZyBh
IGRlZGljYXRlZCBDU0lQSFkgZHJpdmVyIGNvbW11bml0eSBmZWVkYmFjayB3YXMgYm90aCB0byBt
b3ZlCj4gdG8gZGF0YS1sYW5lcyBzdGFydGluZyBhdCBpbmRleCAxIG9uIHRoZSBQSFkgc2lkZSBh
bmQgYWxzbyB0byBtYXRjaCB0aGF0Cj4gaW5kZXhpbmcgc2NoZW1lIGluIHRoZSBDU0kgZGVjb2Rl
ciAtIENTSUQuCj4KPiBDU0lEIGNvbnN1bWVzIHRoZSBkYXRhLWxhbmVzIHByb3BlcnR5IHRvIGRl
dGVybWluZSB3aGljaCBDU0lEIGxhbmVzIHRvCj4gc3dpdGNoIG9uLiBGb3IgaW5kZXhlcyBzdGFy
dGluZyBhdCAxIHdlIG5lZWQgdG8gYW1lbmQgdGhlIGxvZ2ljIHNvbWV3aGVyZS4KPiBUaGUgUEhZ
IHNpZGUgY29kZSBub3JtYWxpc2VzIHRoZSBpbnB1dCBkYXRhIHRvIHJlZ2lzdGVyIGxldmVsIG1l
YW5pbmdzIHNvLAo+IHJlcGxpY2F0ZSB0aGF0IGxvZ2ljIG9uIHRoZSBDU0lEIHNpZGUuCj4KPiBJ
bnRyb2R1Y2UgYSBzaW1wbGUgZmxhZyB0byBkaWZmZXJlbnRpYXRlIGJldHdlZW4gbGVnYWN5IGlu
ZGV4aW5nIEAgMCBhbmQKPiBuZXcgaW5kZXhpbmcgQCAxLgo+Cj4gRXhpc3RpbmcgYmluZGluZ3Mg
YXJlIG5vdCBhZmZlY3RlZC4KPgo+IFNpZ25lZC1vZmYtYnk6IEJyeWFuIE8nRG9ub2dodWUgPGJy
eWFuLm9kb25vZ2h1ZUBsaW5hcm8ub3JnPgo+IC0tLQo+ICBkcml2ZXJzL21lZGlhL3BsYXRmb3Jt
L3Fjb20vY2Ftc3MvY2Ftc3MuYyB8IDE1ICsrKysrKysrKysrKy0tLQo+ICAxIGZpbGUgY2hhbmdl
ZCwgMTIgaW5zZXJ0aW9ucygrKSwgMyBkZWxldGlvbnMoLSkKPgo+IGRpZmYgLS1naXQgYS9kcml2
ZXJzL21lZGlhL3BsYXRmb3JtL3Fjb20vY2Ftc3MvY2Ftc3MuYyBiL2RyaXZlcnMvbWVkaWEvcGxh
dGZvcm0vcWNvbS9jYW1zcy9jYW1zcy5jCj4gaW5kZXggODQwOTdkODJkOTljOS4uMDdiM2NkZGNh
NTg0MCAxMDA2NDQKPiAtLS0gYS9kcml2ZXJzL21lZGlhL3BsYXRmb3JtL3Fjb20vY2Ftc3MvY2Ft
c3MuYwo+ICsrKyBiL2RyaXZlcnMvbWVkaWEvcGxhdGZvcm0vcWNvbS9jYW1zcy9jYW1zcy5jCj4g
QEAgLTQ3NDIsNyArNDc0Miw4IEBAIHN0YXRpYyBjb25zdCBzdHJ1Y3QgcGFyZW50X2Rldl9vcHMg
dmZlX3BhcmVudF9kZXZfb3BzID0gewo+ICAgKi8KPiAgc3RhdGljIGludCBjYW1zc19wYXJzZV9l
bmRwb2ludF9ub2RlKHN0cnVjdCBkZXZpY2UgKmRldiwKPiAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgc3RydWN0IGZ3bm9kZV9oYW5kbGUgKmVwLAo+IC0gICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICBzdHJ1Y3QgY2Ftc3NfYXN5bmNfc3ViZGV2ICpjc2QpCj4g
KyAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIHN0cnVjdCBjYW1zc19hc3luY19z
dWJkZXYgKmNzZCwKPiArICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgdTggbGFu
ZV9iYXNlKQo+ICB7Cj4gICAgICAgICBzdHJ1Y3QgY3NpcGh5X2xhbmVzX2NmZyAqbG5jZmcgPSAm
Y3NkLT5pbnRlcmZhY2UuY3NpMi5sYW5lX2NmZzsKPiAgICAgICAgIHN0cnVjdCB2NGwyX21idXNf
Y29uZmlnX21pcGlfY3NpMiAqbWlwaV9jc2kyOwo+IEBAIC00Nzc3LDcgKzQ3NzgsMTQgQEAgc3Rh
dGljIGludCBjYW1zc19wYXJzZV9lbmRwb2ludF9ub2RlKHN0cnVjdCBkZXZpY2UgKmRldiwKPiAg
ICAgICAgICAgICAgICAgcmV0dXJuIC1FTk9NRU07Cj4KPiAgICAgICAgIGZvciAoaSA9IDA7IGkg
PCBsbmNmZy0+bnVtX2RhdGE7IGkrKykgewo+IC0gICAgICAgICAgICAgICBsbmNmZy0+ZGF0YVtp
XS5wb3MgPSBtaXBpX2NzaTItPmRhdGFfbGFuZXNbaV07Cj4gKyAgICAgICAgICAgICAgIHU4IGxh
bmUgPSBtaXBpX2NzaTItPmRhdGFfbGFuZXNbaV07Cj4gKwo+ICsgICAgICAgICAgICAgICBpZiAo
bGFuZSA8IGxhbmVfYmFzZSB8fCBsYW5lIC0gbGFuZV9iYXNlID49IGxuY2ZnLT5udW1fZGF0YSkg
ewoKSSBhZ3JlZSB3aXRoIFNhc2hpa28gdGhhdCBhIHVzZWQgbGFuZSBpbmRleCBjYW4gYmUgZ3Jl
YXRlciB0aGFuIHRoZQpudW1iZXIgb2YgYWN0aXZlIGxhbmVzLgpTbyBwZXJoYXBzIHdlIHNob3Vs
ZCByZW1vdmUgdGhpcyB0ZXN0LCBvciBjb21wYXJlIGl0IGFnYWluc3QgYSBmaXhlZCB2YWx1ZSAo
NCkuCgoKCj4gKyAgICAgICAgICAgICAgICAgICAgICAgZGV2X2VycihkZXYsICJpbnZhbGlkIGRh
dGEtbGFuZSAldVxuIiwgbGFuZSk7Cj4gKyAgICAgICAgICAgICAgICAgICAgICAgcmV0dXJuIC1F
SU5WQUw7Cj4gKyAgICAgICAgICAgICAgIH0KPiArCj4gKyAgICAgICAgICAgICAgIGxuY2ZnLT5k
YXRhW2ldLnBvcyA9IG1pcGlfY3NpMi0+ZGF0YV9sYW5lc1tpXSAtIGxhbmVfYmFzZTsKPiAgICAg
ICAgICAgICAgICAgbG5jZmctPmRhdGFbaV0ucG9sID0gbWlwaV9jc2kyLT5sYW5lX3BvbGFyaXRp
ZXNbaSArIDFdOwo+ICAgICAgICAgfQo+Cj4gQEAgLTQ3OTQsNiArNDgwMiw3IEBAIHN0YXRpYyBp
bnQgY2Ftc3NfcGFyc2VfcG9ydHMoc3RydWN0IGNhbXNzICpjYW1zcykKPiAgewo+ICAgICAgICAg
c3RydWN0IGRldmljZSAqZGV2ID0gY2Ftc3MtPmRldjsKPiAgICAgICAgIHN0cnVjdCBmd25vZGVf
aGFuZGxlICpmd25vZGUgPSBkZXZfZndub2RlKGRldiksICplcDsKPiArICAgICAgIHU4IGxhbmVf
YmFzZSA9IGNhbXNzLT5sZWdhY3lfcGh5ID8gMCA6IDE7Cj4gICAgICAgICBpbnQgcmV0Owo+Cj4g
ICAgICAgICBmd25vZGVfZ3JhcGhfZm9yX2VhY2hfZW5kcG9pbnQoZndub2RlLCBlcCkgewo+IEBA
IC00ODQxLDcgKzQ4NTAsNyBAQCBzdGF0aWMgaW50IGNhbXNzX3BhcnNlX3BvcnRzKHN0cnVjdCBj
YW1zcyAqY2Ftc3MpCj4gICAgICAgICAgICAgICAgICAgICAgICAgZ290byBlcnJfY2xlYW51cDsK
PiAgICAgICAgICAgICAgICAgfQo+Cj4gLSAgICAgICAgICAgICAgIHJldCA9IGNhbXNzX3BhcnNl
X2VuZHBvaW50X25vZGUoZGV2LCBlcCwgY3NkKTsKPiArICAgICAgICAgICAgICAgcmV0ID0gY2Ft
c3NfcGFyc2VfZW5kcG9pbnRfbm9kZShkZXYsIGVwLCBjc2QsIGxhbmVfYmFzZSk7Cj4gICAgICAg
ICAgICAgICAgIGlmIChyZXQgPCAwKQo+ICAgICAgICAgICAgICAgICAgICAgICAgIGdvdG8gZXJy
X2NsZWFudXA7Cj4gICAgICAgICB9Cj4KPiAtLQo+IDIuNTUuMAo+CgotLSAKbGludXgtcGh5IG1h
aWxpbmcgbGlzdApsaW51eC1waHlAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwczovL2xpc3RzLmlu
ZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1waHkK
