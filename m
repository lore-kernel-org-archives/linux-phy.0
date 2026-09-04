Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 4B208C624DE
	for <linux-phy@archiver.kernel.org>; Fri,  4 Sep 2026 07:45:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=56PoNKeArt2nTz15ACd/nFjB44XhPby4Py3G6g7HWho=; b=N48k4fuePCy0K6
	0XilKGNvL5qIg4Og1ZFFkoDJjXTO1dGvW+P0gYLregH+yxOXG01TzDK4ZaDn0+TK/F1ZQoeRGer+D
	kbY7S5ezqiu9ch/H+uJfsqP9LNwxgNDdLfSQJwMVuy68dmIDOLfoh4Z6aZLs0ALopcorYZnDyk0fL
	qnoN8l9gipPkhsQGtfRu9GQrALQxGi0iReThNbKe2rzOF859Ar2yuoPxtPVTRG3etsPVzl9se0UV5
	lNvuwID3VPq4maasyYAgfOm7RhJKEsdP7JbDq9Ttz6/XD0lmdQYnqqHe/sW7kMnOGWjN1X5lkTiTe
	gB8ozyxQABx4dUVs5B3g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x2OcM-00000001GKn-3Yey;
	Fri, 04 Sep 2026 07:45:46 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x2OcJ-00000001GJJ-1FeO
	for linux-phy@lists.infradead.org;
	Fri, 04 Sep 2026 07:45:45 +0000
Received: from pps.filterd (m0279863.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 68462RPH2750602
	for <linux-phy@lists.infradead.org>; Fri, 4 Sep 2026 07:45:42 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	q6qZ2VR8/sUhxooIKjGel5j3+haR5Iv/MA+vGmwiZbU=; b=CBgs5nlb0vyHXZHE
	CfDIHz9bdopunyqpjuPfCJiVyzLGJTJSSuXdV5NOM/FWd3auNC77Od7xTOIObTxX
	m2AK68aaHGeFD/nMxdZQPcoTxmfAgXD1XVPahvQoV4XeooE131fHZ2nYRLedLXSb
	7O6Zsqly7jU9cIKtCQGjyVH2YNWzIgdW8AOnOQJrn4kK6Gw+x1jO9+ahwAVPD14p
	3sSuHwykqgQunS8swd02Ls+1I0iMrbcN//Hu9iW86cjEGa2VgLR9JIEsH947YNxp
	5V9ZPGk1e+q7i4k7WGR0+I3zs7LL4SAbQ0ODb9LzNfWiDpePeRGGGPU2T8JaeZz4
	xA+raQ==
Received: from mail-qk1-f200.google.com (mail-qk1-f200.google.com [209.85.222.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4gfdyxjk5c-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Fri, 04 Sep 2026 07:45:42 +0000 (GMT)
Received: by mail-qk1-f200.google.com with SMTP id af79cd13be357-92e82060977so122376785a.1
        for <linux-phy@lists.infradead.org>; Fri, 04 Sep 2026 00:45:42 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1788507941; cv=none;
        d=google.com; s=arc-20260327;
        b=nrG8w4p4o/BOSOgWQKGDHVBR5PdlzysIxR0gSYA8luqp1ztibmZ7086ucYBnTYTaOr
         RO754ZmtjzE6XBGJWdtz2ts28jKXR+BHTdbYcePg1XTgo09xMWJZ6g42uSNEsvd1YgiB
         qEaWesbbWeFoGsPLIimcXAGwdqyfjH0UoOwQOiW/RbGkE618gmVN+kIY5CXsAc9HtVgF
         Ab8klwDblMZUBeZsbnyNg4RyOqPWOPZ2maIjrFtpLA69UCN5bELfRrL9g5ckZi3yZJuh
         TpGybXq9ynAW9ObkhtOeP4FC+BVOtLwiZDlTvsPsgG3wsiT70J8jcPTC+ROUqnYm1PxQ
         b3Pg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20260327;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:dkim-signature;
        bh=q6qZ2VR8/sUhxooIKjGel5j3+haR5Iv/MA+vGmwiZbU=;
        fh=dGnCWmMT6dsxUs8bAFUeXmXrtaXs7mW2HdHiIgIVUHY=;
        b=SyNiquHGLpb2BTrI0QHWT4y1Q/30bDjDCd7FAYREta4a4w5lYb2MgSGR1QyoyOZsTT
         m4RoKVrUqOfg6NuXm7Kf9LFNPYDj5syQI41zcBmc1Mm8AheBkqXMG0ZCENhitrKqQkg6
         0Ndb2cW8SbccUkfiCqxpKW0blRk1hmi7z+WITLl+prGCkvT8BwksKOR7fOxCHI95pHnj
         AVZygsyEr+oiawzv/eNm+yUMNyxZTtvbgVcDcKfzhS0iiSaXcWNNMTw5ns/PywS4d59A
         2SRiqX7eAWGZTY9iGQXO9QwhjGYSffHh2fHuJ9CQtWsvnzZSYqFOXXFk2iLhMomGtfmA
         NGKg==;
        darn=lists.infradead.org
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1788507941; x=1789112741; darn=lists.infradead.org;
        h=content-transfer-encoding:content-type:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:from:to:cc:subject
         :date:message-id:reply-to:content-type;
        bh=q6qZ2VR8/sUhxooIKjGel5j3+haR5Iv/MA+vGmwiZbU=;
        b=iXrdlUACKQqQSOPOidrvYWtWfR80/YHp6bMcCTVbXUj3PWdPzIMzx6zxPlPPW8es91
         fDXjkMp6hxWqne29AfnZmVnTBOuqtseu6N7x5JV+yHNa0V7CNMtw+3uIR1+3OQmawWtB
         zru1gVKGxoMjEHWDgXk1kOkHtCIW2joATELgQp13M4f6cX1s4EMRMK3C/N8d61icbnpE
         vHr2J4luLkHYWCcJ9V9uJkdkUsFFpzsLEPw8WebXhezSGPEZuHX2c2IGWwezmVKLrnOr
         8lBbs8ezXAKPwI2GO5o87ollmmITB/Mci4UK1F8a+eoGJ8lJSZVuDkZRz/0S7sWGO6dr
         2Zuw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1788507941; x=1789112741;
        h=content-transfer-encoding:content-type:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=q6qZ2VR8/sUhxooIKjGel5j3+haR5Iv/MA+vGmwiZbU=;
        b=F6hwzReob8L3KvCa6y0XsrFXlljQpqW/0qTL4bqrhW6dgLRw4KWruoltDC4d/Coq69
         s7rGbq6jxfQgHYQr4mBLMKHOyfjJKqoAbEvMgp3OZ+nnRtbCS1eTeFdQ9CGTzqL1uDOF
         2hqxw87Nd70DWrs8cfpThzccI8vIOYOYbr9pGW/hd4dqShu25D1qS+U8i0OtcdcXGDy+
         9hJVXq/2b3E5NnoUW9MboqVBqM7kFdgMZGw6IRh8aSSI2BWuT134OsGcHXhVPqdbI9xn
         zM/u9yMsdXuNs/083/yP8ZarVTbn2Ntd1Z+qst7btLoWkpAP3t4TUuI1rfvJ6t1JJoFB
         xJmg==
X-Forwarded-Encrypted: i=1; AKwUvBw1teZ4LA581KLQ1v/b+jFW/OTi0pm/NAPOLLPMbqJkdDPy+RYMaXKYevdkiPexegPWfHznVu7WjRo=@lists.infradead.org
X-Gm-Message-State: AFuF++nDS+eTrcwxK1KLf2SVUpi5IyDhG0CukAQijYeunRJlbaFLi4hX
	px79fgdiPklIk97BiAaKrFA8IV5uHgOnLsCogJQOQIMZEdqEPDeZ+1HZe2q4WZK0HOJ1cT8AQ7R
	7gp7QupSwvRbl0PTdEmdGIhJrxPEUKwkTpadKbI1BEbjQFLeZc3QoNFSGIkzCBzzPifQaF44ZCk
	yaDr/OR3hqZxsZjkKz6bhTsxaDcgtLwlS264mYdRTJIxU=
X-Gm-Gg: AYBFou1secPiCkkeMa3ld9et7fPxvSDWBsqtfoqkU4TaFBZGmJ0ia8dbxw0gOHT/Qez
	y7fYKvLOf4YKa0GCpREY4vg001h0TZdlKUseGvDFvW3CFms79VkinKOFexpf+J8rx7bOyq/sh1O
	6ZPVV0T5jKpg+bqgq8jUnyv+y213y8p6bYbi3ADeM5a9rxghpNMRGqfN5cTYT6iGJBsVmDgURc/
	+nxVio2jX60UBkNL+5q785Nra6V4LE6c9dQXIcgUYBK8EeLlgYatMlLFxk2Wfd7o4PEYuKm/uAN
X-Received: by 2002:a05:620a:bd5:b0:937:4550:96c9 with SMTP id af79cd13be357-9396e0e1302mr1054102985a.21.1788507941447;
        Fri, 04 Sep 2026 00:45:41 -0700 (PDT)
X-Received: by 2002:a05:620a:bd5:b0:937:4550:96c9 with SMTP id
 af79cd13be357-9396e0e1302mr1054100585a.21.1788507940986; Fri, 04 Sep 2026
 00:45:40 -0700 (PDT)
MIME-Version: 1.0
References: <20260903-b4-linux-next-25-03-13-dtsi-x1e80100-camss-v14-0-01ef1eced075@linaro.org>
 <20260903-b4-linux-next-25-03-13-dtsi-x1e80100-camss-v14-1-01ef1eced075@linaro.org>
In-Reply-To: <20260903-b4-linux-next-25-03-13-dtsi-x1e80100-camss-v14-1-01ef1eced075@linaro.org>
From: Loic Poulain <loic.poulain@oss.qualcomm.com>
Date: Fri, 4 Sep 2026 09:45:29 +0200
X-Gm-Features: AcwNN1WWU5FRzvZrK5fq_LzdAaGftwm82SLjDwjNGTlCYX8Fb3yJIL48uBH_wr4
Message-ID: <CAFEp6-2nWfjF18R9pw0xFt92GcPORKKa+ix8czQ=m512TYuP8Q@mail.gmail.com>
Subject: Re: [PATCH v14 1/4] phy: core: Fix use-after-free in phy_get paths
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
        linux-phy@lists.infradead.org, Krzysztof Kozlowski <krzk@kernel.org>,
        stable@vger.kernel.org
X-Proofpoint-ORIG-GUID: v8UTGPfrj78DFDFWC46kkd2i95vl8nY5
X-Proofpoint-Spam-Info: AW1haW4tMjYwOTA0MDA3MCBTYWx0ZWRfX4vsDMG49IGQo
 4+xdFX0nszcAUV+JvLnJ07JUHAlbvXYvHVB/QRVIoOuNhPwns+FBVNmqn3Cd4CDKjDvJ+VaHlOQ
 avQdC1IJifjj2dLX1UrQZxA3QJ9U8Kw=
X-Proofpoint-GUID: v8UTGPfrj78DFDFWC46kkd2i95vl8nY5
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwOTA0MDA3MCBTYWx0ZWRfX4GnQpM6Ypxo5
 k/4JN1L54mvX5Ys3J1ina6sCJ7gqDjIGmMg0xbVlOS8lFsJqNmO8OJldlKoj7R1JfK4RWwSp5Yf
 sGnNO+Ei+fTTEw2I9XxTDuY86RmHSw57rorG8jYGlG6qO7rQK8fp7qd+nzxAkFX2WK0TQFz9qDN
 fDqZC4fX+UmiOzJhFXwK29gDiYJFRXk5L5JJwi59vqrLnbr0aZwgnINjmBLbZcHeYSAMjFJga5C
 tfE60x7OnhHx+tpUFDQu+ccZGaSDBnIu3bKcmcZQW6mnL+A2VE7gLrOdEomIvQ8asuTg1aPQMq4
 BeTC4x8xTq+AS/LHUpLxLw7AOHzjngFQYdcAPiaa0fpHIK51Mq/Ybtj5rKOVZGK1Ot+cmLpx5yn
 hchO73tAL1j4R5o8viOzhSzP+4wKfEH45xbo3XuU5mA3issM0i73LB0hDFtUfM8HI0HYBtzwP//
 uSpbGGfrd3VcSztxcUg==
X-Authority-Analysis: v=2.4 cv=X9Zi7mTe c=1 sm=1 tr=0 ts=6a9a7726 cx=c_pps
 a=hnmNkyzTK/kJ09Xio7VxxA==:117 a=IkcTkHD0fZMA:10 a=VdqzKS8jKosA:10
 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22
 a=yOCtJkima9RkubShWh1s:22 a=KKAkSRfTAAAA:8 a=VwQbUJbxAAAA:8
 a=j3EoGy_XDV5ESBrvTGYA:9 a=QEXdDO2ut3YA:10 a=PEH46H7Ffwr30OY-TuGO:22
 a=cvBusfyB2V15izCimMoJ:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1176,Hydra:6.1.134,FMLib:17.12.100.49
 definitions=2026-09-04_02,2026-09-03_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 phishscore=0 malwarescore=0 bulkscore=0 clxscore=1015 lowpriorityscore=0
 impostorscore=0 suspectscore=0 priorityscore=1501 spamscore=0 adultscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2606150000 definitions=main-2609040070
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260904_004543_342819_6C3EEC5B 
X-CRM114-Status: GOOD (  29.11  )
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

SGkgQnJ5YW4sCgpPbiBGcmksIFNlcCA0LCAyMDI2IGF0IDEyOjU54oCvQU0gQnJ5YW4gTydEb25v
Z2h1ZQo8YnJ5YW4ub2Rvbm9naHVlQGxpbmFyby5vcmc+IHdyb3RlOgo+Cj4gU2FzaGlrbyBhc2tl
ZCBkdXJpbmcgYSBwYXRjaCByZXZpZXcgaWYgdGhlIGV4aXN0aW5nIHVzYWdlIHBhdHRlcm4gaGFk
IGEKPiByYWNlIGNvbmRpdGlvbjsgc3BlY2lmaWNhbGx5IGluIG9mX3BoeV9nZXQoKSBpZiBpdCB3
YXMgcG9zc2libGUgYmV0d2Vlbgo+IHJldHVybmluZyBmcm9tIF9vZl9waHlfZ2V0KCkgYW5kIHJ1
bm5pbmcgdHJ5X21vZHVsZV9nZXQoKSB0aGF0IGEgbW9kdWxlCj4gbWlnaHQgYmUgdW5ib3VuZCBs
ZWFkaW5nIHRvIHVzZS1hZnRlci1mcmVlLgo+Cj4gTG9va2luZyBhdCB0aGUgY29kZSB0aGlzIGFw
cGVhcnMgdG8gYmUgc28sIHRoZXJlIGlzIG5vIGxpbmthZ2UgYmV0d2VlbiB0aGUKPiBwaHkgYW5k
IG1vZHVsZSB1bmRlciBhIHN5bmNocm9uaXNhdGlvbiBwcmltaXRpdmUuCj4KPiBVc2luZyB0aGUg
cGh5X3Byb3ZpZGVyX211dGV4IGluIHBoeV9nZXQoKSB3aWxsIGVuc3VyZSB0aGVyZSBpcyBhIGxp
bmsgYmV0d2Vlbgo+IHRoZSByZXR1cm5lZCBwaHkgcG9pbnRlciBhbmQgdGhlIG1vZHVsZV9nZXQo
KSBidW1waW5nIHRoZSBtb2R1bGUgcmVmZXJlbmNlCj4gY291bnQuCj4KPiBBbWVuZCBwaHlfZ2V0
KCksIG9mX3BoeV9nZXQoKSBhbmQgZGV2bV9vZl9waHlfZ2V0X2J5X2luZGV4KCkgdG8gZml4IHRo
ZQo+IHNhbWUgdXNhZ2UgcGF0dGVybi4KPgo+IHBoeV9wcm92aWRlcl91bnJlZ2lzdGVyKCkgbXVz
dCB0YWtlIHRoZSBwaHlfcHJvdmlkZXJfbXV0ZXggc28gYW1lbmRpbmcKPiBwaHlfZ2V0KCkvb2Zf
cGh5X2dldCgpIHRvIHRha2UgdGhhdCBzYW1lIG11dGV4IGd1YXJhbnRlZXMgdGhlcmUgaXMgbm8K
PiB1c2UtYWZ0ZXItZnJlZS4KPgo+IEZpeGVzOiBmZjc2NDk2MzQ3OWExICgiZHJpdmVyczogcGh5
OiBhZGQgZ2VuZXJpYyBQSFkgZnJhbWV3b3JrIikKPiBDYzogc3RhYmxlQHZnZXIua2VybmVsLm9y
Zwo+IFNpZ25lZC1vZmYtYnk6IEJyeWFuIE8nRG9ub2dodWUgPGJyeWFuLm9kb25vZ2h1ZUBsaW5h
cm8ub3JnPgo+IC0tLQo+ICBkcml2ZXJzL3BoeS9waHktY29yZS5jIHwgNDEgKysrKysrKysrKysr
KysrKysrKysrKysrKystLS0tLS0tLS0tLS0tLS0KPiAgMSBmaWxlIGNoYW5nZWQsIDI2IGluc2Vy
dGlvbnMoKyksIDE1IGRlbGV0aW9ucygtKQo+Cj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvcGh5L3Bo
eS1jb3JlLmMgYi9kcml2ZXJzL3BoeS9waHktY29yZS5jCj4gaW5kZXggMjFhYWYyZjc2ZTUzZS4u
Y2Q5YWNlMTI1NTY3YSAxMDA2NDQKPiAtLS0gYS9kcml2ZXJzL3BoeS9waHktY29yZS5jCj4gKysr
IGIvZHJpdmVycy9waHkvcGh5LWNvcmUuYwo+IEBAIC0xMjQsMTMgKzEyNCwxMSBAQCBzdGF0aWMg
c3RydWN0IHBoeSAqcGh5X2ZpbmQoc3RydWN0IGRldmljZSAqZGV2LCBjb25zdCBjaGFyICpjb25f
aWQpCj4gICAgICAgICBjb25zdCBjaGFyICpkZXZfaWQgPSBkZXZfbmFtZShkZXYpOwo+ICAgICAg
ICAgc3RydWN0IHBoeV9sb29rdXAgKnAsICpwbCA9IE5VTEw7Cj4KPiAtICAgICAgIG11dGV4X2xv
Y2soJnBoeV9wcm92aWRlcl9tdXRleCk7Cj4gICAgICAgICBsaXN0X2Zvcl9lYWNoX2VudHJ5KHAs
ICZwaHlzLCBub2RlKQo+ICAgICAgICAgICAgICAgICBpZiAoIXN0cmNtcChwLT5kZXZfaWQsIGRl
dl9pZCkgJiYgIXN0cmNtcChwLT5jb25faWQsIGNvbl9pZCkpIHsKPiAgICAgICAgICAgICAgICAg
ICAgICAgICBwbCA9IHA7Cj4gICAgICAgICAgICAgICAgICAgICAgICAgYnJlYWs7Cj4gICAgICAg
ICAgICAgICAgIH0KPiAtICAgICAgIG11dGV4X3VubG9jaygmcGh5X3Byb3ZpZGVyX211dGV4KTsK
Pgo+ICAgICAgICAgcmV0dXJuIHBsID8gcGwtPnBoeSA6IEVSUl9QVFIoLUVOT0RFVik7Cj4gIH0K
PiBAQCAtNjM1LDExICs2MzMsMTAgQEAgc3RhdGljIHN0cnVjdCBwaHkgKl9vZl9waHlfZ2V0KHN0
cnVjdCBkZXZpY2Vfbm9kZSAqbnAsIGludCBpbmRleCkKPiAgICAgICAgICAgICAgICAgZ290byBv
dXRfcHV0X25vZGU7Cj4gICAgICAgICB9Cj4KPiAtICAgICAgIG11dGV4X2xvY2soJnBoeV9wcm92
aWRlcl9tdXRleCk7CgpUaGVuLCBub3cgd2UncmUgbW92aW5nIHRoZSByZXNwb25zaWJpbGl0eSB0
byB0aGUgY2FsbGVycywgbWF5YmUgd2Ugc2hvdWxkIGhhdmU6CiAgICBsb2NrZGVwX2Fzc2VydF9o
ZWxkKCZwaHlfcHJvdmlkZXJfbXV0ZXgpCgo+ICAgICAgICAgcGh5X3Byb3ZpZGVyID0gb2ZfcGh5
X3Byb3ZpZGVyX2xvb2t1cChhcmdzLm5wKTsKPiAgICAgICAgIGlmIChJU19FUlIocGh5X3Byb3Zp
ZGVyKSB8fCAhdHJ5X21vZHVsZV9nZXQocGh5X3Byb3ZpZGVyLT5vd25lcikpIHsKPiAgICAgICAg
ICAgICAgICAgcGh5ID0gRVJSX1BUUigtRVBST0JFX0RFRkVSKTsKPiAtICAgICAgICAgICAgICAg
Z290byBvdXRfdW5sb2NrOwo+ICsgICAgICAgICAgICAgICBnb3RvIG91dF9wdXRfbm9kZTsKPiAg
ICAgICAgIH0KPgo+ICAgICAgICAgaWYgKCFvZl9kZXZpY2VfaXNfYXZhaWxhYmxlKGFyZ3MubnAp
KSB7Cj4gQEAgLTY1Myw4ICs2NTAsNiBAQCBzdGF0aWMgc3RydWN0IHBoeSAqX29mX3BoeV9nZXQo
c3RydWN0IGRldmljZV9ub2RlICpucCwgaW50IGluZGV4KQo+ICBvdXRfcHV0X21vZHVsZToKPiAg
ICAgICAgIG1vZHVsZV9wdXQocGh5X3Byb3ZpZGVyLT5vd25lcik7Cj4KPiAtb3V0X3VubG9jazoK
PiAtICAgICAgIG11dGV4X3VubG9jaygmcGh5X3Byb3ZpZGVyX211dGV4KTsKPiAgb3V0X3B1dF9u
b2RlOgo+ICAgICAgICAgb2Zfbm9kZV9wdXQoYXJncy5ucCk7Cj4KPiBAQCAtNjc4LDE1ICs2NzMs
MjEgQEAgc3RydWN0IHBoeSAqb2ZfcGh5X2dldChzdHJ1Y3QgZGV2aWNlX25vZGUgKm5wLCBjb25z
dCBjaGFyICpjb25faWQpCj4gICAgICAgICBpZiAoY29uX2lkKQo+ICAgICAgICAgICAgICAgICBp
bmRleCA9IG9mX3Byb3BlcnR5X21hdGNoX3N0cmluZyhucCwgInBoeS1uYW1lcyIsIGNvbl9pZCk7
Cj4KPiArICAgICAgIG11dGV4X2xvY2soJnBoeV9wcm92aWRlcl9tdXRleCk7Cj4gKwo+ICAgICAg
ICAgcGh5ID0gX29mX3BoeV9nZXQobnAsIGluZGV4KTsKPiAgICAgICAgIGlmIChJU19FUlIocGh5
KSkKPiAtICAgICAgICAgICAgICAgcmV0dXJuIHBoeTsKPiArICAgICAgICAgICAgICAgZ290byBv
dXRfdW5sb2NrOwo+Cj4gLSAgICAgICBpZiAoIXRyeV9tb2R1bGVfZ2V0KHBoeS0+b3BzLT5vd25l
cikpCj4gLSAgICAgICAgICAgICAgIHJldHVybiBFUlJfUFRSKC1FUFJPQkVfREVGRVIpOwo+ICsg
ICAgICAgaWYgKCF0cnlfbW9kdWxlX2dldChwaHktPm9wcy0+b3duZXIpKSB7Cj4gKyAgICAgICAg
ICAgICAgIHBoeSA9IEVSUl9QVFIoLUVQUk9CRV9ERUZFUik7Cj4gKyAgICAgICAgICAgICAgIGdv
dG8gb3V0X3VubG9jazsKPiArICAgICAgIH0KPgo+ICAgICAgICAgZ2V0X2RldmljZSgmcGh5LT5k
ZXYpOwo+Cj4gK291dF91bmxvY2s6Cj4gKyAgICAgICBtdXRleF91bmxvY2soJnBoeV9wcm92aWRl
cl9tdXRleCk7Cj4gICAgICAgICByZXR1cm4gcGh5Owo+ICB9Cj4gIEVYUE9SVF9TWU1CT0xfR1BM
KG9mX3BoeV9nZXQpOwo+IEBAIC03ODYsNiArNzg3LDcgQEAgc3RydWN0IHBoeSAqcGh5X2dldChz
dHJ1Y3QgZGV2aWNlICpkZXYsIGNvbnN0IGNoYXIgKnN0cmluZykKPiAgICAgICAgIHN0cnVjdCBw
aHkgKnBoeTsKPiAgICAgICAgIHN0cnVjdCBkZXZpY2VfbGluayAqbGluazsKPgo+ICsgICAgICAg
bXV0ZXhfbG9jaygmcGh5X3Byb3ZpZGVyX211dGV4KTsKPiAgICAgICAgIGlmIChkZXYtPm9mX25v
ZGUpIHsKPiAgICAgICAgICAgICAgICAgaWYgKHN0cmluZykKPiAgICAgICAgICAgICAgICAgICAg
ICAgICBpbmRleCA9IG9mX3Byb3BlcnR5X21hdGNoX3N0cmluZyhkZXYtPm9mX25vZGUsICJwaHkt
bmFtZXMiLAo+IEBAIC03OTYsMTUgKzc5OCwxOCBAQCBzdHJ1Y3QgcGh5ICpwaHlfZ2V0KHN0cnVj
dCBkZXZpY2UgKmRldiwgY29uc3QgY2hhciAqc3RyaW5nKQo+ICAgICAgICAgfSBlbHNlIHsKPiAg
ICAgICAgICAgICAgICAgaWYgKHN0cmluZyA9PSBOVUxMKSB7Cj4gICAgICAgICAgICAgICAgICAg
ICAgICAgZGV2X1dBUk4oZGV2LCAibWlzc2luZyBzdHJpbmdcbiIpOwo+IC0gICAgICAgICAgICAg
ICAgICAgICAgIHJldHVybiBFUlJfUFRSKC1FSU5WQUwpOwo+ICsgICAgICAgICAgICAgICAgICAg
ICAgIHBoeSA9IEVSUl9QVFIoLUVJTlZBTCk7Cj4gKyAgICAgICAgICAgICAgICAgICAgICAgZ290
byBvdXRfdW5sb2NrOwo+ICAgICAgICAgICAgICAgICB9Cj4gICAgICAgICAgICAgICAgIHBoeSA9
IHBoeV9maW5kKGRldiwgc3RyaW5nKTsKPiAgICAgICAgIH0KPiAgICAgICAgIGlmIChJU19FUlIo
cGh5KSkKPiAtICAgICAgICAgICAgICAgcmV0dXJuIHBoeTsKPiArICAgICAgICAgICAgICAgZ290
byBvdXRfdW5sb2NrOwo+Cj4gLSAgICAgICBpZiAoIXRyeV9tb2R1bGVfZ2V0KHBoeS0+b3BzLT5v
d25lcikpCj4gLSAgICAgICAgICAgICAgIHJldHVybiBFUlJfUFRSKC1FUFJPQkVfREVGRVIpOwo+
ICsgICAgICAgaWYgKCF0cnlfbW9kdWxlX2dldChwaHktPm9wcy0+b3duZXIpKSB7Cj4gKyAgICAg
ICAgICAgICAgIHBoeSA9IEVSUl9QVFIoLUVQUk9CRV9ERUZFUik7Cj4gKyAgICAgICAgICAgICAg
IGdvdG8gb3V0X3VubG9jazsKPiArICAgICAgIH0KPgo+ICAgICAgICAgZ2V0X2RldmljZSgmcGh5
LT5kZXYpOwo+Cj4gQEAgLTgxMyw2ICs4MTgsOCBAQCBzdHJ1Y3QgcGh5ICpwaHlfZ2V0KHN0cnVj
dCBkZXZpY2UgKmRldiwgY29uc3QgY2hhciAqc3RyaW5nKQo+ICAgICAgICAgICAgICAgICBkZXZf
ZGJnKGRldiwgImZhaWxlZCB0byBjcmVhdGUgZGV2aWNlIGxpbmsgdG8gJXNcbiIsCj4gICAgICAg
ICAgICAgICAgICAgICAgICAgZGV2X25hbWUocGh5LT5kZXYucGFyZW50KSk7Cj4KPiArb3V0X3Vu
bG9jazoKPiArICAgICAgIG11dGV4X3VubG9jaygmcGh5X3Byb3ZpZGVyX211dGV4KTsKPiAgICAg
ICAgIHJldHVybiBwaHk7Cj4gIH0KPiAgRVhQT1JUX1NZTUJPTF9HUEwocGh5X2dldCk7Cj4gQEAg
LTk2MSwxNSArOTY4LDE3IEBAIHN0cnVjdCBwaHkgKmRldm1fb2ZfcGh5X2dldF9ieV9pbmRleChz
dHJ1Y3QgZGV2aWNlICpkZXYsIHN0cnVjdCBkZXZpY2Vfbm9kZSAqbnAsCj4gICAgICAgICBpZiAo
IXB0cikKPiAgICAgICAgICAgICAgICAgcmV0dXJuIEVSUl9QVFIoLUVOT01FTSk7Cj4KPiArICAg
ICAgIG11dGV4X2xvY2soJnBoeV9wcm92aWRlcl9tdXRleCk7Cj4gICAgICAgICBwaHkgPSBfb2Zf
cGh5X2dldChucCwgaW5kZXgpOwo+ICAgICAgICAgaWYgKElTX0VSUihwaHkpKSB7Cj4gICAgICAg
ICAgICAgICAgIGRldnJlc19mcmVlKHB0cik7Cj4gLSAgICAgICAgICAgICAgIHJldHVybiBwaHk7
Cj4gKyAgICAgICAgICAgICAgIGdvdG8gb3V0X3VubG9jazsKPiAgICAgICAgIH0KPgo+ICAgICAg
ICAgaWYgKCF0cnlfbW9kdWxlX2dldChwaHktPm9wcy0+b3duZXIpKSB7Cj4gICAgICAgICAgICAg
ICAgIGRldnJlc19mcmVlKHB0cik7Cj4gLSAgICAgICAgICAgICAgIHJldHVybiBFUlJfUFRSKC1F
UFJPQkVfREVGRVIpOwo+ICsgICAgICAgICAgICAgICBwaHkgPSBFUlJfUFRSKC1FUFJPQkVfREVG
RVIpOwo+ICsgICAgICAgICAgICAgICBnb3RvIG91dF91bmxvY2s7Cj4gICAgICAgICB9Cj4KPiAg
ICAgICAgIGdldF9kZXZpY2UoJnBoeS0+ZGV2KTsKPiBAQCAtOTgyLDYgKzk5MSw4IEBAIHN0cnVj
dCBwaHkgKmRldm1fb2ZfcGh5X2dldF9ieV9pbmRleChzdHJ1Y3QgZGV2aWNlICpkZXYsIHN0cnVj
dCBkZXZpY2Vfbm9kZSAqbnAsCj4gICAgICAgICAgICAgICAgIGRldl9kYmcoZGV2LCAiZmFpbGVk
IHRvIGNyZWF0ZSBkZXZpY2UgbGluayB0byAlc1xuIiwKPiAgICAgICAgICAgICAgICAgICAgICAg
ICBkZXZfbmFtZShwaHktPmRldi5wYXJlbnQpKTsKPgo+ICtvdXRfdW5sb2NrOgo+ICsgICAgICAg
bXV0ZXhfdW5sb2NrKCZwaHlfcHJvdmlkZXJfbXV0ZXgpOwo+ICAgICAgICAgcmV0dXJuIHBoeTsK
PiAgfQo+ICBFWFBPUlRfU1lNQk9MX0dQTChkZXZtX29mX3BoeV9nZXRfYnlfaW5kZXgpOwo+Cj4g
LS0KPiAyLjU1LjAKPgoKLS0gCmxpbnV4LXBoeSBtYWlsaW5nIGxpc3QKbGludXgtcGh5QGxpc3Rz
LmluZnJhZGVhZC5vcmcKaHR0cHM6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGlu
Zm8vbGludXgtcGh5Cg==
